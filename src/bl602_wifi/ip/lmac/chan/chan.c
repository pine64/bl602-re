#include <lmac/chan/chan.h>

#include <modules/common/co_list.h>
#include <modules/common/co_math.h>
#include <modules/common/co_status.h>
#include <modules/common/co_utils.h>

#include <modules/ke/ke_timer.h>

#include <lmac/vif/vif_mgmt.h>
#include <lmac/td/td.h>
#include <lmac/ps/ps.h>
#include <lmac/tpc/tpc.h>
#include <lmac/rx/rxl/rxl_cntrl.h>

#include <modules/mac/mac_common.h>

#include <phy_rf/phy_bl602.h>

#include <arch/rv32i/ll.h>

#include <utils.h>

#include <stddef.h>
#include <stdbool.h>

struct chan_env_tag chan_env;
struct chan_ctxt_tag chan_ctxt_pool[CHAN_CHAN_CTXT_CNT];

static void chan_switch_start(struct chan_ctxt_tag *p_chan_entry);
static void chan_switch_channel(void);
static void chan_pre_switch_channel(void);

static uint16_t chan_get_nb_slots(uint32_t time1, uint32_t time2) {
    // Get time difference in us
    int32_t diff = time1 - time2;
    // Return time difference in slots
    return (int16_t)(diff / CHAN_SLOT_DURATION_US);
}

static uint16_t chan_get_nb_avail_slots(struct chan_ctxt_tag *p_chan_entry) {
	if (p_chan_entry->nb_res_slots < p_chan_entry->nb_rem_slots) {
		return (p_chan_entry->nb_rem_slots - p_chan_entry->nb_res_slots);
	}
	return 0;
}

static struct chan_ctxt_tag *chan_get_next_chan(void) {
	struct chan_tbtt_tag * p_tbtt_entry = (struct chan_tbtt_tag *)co_list_pick(&chan_env.list_tbtt);
	struct chan_ctxt_tag * p_next_chan_entry = chan_env.current_channel;
	uint32_t now = ke_time();
	if (chan_env.current_channel) {
		if (p_tbtt_entry && p_tbtt_entry->status == CHAN_TBTT_PRESENCE) {
			return chan_env.current_channel;
		}
		if (!hal_machw_time_cmp(now + (CHAN_MIN_PRES_DUR * CHAN_SLOT_DURATION_US), chan_env.tmr_cde.time)) {
			return chan_env.current_channel;
		}
		if (chan_env.current_channel->status == CHAN_ENV_DELAY_PROG_BIT) {
			return chan_env.current_channel;
		}
	}

	if (p_tbtt_entry && hal_machw_time_cmp(p_tbtt_entry->time, chan_env.tmr_cde.time)) {
		p_next_chan_entry = vif_info_tab[p_tbtt_entry->vif_index].chan_ctxt;
		ASSERT_ERR(p_next_chan_entry);
		if (!hal_machw_time_cmp(now + (CHAN_MIN_PRES_DUR * CHAN_SLOT_DURATION_US), p_tbtt_entry->time)) {
			return p_next_chan_entry;
		}
		uint32_t avail_slots = chan_get_nb_avail_slots(p_next_chan_entry);
		if (chan_get_nb_slots(p_tbtt_entry->time, now) <= avail_slots) {
			return p_next_chan_entry;
		}
	}
	uint32_t remain_slot = 0;
	for (int i = 0; i < CHAN_TRAF_CTXT_CNT; i++) {
		if (chan_ctxt_pool[i].status != CHAN_NOT_SCHEDULED && remain_slot <= chan_ctxt_pool[i].nb_rem_slots) {
			p_next_chan_entry = chan_ctxt_pool + i;
			remain_slot = p_next_chan_entry->nb_rem_slots;
		}
	}

	ASSERT_ERR(p_next_chan_entry);
	return p_next_chan_entry;
}

// in the reversed code, here they used a pointer to &(p_chan_entry->nb_rem_slots) rather than
// p_chan_entry
static void chan_upd_nb_rem_slots(struct chan_ctxt_tag *p_chan_entry, uint32_t current_time) {
	uint8_t nb_slots = chan_get_nb_slots(current_time, chan_env.cde_time);
	p_chan_entry->nb_rem_slots -= co_min(nb_slots, p_chan_entry->nb_rem_slots);
}

static void chan_upd_ctxt_status(struct chan_ctxt_tag *p_chan_entry, uint8_t next_status) {
	uint32_t now = ke_time();
	uint32_t tmr_exp_time = 0;
	if (next_status == CHAN_GOTO_IDLE) {
		if (p_chan_entry->idx < CHAN_TRAF_CTXT_CNT)
			tmr_exp_time = now + 4000;
	} else {
		if (next_status == CHAN_WAITING_END) {
			if (p_chan_entry->idx < CHAN_TRAF_CTXT_CNT) {
				if (chan_env.nb_sched_ctxt > 1) {
					// >= 2
					uint32_t avail_slots = chan_get_nb_avail_slots(p_chan_entry);
					if (avail_slots < CHAN_MIN_PRES_DUR) {
						next_status = CHAN_PRESENT;
					} else {
						chan_env.cde_time = now;
						tmr_exp_time = now + (avail_slots * CHAN_SLOT_DURATION_US);
					}
				} else {
					// 0, 1
					next_status = CHAN_PRESENT;
				}
			} else {
				tmr_exp_time = now + (p_chan_entry->nb_rem_slots * CHAN_SLOT_DURATION_US);
			}
	
		}
	}
	p_chan_entry->status = next_status;
	if (tmr_exp_time != 0) {
		chan_env.tmr_ctxt_op.env = p_chan_entry;
		mm_timer_set(&chan_env.tmr_ctxt_op, tmr_exp_time);
	} else {
		if (next_status != CHAN_WAIT_NOA_CFM) {
			mm_timer_clear(&chan_env.tmr_ctxt_op);
		}
	}
}

static void chan_update_reserved_slots(struct vif_info_tag *p_vif_entry, struct chan_ctxt_tag *p_chan_entry) {
	uint32_t bcn_int;
	if (p_vif_entry->type == VIF_STA) {
		bcn_int = sta_info_tab[p_vif_entry->u.sta.ap_id].bcn_int;
	} else {
		bcn_int = ((uint32_t)p_vif_entry->u.ap.bcn_int) << 10;
	}
	uint8_t nb_tbtt = co_max(1, (chan_env.cde_dur_us / bcn_int));
	p_chan_entry->nb_res_slots += nb_tbtt * CHAN_MAX_TBTT_PRES_DUR;
}

static void chan_distribute_slots(void) {
    struct vif_info_tag *p_vif_entry = vif_mgmt_first_used();
	uint8_t nb_vifs = 0;
	uint8_t nb_vif_busy = 0;
	uint8_t nb_slots_alloc_busy_additional = 0;
	uint8_t nb_slots_alloc_Nbusy = 0;
	for (struct chan_ctxt_tag *p_chan_entry; p_vif_entry; p_vif_entry = vif_mgmt_next(p_vif_entry)) {
		p_chan_entry = p_vif_entry->chan_ctxt;
		if (p_chan_entry) {
			nb_vifs++;
			if ((td_get_status(p_vif_entry->index)) || (p_vif_entry->active == false)) {
				nb_vif_busy++;
			}
			p_chan_entry->nb_slots = 0;
        	p_chan_entry->nb_res_slots = 0;
		}
	}

	ASSERT_WARN(nb_vifs == (chan_env.cde_dur_us / (CHAN_VIF_NB_SLOTS * CHAN_SLOT_DURATION_US)));
	
	if (nb_vif_busy == 0 || (nb_vif_busy == nb_vifs)) {
		nb_slots_alloc_Nbusy = CHAN_VIF_NB_SLOTS;
		nb_slots_alloc_busy_additional = 0;
	} else {
		nb_slots_alloc_Nbusy = CHAN_MAX_TBTT_PRES_DUR;
		nb_slots_alloc_busy_additional = ((nb_vifs - nb_vif_busy) * (CHAN_VIF_NB_SLOTS - CHAN_MAX_TBTT_PRES_DUR)) / nb_vif_busy;
	}

	p_vif_entry = vif_mgmt_first_used();
	for (struct chan_ctxt_tag *p_chan_entry; p_vif_entry; p_vif_entry = vif_mgmt_next(p_vif_entry)) {
		p_chan_entry = p_vif_entry->chan_ctxt;
		if (p_chan_entry) {
			if ((td_get_status(p_vif_entry->index)) || (p_vif_entry->active == false)) {
				p_chan_entry->nb_slots += nb_slots_alloc_busy_additional + CHAN_VIF_NB_SLOTS;
			} else {
				p_chan_entry->nb_slots += nb_slots_alloc_Nbusy;
			}
			p_chan_entry->nb_rem_slots = p_chan_entry->nb_slots;
			chan_update_reserved_slots(p_vif_entry, p_chan_entry);
		}
	}
}

static void chan_conn_less_delay_prog(void) {
    chan_env.status |= CO_BIT(CHAN_ENV_DELAY_PROG_BIT);
    mm_timer_set(&chan_env.tmr_conn_less, ke_time() + CHAN_CONN_LESS_DELAY);
}

static void chan_notify_presence(void) {
    struct vif_info_tag *p_vif_entry = vif_mgmt_first_used();
    struct chan_ctxt_tag *p_cur_ctxt = chan_env.current_channel;
	if ((ps_env.ps_on) && !(ps_env.prevent_sleep & PS_PSM_PAUSED))
		return ;
	MAC_CORE->MAC_CNTRL_1.pwrMgt = 0;
	for (; p_vif_entry; p_vif_entry = vif_mgmt_next(p_vif_entry)) {
		if ((p_cur_ctxt == p_vif_entry->chan_ctxt) && (p_vif_entry->type == VIF_STA) && (p_vif_entry->active == true)) {
			txl_frame_send_null_frame(p_vif_entry->u.sta.ap_id, 0, 0);
		}
	}
}

static void chan_switch_channel(void) {
	struct chan_ctxt_tag *p_chan_entry = chan_env.chan_switch;
	phy_set_channel((p_chan_entry->channel).band,(p_chan_entry->channel).type,
        (p_chan_entry->channel).prim20_freq,
        (p_chan_entry->channel).center1_freq,
        (p_chan_entry->channel).center2_freq, PHY_PRIM);
	tpc_update_tx_power((p_chan_entry->channel).tx_power);
	MAC_CORE->RATES.value = 0x10; // or mm_env.basic_rates[param->band]?
	// chan_send_switch_ind(p_chan_entry); ? not exists??
	chan_env.current_channel = p_chan_entry;
	chan_env.chan_switch = 0x0;

	chan_upd_ctxt_status(p_chan_entry, CHAN_WAITING_END);
	
	if (p_chan_entry->idx != CHAN_SCAN_CTXT_IDX) {
		if (p_chan_entry->idx != CHAN_ROC_CTXT_IDX) {
			chan_notify_presence();
		}
		if (p_chan_entry->idx < CHAN_TRAF_CTXT_CNT) {
			for (struct vif_info_tag* p_vif_entry = vif_mgmt_first_used(); p_vif_entry; p_vif_entry = vif_mgmt_next(p_vif_entry)) {
				if (p_chan_entry == p_vif_entry->chan_ctxt) {
            		td_env[p_vif_entry->index].has_active_chan = true;
            		vif_mgmt_send_postponed_frame(p_vif_entry);
          		}
			}
			// a
		}
	} else {
		MAC_CORE->EDCA_CCA_BUSY.ccaBusyDur = 0;
		ke_msg_send_basic(MM_SCAN_CHANNEL_START_IND, TASK_SCAN, TASK_NONE);
		// a
	}

	if (p_chan_entry->idx >= CHAN_SCAN_CTXT_IDX) {
		// a
		__disable_irq();
		ps_env.prevent_sleep = ps_env.prevent_sleep | PS_SCAN_ONGOING;
		__enable_irq();
  		chan_env.pm = MAC_CORE->MAC_CNTRL_1.pwrMgt;
		MAC_CORE->MAC_CNTRL_1.pwrMgt = 0;
	}
	
	mm_active();
}

static void chan_tx_cfm(void *dummy, uint32_t status) {
	ASSERT_ERR(chan_env.cfm_cnt);
	chan_env.cfm_cnt --;
	if (chan_env.cfm_cnt == 0) {
		mm_force_idle_req();
		chan_pre_switch_channel();
	}
}

static int chan_notify_absence(void) {
	if (!chan_env.current_channel)
		return 0;
	struct chan_ctxt_tag *cur = chan_env.current_channel;
	if (ps_env.ps_on && !(ps_env.prevent_sleep & PS_PSM_PAUSED))
		return 0;
	int cnt = 0;
	MAC_CORE->MAC_CNTRL_1.pwrMgt = 1;
	for (struct vif_info_tag *p_vif_entry = vif_mgmt_first_used(); p_vif_entry; vif_mgmt_next(p_vif_entry)) {
		if (p_vif_entry->chan_ctxt == cur) {
			if ( (p_vif_entry->type == VIF_STA) && p_vif_entry->active &&
                (p_vif_entry->u.sta.ap_id != INVALID_STA_IDX)) {
				uint8_t status = cur->status;
				cur->status = CHAN_SENDING_NOA;
				if (txl_frame_send_null_frame(p_vif_entry->u.sta.ap_id, chan_tx_cfm, (void *)0x0) == 0)
					cnt++;
				cur->status = status;
			}
		}
	}
	chan_env.cfm_cnt = cnt;
	if (cnt) {
		chan_upd_ctxt_status(chan_env.chan_switch, CHAN_WAIT_NOA_CFM);
		mm_active();
	}
	return cnt;
}

static void chan_cde_evt(void *env) {
	uint32_t now = ke_time();
	struct chan_ctxt_tag * p_chan_entry = chan_env.chan_switch;
	if (chan_env.nb_sched_ctxt > 1) {
		if (!(chan_env.status & (CO_BIT(CHAN_ENV_ROC_BIT) | CO_BIT(CHAN_ENV_SCAN_BIT) | CO_BIT(CHAN_ENV_TIMEOUT_BIT)))) {
			mm_timer_set(&chan_env.tmr_cde, chan_env.cde_dur_us + now);
			chan_env.cde_time = now;

			chan_distribute_slots();

			if (chan_env.current_channel) {
		    	chan_upd_ctxt_status(chan_env.current_channel, CHAN_NOT_PROG);
    		}

			p_chan_entry = chan_get_next_chan();

			if (!env) {
				chan_switch_start(p_chan_entry);
			} else {
				chan_env.chan_switch = p_chan_entry;
			}
		}
	}
}

static void chan_pre_switch_channel(void) {
	mm_timer_clear(&chan_env.tmr_ctxt_op);
	if (chan_env.status & CO_BIT(CHAN_ENV_TIMEOUT_BIT)) {
		if ((chan_env.nb_sched_ctxt >= 2) && (chan_env.chan_switch)) {
			chan_env.chan_switch->status = CHAN_NOT_PROG;
			chan_env.chan_switch = 0;
		}
		chan_env.status &= ~CO_BIT(CHAN_ENV_TIMEOUT_BIT);
	}
	struct chan_ctxt_tag *p_new_chan_switch = NULL;
	if (chan_env.status & CO_BIT(CHAN_ENV_SCAN_BIT)) {
		p_new_chan_switch = chan_ctxt_pool + CHAN_SCAN_CTXT_IDX;
	} else if (chan_env.status & CO_BIT(CHAN_ENV_ROC_BIT)) {
		p_new_chan_switch = chan_ctxt_pool + CHAN_ROC_CTXT_IDX;
	}
	if (p_new_chan_switch) {
		if (chan_env.chan_switch) {
			chan_env.chan_switch->status = CHAN_NOT_PROG;
		}
		chan_env.chan_switch = p_new_chan_switch;
	}
	if (!chan_env.chan_switch) {
        if (chan_env.nb_sched_ctxt >= 2) {
            chan_cde_evt((void *)1);
        } else if (chan_env.nb_sched_ctxt == 1) {
            chan_env.chan_switch = (struct chan_ctxt_tag *)co_list_pick(&chan_env.list_sched_ctxt);
        }
	}
	if (chan_env.chan_switch)
		chan_switch_channel();
}

static void chan_goto_idle_cb(void) {
	mm_force_idle_req();
	struct vif_info_tag *p_vif_entry = vif_mgmt_first_used();

	if (chan_env.current_channel && ((chan_env.status & CO_BIT(CHAN_ENV_TIMEOUT_BIT)) == 0)) {
		if (chan_notify_absence()) return ;
	}
	chan_pre_switch_channel();
}

static void chan_send_force_idle(void) {
	struct mm_force_idle_req *req = (struct mm_force_idle_req *)ke_msg_alloc(MM_FORCE_IDLE_REQ, TASK_MM, TASK_NONE, sizeof(struct mm_force_idle_req));
	req->cb = chan_goto_idle_cb;
	ke_msg_send(req);
}

static void chan_switch_start(struct chan_ctxt_tag *p_chan_entry) {
	if (chan_env.current_channel == p_chan_entry) {
		if ((chan_env.nb_sched_ctxt > 1) && (p_chan_entry->idx < CHAN_TRAF_CTXT_CNT)) {
			chan_upd_ctxt_status(p_chan_entry, CHAN_WAITING_END);
		}
	} else {
		if (chan_env.chan_switch == 0) {
			// if (chan_env.current_channel) chan_send_pre_switch_ind(chan_env.current_channel);
			// ^^ not used
			chan_env.chan_switch = p_chan_entry;
			chan_upd_ctxt_status(p_chan_entry, CHAN_GOTO_IDLE);
			chan_send_force_idle();
		}
	}
}

static void chan_conn_less_delay_evt(void *env) {
	struct chan_ctxt_tag * p_chan_entry = 0;
	if (!(chan_env.status & CO_BIT(CHAN_ENV_ROC_WAIT_BIT))) {
		if (!(chan_env.status & CO_BIT(CHAN_ENV_SCAN_WAIT_BIT))) {
			return ;
		}
		ASSERT_ERR((chan_env.status & CO_BIT(CHAN_ENV_SCAN_BIT)) == 0);
		p_chan_entry = chan_ctxt_pool + CHAN_SCAN_CTXT_IDX;
		chan_env.status = chan_env.status & ~CO_BIT(CHAN_ENV_SCAN_WAIT_BIT) | CO_BIT(CHAN_ENV_SCAN_BIT);
	} else {
		ASSERT_ERR((chan_env.status & CO_BIT(CHAN_ENV_ROC_BIT)) == 0);
		p_chan_entry = chan_ctxt_pool + CHAN_ROC_CTXT_IDX;
		chan_env.status = chan_env.status & ~CO_BIT(CHAN_ENV_ROC_WAIT_BIT) | CO_BIT(CHAN_ENV_ROC_BIT);
	}
	if (!chan_env.chan_switch) {
		chan_switch_start(p_chan_entry);
	}
}

static void chan_send_survey_ind(void) {
	// not used
	__builtin_trap();
	return ;
}

static void chan_send_roc_exp_ind(struct chan_ctxt_tag *roc_chan_ctxt) {
	// not used
	__builtin_trap();
	return ;
}

static void chan_ctxt_op_evt(void *env) {
	struct chan_ctxt_tag *p_chan_entry = (struct chan_ctxt_tag *)env;
	uint32_t current_time;
	switch (p_chan_entry->status) {
	// >1
	// < 4 
	// 2,3
	case CHAN_GOTO_IDLE:
	case CHAN_WAIT_NOA_CFM:
		chan_env.status = chan_env.status | CO_BIT(CHAN_ENV_TIMEOUT_BIT);
		break;
	// == 4
	case CHAN_WAITING_END:
		if (p_chan_entry->idx < CHAN_TRAF_CTXT_CNT) {
			p_chan_entry->status = CHAN_NOT_PROG;
			if (chan_env.nb_sched_ctxt == 1) {
				p_chan_entry = (struct chan_ctxt_tag *)co_list_pick(&chan_env.list_sched_ctxt);
			} else if (chan_env.nb_sched_ctxt > 1) {
				current_time = ke_time();
				chan_upd_nb_rem_slots(p_chan_entry, current_time);
				chan_env.cde_time = current_time;
				p_chan_entry = chan_get_next_chan();
			}
			chan_switch_start(p_chan_entry);
		} else {
			__disable_irq();
			ps_env.prevent_sleep = ps_env.prevent_sleep & ~PS_SCAN_ONGOING;
			__enable_irq();
			MAC_CORE->MAC_CNTRL_1.pwrMgt = chan_env.pm;
			chan_env.current_channel = NULL;
			if (p_chan_entry->idx == CHAN_SCAN_CTXT_IDX) {
				chan_env.status &= ~CO_BIT(CHAN_ENV_SCAN_BIT);
				ke_msg_send_basic(MM_SCAN_CHANNEL_END_IND, TASK_SCAN, TASK_NONE);
			} else if (p_chan_entry->idx == CHAN_ROC_CTXT_IDX) {
				if (p_chan_entry->taskid == TASK_MM) {
					chan_env.status &= ~CO_BIT(CHAN_ENV_BCN_DETECT_BIT);
				}
				chan_env.status &= ~CO_BIT(CHAN_ENV_ROC_BIT);
			}

			p_chan_entry->idx = CHAN_CTXT_UNUSED;

			if ((chan_env.status & (CO_BIT(CHAN_ENV_ROC_WAIT_BIT) | CO_BIT(CHAN_ENV_SCAN_WAIT_BIT))) == 0) {
            	chan_env.status &= ~CO_BIT(CHAN_ENV_DELAY_PROG_BIT);
			} else {
				chan_conn_less_delay_prog();
			}
			if (chan_env.nb_sched_ctxt == 1)
				chan_switch_start(p_chan_entry);
			else {
				if (chan_env.nb_sched_ctxt != 1) {
					if (chan_env.nb_sched_ctxt > 1) {
						chan_cde_evt(NULL);
						return ;
					}
					mm_force_idle_req();
					mm_back_to_host_idle();
					return ;
				}
			}
		}
	default:
		break;
	}
}

static void chan_send_pre_switch_ind(struct chan_ctxt_tag *old_chan_ctxt) {
	// not used
	__builtin_trap();
	return ;
}

static void chan_send_switch_ind(struct chan_ctxt_tag *new_chan_ctxt) {
	// not used
	__builtin_trap();
	return ;
}

static bool chan_tbtt_detect_conflict(uint32_t time2, uint32_t time1) {
	// check [time2, time1+P] not overlay with [time1, time1+P]
    bool conflict;
    uint32_t start1, start2, end1, end2;

    start1 = time2;
    start2 = time1;
    end1   = (start1 + CHAN_MAX_TBTT_PRES_DUR * CHAN_SLOT_DURATION_US);
    end2   = (start2 + CHAN_MAX_TBTT_PRES_DUR * CHAN_SLOT_DURATION_US);

    if ((!hal_machw_time_cmp(start1, start2) && !hal_machw_time_cmp(end2, start1)) ||
        (!hal_machw_time_cmp(start2, start1) && !hal_machw_time_cmp(end1, start2))) {
        conflict = true;
    } else {
        conflict = false;
    }
	return conflict;
}


static void chan_tbtt_switch_evt(void *env) {
	struct chan_tbtt_tag *p_tbtt_entry = (struct chan_tbtt_tag *)env;
	uint32_t current_time = ke_time();
	if ((chan_env.nb_sched_ctxt >= 2) && ((chan_env.status & (CO_BIT(CHAN_ENV_ROC_BIT) | CO_BIT(CHAN_ENV_SCAN_BIT))) == 0)) {
		struct chan_ctxt_tag *p_chan_entry = vif_info_tab[p_tbtt_entry->vif_index].chan_ctxt;
		if  ((chan_env.chan_switch == NULL) || (chan_env.chan_switch == p_chan_entry)) {
			p_tbtt_entry->priority = 0;
			chan_upd_nb_rem_slots(chan_env.current_channel, current_time);
			p_chan_entry->nb_res_slots -= co_max(CHAN_MAX_TBTT_PRES_DUR, p_chan_entry->nb_res_slots);
			chan_env.cde_time = current_time;
			p_tbtt_entry->status = CHAN_TBTT_PRESENCE;
			if (!chan_env.chan_switch) {
				chan_switch_start(p_chan_entry);
        	}
		}
	}
}

static void chan_tbtt_delay(struct chan_tbtt_tag *p_tbtt_entry) {
	uint32_t bcn_int;
	struct vif_info_tag *p_vif_entry = vif_info_tab + p_tbtt_entry->vif_index;
	if (p_vif_entry->type == VIF_STA) {
		bcn_int = sta_info_tab[p_vif_entry->u.sta.ap_id].bcn_int;
	} else {
		bcn_int = ((uint32_t)p_vif_entry->u.ap.bcn_int) << 10;
	}

	p_tbtt_entry->time += bcn_int;

	if (p_tbtt_entry->priority < CHAN_TBTT_PRIORITY_MAX) {
		p_tbtt_entry->priority++;
	}
}

/////
/// Find a location in list_tbtt that p_tbtt_entry can be inserted
/// 1) p_tbtt_entry is sorted decending by time, need to find the 
/// largest possible i s.t. where p_tbtt_entry.time < list[i].time
/// 2) p_tbtt_entry should not conflict with higher priority elements
/// in the list.
/// 3) If p_tbtt_entry confilcts with elements with lower pri,
/// they should be moved in the delay list
///  they should be successive in the list
static void chan_tbtt_insert(struct chan_tbtt_tag *p_tbtt_entry) {
	struct co_list *list_tbtt = &chan_env.list_tbtt;
	struct chan_tbtt_tag *p_elem = (struct chan_tbtt_tag *)co_list_pick(list_tbtt);
    bool insert = true;
	// last item that is not conflict with p_tbtt_entry, and has smallest possible time
	struct chan_tbtt_tag *p_prev_elem  = NULL;
	struct chan_tbtt_tag *p_delay_elem = NULL;
    uint8_t nb_delayed = 0;
	for (; p_elem; p_elem = (struct chan_tbtt_tag *) co_list_next(&p_elem->list_hdr)) {
		ASSERT_ERR(p_elem != p_tbtt_entry);
		uint32_t time2 = p_tbtt_entry->time;
		uint32_t time1 = p_elem->time;
		
		if (p_elem->status != CHAN_TBTT_PRESENCE) {
			if (chan_tbtt_detect_conflict(time2, time1) == 0){
				if (time2 < time1) break;
				p_prev_elem = p_elem;
			} else {
				if (p_tbtt_entry->priority <= p_elem->priority) {
					insert = false;
					p_delay_elem = p_tbtt_entry;
					nb_delayed = 1;
					break;
				} else {
					if (!p_delay_elem) {
						p_delay_elem = p_elem;
					}
					nb_delayed ++;
				}
			}
		} else {
			if ((time2 < time1) || chan_tbtt_detect_conflict(time2, time1)) {
				insert = false;
				p_delay_elem = p_tbtt_entry;
				nb_delayed = 1;
			} else p_prev_elem = p_elem;
		}	
	}

	// it seems that all events in list_tbtt are sorted descending so 
	// it can insert a range from the first p_delay_elem
	// to p_delay_elem + nb_delayed
	for (int i = 0; i < nb_delayed; i++) {
		ASSERT_ERR(p_delay_elem);
		if (p_delay_elem != p_tbtt_entry) {
			if (p_delay_elem->status == CHAN_TBTT_PROG) {
				mm_timer_clear(&chan_env.tmr_tbtt_switch);
				p_delay_elem->status = CHAN_TBTT_NOT_PROG;
			}
			co_list_extract(list_tbtt, &p_delay_elem->list_hdr);
		}
		// in case of event can't insert, p_tbtt_entry will be put into the delay list
		// otherwise the later insert will put it into list_tbtt
		co_list_push_back(&chan_env.list_tbtt_delay, &p_delay_elem->list_hdr); 
		p_delay_elem = (struct chan_tbtt_tag *)co_list_next(&p_delay_elem->list_hdr);
	}

	if (insert) {
		co_list_insert_after(&chan_env.list_tbtt, &p_prev_elem->list_hdr, &p_tbtt_entry->list_hdr);
	}
}

static void chan_tbtt_schedule(struct chan_tbtt_tag *p_tbtt_entry) {
	if (p_tbtt_entry) {
		chan_tbtt_insert(p_tbtt_entry);
		while (!co_list_is_empty(&chan_env.list_tbtt_delay)) {
			struct chan_tbtt_tag *p_delay_elem = (struct chan_tbtt_tag *)co_list_pop_front(&chan_env.list_tbtt_delay);
			chan_tbtt_delay(p_delay_elem);
			chan_tbtt_insert(p_delay_elem);
		}
	}

	struct chan_tbtt_tag *first_elem = (struct chan_tbtt_tag *)co_list_pick(&chan_env.list_tbtt);
	if (first_elem && (first_elem->status == CHAN_TBTT_NOT_PROG)) {
		if (hal_machw_time_cmp(first_elem->time, ke_time() + CHAN_MIN_TIMER_VALUE)) {
			chan_tbtt_switch_evt(chan_env.list_tbtt.first);
		} else {
			chan_env.tmr_tbtt_switch.env = first_elem;
			first_elem->status = CHAN_TBTT_PROG;
			mm_timer_set(&chan_env.tmr_tbtt_switch, first_elem->time);
		}
	}
}

static bool chan_check_chan(const struct mm_chan_ctxt_add_req *p_add_req, uint8_t *p_idx) {
	for (int i = 0; i < CHAN_TRAF_CTXT_CNT; i++) {
		if (chan_ctxt_pool[i].idx != CHAN_CTXT_UNUSED) {
			if (!memcmp(p_add_req, &(chan_ctxt_pool[i].channel), offsetof(struct mm_chan_ctxt_add_req, tx_power))) {
				*p_idx = i;
				return true;
			}
		}
	}
	return false;
}

static void chan_ctxt_init(struct chan_ctxt_tag *p_chan_entry) {
    // Reset the channel information
    memset(p_chan_entry, 0, sizeof(struct chan_ctxt_tag));

    p_chan_entry->taskid = TASK_NONE;
    p_chan_entry->idx = CHAN_CTXT_UNUSED;
}

void chan_init(void) {
    memset(&chan_env, 0, sizeof(chan_env));

    for (int i = 0; i < CHAN_CHAN_CTXT_CNT; i++) {
        struct chan_ctxt_tag *p_chan_entry = chan_ctxt_pool + i;

        chan_ctxt_init(p_chan_entry);

        if (i < NX_CHAN_CTXT_CNT) {
            co_list_push_back(&chan_env.list_free_ctxt, &p_chan_entry->list_hdr);
        } else if (i == CHAN_SCAN_CTXT_IDX) {
            p_chan_entry->channel.center2_freq = 0;
            p_chan_entry->channel.type = PHY_CHNL_BW_20;
        }
    }

    // Set TBTT Switch Timer callback
    chan_env.tmr_tbtt_switch.cb = chan_tbtt_switch_evt;
    // Set Channel Distribution Event Timer callback and environment
    chan_env.tmr_cde.cb = chan_cde_evt;
    chan_env.tmr_cde.env = 0;
    // Set Channel Switch Timer callback
    chan_env.tmr_ctxt_op.cb = chan_ctxt_op_evt;
    // Set Connection Less Delay Time callback
    chan_env.tmr_conn_less.cb = chan_conn_less_delay_evt;
}

void chan_scan_req(uint8_t band, uint16_t freq, int8_t pwr, uint32_t duration_us, uint8_t vif_index) {
    // Get channel context used for Scan
    struct chan_ctxt_tag *p_scan_chan = chan_ctxt_pool + CHAN_SCAN_CTXT_IDX;

    ASSERT_ERR(p_scan_chan->idx == CHAN_CTXT_UNUSED);

    p_scan_chan->idx = CHAN_SCAN_CTXT_IDX;
    p_scan_chan->taskid = TASK_NONE;
    p_scan_chan->status = CHAN_NOT_PROG;
    p_scan_chan->nb_rem_slots = duration_us / CHAN_SLOT_DURATION_US;

    p_scan_chan->channel.band = band;
    p_scan_chan->channel.prim20_freq = freq;
    p_scan_chan->channel.center1_freq = freq;
    p_scan_chan->channel.tx_power = pwr;
    p_scan_chan->vif_index = vif_index;

    chan_env.status |= CO_BIT(CHAN_ENV_SCAN_WAIT_BIT);

    if ((chan_env.status & CO_BIT(CHAN_ENV_DELAY_PROG_BIT)) == 0)
        chan_conn_less_delay_prog();
}

uint8_t chan_roc_req(const struct mm_remain_on_channel_req *req, ke_task_id_t taskid) {
	struct chan_ctxt_tag *p_roc_chan = chan_ctxt_pool + CHAN_ROC_CTXT_IDX;
	switch (req->op_code) {
	case MM_ROC_OP_START:
		if (p_roc_chan->idx == CHAN_CTXT_UNUSED) {
			p_roc_chan->idx = CHAN_ROC_CTXT_IDX;
			p_roc_chan->channel.band = req->band;
			p_roc_chan->channel.type = req->type;
			p_roc_chan->channel.prim20_freq = req->prim20_freq;
			p_roc_chan->channel.center1_freq = req->center1_freq;
			p_roc_chan->channel.center2_freq = req->center2_freq;
			p_roc_chan->status = CHAN_NOT_PROG;
			p_roc_chan->nb_rem_slots = (uint16_t)(req->duration_ms * 1000 >> 10);
			p_roc_chan->vif_index = req->vif_index;
			p_roc_chan->channel.tx_power = req->tx_power;
			p_roc_chan->taskid = taskid;
			if (taskid == TASK_MM) {
				chan_env.status |= CO_BIT(CHAN_ENV_ROC_BIT);
				if (!chan_env.chan_switch) {
					chan_switch_start(p_roc_chan);
				}
			} else {
				chan_env.status |= CO_BIT(CHAN_ENV_ROC_WAIT_BIT);
				if (!(chan_env.status & CO_BIT(CHAN_ENV_DELAY_PROG_BIT))) {
					chan_conn_less_delay_prog();
				}
			}
			return CO_OK;
		}
		return CO_FAIL;
	case MM_ROC_OP_CANCEL:
		if (p_roc_chan->idx == CHAN_CTXT_UNUSED)
			return CO_OK; // the leaked code returns CO_FAIL here
		switch (p_roc_chan->status) {
		case CHAN_NOT_PROG:
			chan_env.status &= ~CO_BIT(CHAN_ENV_ROC_WAIT_BIT);
			// leaked code use chan_send_roc_exp_ind(p_roc_chan); here
			break;
		case CHAN_GOTO_IDLE:
		case CHAN_WAIT_NOA_CFM:
			chan_env.chan_switch = NULL;
			chan_env.status &= ~CO_BIT(CHAN_ENV_ROC_BIT);
		case CHAN_WAITING_END:
			mm_timer_clear(&chan_env.tmr_ctxt_op);
			chan_ctxt_op_evt((void*) p_roc_chan);
			break;
		default:
			break;
		}

        p_roc_chan->idx = CHAN_CTXT_UNUSED;

		if (((chan_env.status & CO_BIT(CHAN_ENV_DELAY_PROG_BIT)) != 0) &&
            ((chan_env.status & CO_BIT(CHAN_ENV_SCAN_WAIT_BIT)) == 0)) {
          	chan_env.status &= ~CO_BIT(CHAN_ENV_DELAY_PROG_BIT);
          	mm_timer_clear(&chan_env.tmr_conn_less);
          	chan_env.status &= ~CO_BIT(CHAN_ENV_DELAY_PROG_BIT);
        }

		return CO_OK;
	default:
		break;
	}

	return CO_FAIL;
}

uint8_t chan_ctxt_add(const struct mm_chan_ctxt_add_req *p_add_req, uint8_t *idx) {
	if (chan_check_chan(p_add_req, idx))
		return CO_OK;
	struct chan_ctxt_tag *p_chan_entry = (struct chan_ctxt_tag *)co_list_pop_front(&chan_env.list_free_ctxt);
	if (!p_chan_entry)
		return CO_FAIL;
	*idx = p_chan_entry->idx = CO_GET_INDEX(p_chan_entry, chan_ctxt_pool);
    p_chan_entry->channel.band = p_add_req->band;
    p_chan_entry->channel.type = p_add_req->type;
    p_chan_entry->channel.center1_freq = p_add_req->center1_freq;
    p_chan_entry->channel.center2_freq = p_add_req->center2_freq;
    p_chan_entry->channel.prim20_freq = p_add_req->prim20_freq;
    p_chan_entry->channel.tx_power = p_add_req->tx_power;
	return CO_OK;
}

void chan_ctxt_del(uint8_t chan_idx) {
    struct chan_ctxt_tag *p_chan_entry = chan_ctxt_pool + chan_idx;

    ASSERT_ERR(p_chan_entry->idx != CHAN_CTXT_UNUSED);
    ASSERT_ERR(p_chan_entry->nb_linked_vif == 0);

    co_list_push_back(&chan_env.list_free_ctxt, &p_chan_entry->list_hdr);

    chan_ctxt_init(p_chan_entry);
}

#define CHAN_ROC_SCAN_PENDING_MASK (CO_BIT(CHAN_ENV_ROC_BIT) | CO_BIT(CHAN_ENV_SCAN_BIT))
void chan_ctxt_link(uint8_t vif_idx, uint8_t chan_idx) {
    struct chan_ctxt_tag *p_chan_entry = chan_ctxt_pool + chan_idx;
    struct vif_info_tag *p_vif_entry = vif_info_tab + vif_idx;

	ASSERT_ERR(p_vif_entry->chan_ctxt == NULL);

	ASSERT_ERR(p_chan_entry->idx != CHAN_CTXT_UNUSED);

	p_vif_entry->chan_ctxt = p_chan_entry;
	p_chan_entry->nb_linked_vif ++;

	chan_env.cde_dur_us = chan_env.cde_dur_us + (CHAN_VIF_NB_SLOTS * CHAN_SLOT_DURATION_US);
	
	if (p_chan_entry->nb_linked_vif == 1) {
		p_chan_entry->status = CHAN_NOT_PROG;
		chan_env.nb_sched_ctxt ++;
		co_list_push_back(&chan_env.list_sched_ctxt, &p_chan_entry->list_hdr);
        if (!chan_env.chan_switch) {
            if ((chan_env.status & CHAN_ROC_SCAN_PENDING_MASK) == 0) {
                if (chan_env.nb_sched_ctxt == 1) {
                    chan_switch_start(p_chan_entry);
                } else {
                    chan_cde_evt(NULL);
                }
            }
        } else {
            chan_env.chan_switch->status = CHAN_NOT_PROG;
            chan_env.chan_switch = NULL;
        }
	}

	chan_update_tx_power(p_chan_entry);
}

void chan_ctxt_unlink(uint8_t vif_idx) {
    struct vif_info_tag *p_vif_entry   = &vif_info_tab[vif_idx];
    struct chan_ctxt_tag *p_chan_entry = p_vif_entry->chan_ctxt;
	ASSERT_ERR(p_chan_entry != NULL);
	co_list_extract(&chan_env.list_tbtt, &(p_vif_entry->tbtt_switch.list_hdr));
	p_vif_entry->tbtt_switch.status = CHAN_TBTT_NOT_PROG;
	p_vif_entry->chan_ctxt = NULL;
	p_chan_entry->nb_linked_vif--;
	if (p_chan_entry->status != CHAN_NOT_SCHEDULED) {
		chan_env.cde_dur_us -= (CHAN_VIF_NB_SLOTS * CHAN_SLOT_DURATION_US);
		if (p_chan_entry->nb_linked_vif == 0) {
			co_list_extract(&chan_env.list_sched_ctxt, &p_chan_entry->list_hdr);
			p_chan_entry->status = CHAN_NOT_SCHEDULED;
			chan_env.nb_sched_ctxt--;
            bool switch_in_prog = (chan_env.chan_switch != NULL);
            bool switch_unlk = (chan_env.chan_switch == p_chan_entry);
			if (chan_env.current_channel == p_chan_entry) {
				chan_env.current_channel = NULL;
			} else if (switch_unlk) {
				// switch_unlk => switch_in_prog
				chan_env.chan_switch = 0x0;
				// => A
			}
			if (!switch_in_prog) {
				if (chan_env.nb_sched_ctxt < 2) {
					if (chan_env.nb_sched_ctxt == 1) {
						chan_switch_start((struct chan_ctxt_tag *)co_list_pick(&chan_env.list_sched_ctxt));
					}
				} else {
					chan_cde_evt(NULL);
				}
			} else {
				// A
				chan_env.status |= CO_BIT(CHAN_ENV_TIMEOUT_BIT);
			}
		}
	}

	if (p_chan_entry->nb_linked_vif == 0) {
		chan_ctxt_del(p_chan_entry->idx);
	}

	chan_tbtt_schedule(NULL);

    chan_update_tx_power(p_chan_entry);
}

void chan_ctxt_update(const struct mm_chan_ctxt_update_req *p_upd_req) {
	uint8_t idx = p_upd_req->chan_index;
	chan_ctxt_pool[idx].channel.band = p_upd_req->band;
	chan_ctxt_pool[idx].channel.type = p_upd_req->type;
	chan_ctxt_pool[idx].channel.center1_freq = p_upd_req->center1_freq;
	chan_ctxt_pool[idx].channel.center2_freq = p_upd_req->center2_freq;
	chan_ctxt_pool[idx].channel.prim20_freq = p_upd_req->prim20_freq;
	chan_ctxt_pool[idx].channel.tx_power = p_upd_req->tx_power;
	struct chan_ctxt_tag *p_chan_entry = chan_env.current_channel;
	if (p_chan_entry != chan_ctxt_pool + idx) {
		return;
	}
	rxl_timer_int_handler();
	rxl_cntrl_evt(0);
	phy_set_channel(p_upd_req->band, p_upd_req->type, p_upd_req->prim20_freq, p_upd_req->center1_freq,
	                p_upd_req->center2_freq, PHY_PRIM);
	tpc_update_tx_power((p_chan_entry->channel).tx_power);
}

void chan_tbtt_switch_update(struct vif_info_tag *p_vif_entry, uint32_t tbtt_time) {
	struct chan_tbtt_tag *p_tbtt_entry = &p_vif_entry->tbtt_switch;
	if (p_vif_entry->chan_ctxt) {
		if (p_vif_entry->chan_ctxt->status != CHAN_TBTT_NOT_PROG) {
			if (p_tbtt_entry->time != tbtt_time - CHAN_SWITCH_DELAY) {
				p_tbtt_entry->time = tbtt_time - CHAN_SWITCH_DELAY;
				if (chan_env.nb_sched_ctxt < 2)
					return ;
				if ((p_vif_entry->tbtt_switch).status != CHAN_TBTT_PRESENCE) {
					p_tbtt_entry->status = CHAN_TBTT_NOT_PROG;
					co_list_extract(&chan_env.list_tbtt, &(p_vif_entry->tbtt_switch).list_hdr);
					chan_tbtt_schedule(p_tbtt_entry);
				}
			}
		}
	}
}

void chan_bcn_to_evt(struct vif_info_tag *p_vif_entry) {
	uint32_t current_time = ke_time();
	struct chan_tbtt_tag *p_tbtt_entry = &p_vif_entry->tbtt_switch;
	if (p_tbtt_entry->status == CHAN_TBTT_PRESENCE) {
		p_tbtt_entry->status = CHAN_TBTT_NOT_PROG;
		co_list_extract(&chan_env.list_tbtt, &p_tbtt_entry->list_hdr);
		if (chan_env.nb_sched_ctxt < 2) return ;
		chan_tbtt_schedule(&p_vif_entry->tbtt_switch);
		if ((chan_env.status & (CO_BIT(CHAN_ENV_ROC_BIT) | CO_BIT(CHAN_ENV_SCAN_BIT))) == 0) {
			struct chan_ctxt_tag *p_chan_entry = chan_env.current_channel;
			if (!chan_env.chan_switch) {
				chan_upd_nb_rem_slots(p_chan_entry, current_time);
			}
			if (p_chan_entry->nb_res_slots) {
				p_chan_entry->nb_res_slots -= co_min(chan_get_nb_slots(current_time, chan_env.cde_time), p_chan_entry->nb_res_slots);
			}
			chan_env.cde_time = current_time;
			p_chan_entry = chan_get_next_chan();
			if (chan_env.current_channel != p_chan_entry) {
				chan_switch_start(p_chan_entry);
			}
		}
	}
}

void chan_bcn_detect_start(struct vif_info_tag *p_vif_entry) {
	struct chan_ctxt_tag * p_chan_entry = p_vif_entry->chan_ctxt;

	ASSERT_ERR(p_chan_entry);

	if (((chan_env.status & CO_BIT(CHAN_ENV_BCN_DETECT_BIT)) == 0) && (chan_env.nb_sched_ctxt > 1)) {
		uint8_t ap_id = p_vif_entry->u.sta.ap_id;
		struct mm_remain_on_channel_req *msg = (struct mm_remain_on_channel_req *) ke_msg_alloc(MM_REMAIN_ON_CHANNEL_REQ, TASK_MM, TASK_MM, sizeof(struct mm_remain_on_channel_req));
		msg->op_code = MM_ROC_OP_START;
		msg->vif_index = p_vif_entry->index;
		msg->band = (p_chan_entry->channel).band;
		msg->type = (p_chan_entry->channel).type;
		msg->prim20_freq = (p_chan_entry->channel).prim20_freq;
		msg->center1_freq = (p_chan_entry->channel).center1_freq;
		msg->center2_freq = (p_chan_entry->channel).center2_freq;
		msg->duration_ms = (sta_info_tab[ap_id].bcn_int - 5000) / 1000;
		msg->tx_power = (p_chan_entry->channel).tx_power;
		ke_msg_send(msg);
		chan_env.status = chan_env.status | CO_BIT(CHAN_ENV_BCN_DETECT_BIT);
	}
}

bool chan_is_on_channel(struct vif_info_tag *p_vif_entry) {
	if (chan_env.current_channel) {
		if (chan_env.current_channel->idx < CHAN_SCAN_CTXT_IDX) {
			return p_vif_entry->chan_ctxt == chan_env.current_channel;
		} else {
			return chan_env.current_channel->vif_index == p_vif_entry->index;
		}
	}
	return false;
}

bool chan_is_tx_allowed(struct vif_info_tag *p_vif_entry) {
	return (chan_is_on_channel(p_vif_entry)) && (!chan_env.chan_switch || chan_env.current_channel->status == CHAN_SENDING_NOA);
}

bool chan_is_on_operational_channel(struct vif_info_tag *p_vif_entry) {
	if (chan_env.current_channel) {
		if (chan_env.current_channel->idx < CHAN_SCAN_CTXT_IDX) {
			return  p_vif_entry->chan_ctxt == chan_env.current_channel;
		}
	}
	return false;
}

void chan_update_tx_power(struct chan_ctxt_tag *p_chan_entry) {
	if (p_chan_entry->nb_linked_vif == 0) return ;
	int8_t min_pwr = VIF_UNDEF_POWER;
	for (int i = 0; i < NX_VIRT_DEV_MAX; i++) {
		if (p_chan_entry == vif_info_tab[0].chan_ctxt) {
			if (vif_info_tab[i].user_tx_power < min_pwr)
				min_pwr = vif_info_tab[i].user_tx_power;
			if (vif_info_tab[i].tx_power < min_pwr)
				min_pwr = vif_info_tab[i].tx_power;
		}
	}
	if (min_pwr != VIF_UNDEF_POWER) {
		p_chan_entry->channel.tx_power = min_pwr;
	}
}
