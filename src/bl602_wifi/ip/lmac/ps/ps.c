#include <lmac/ps/ps.h>

#include <phy_rf/phy_bl602.h>
#include <lmac/tpc/tpc.h>
#include <phy/mac_core.h>

#include <lmac/mm/mm_task.h>
#include <lmac/td/td.h>
#include <modules/ke/ke_task.h>
#include <modules/ke/ke_timer.h>
#include <modules/mac/mac.h>
#include <modules/mac/mac_frame.h>
#include <modules/common/co_utils.h>

#include <utils.h>

struct ps_env_tag ps_env;

static uint8_t ps_send_pspoll(struct vif_info_tag *vif_entry) {
	uint8_t sta_idx = vif_entry->u.sta.ap_id;
	struct phy_channel_info info;
	phy_get_channel(&info, 0);
	struct txl_frame_desc_tag *frame = txl_frame_get((uint8)info.info1 != 0, 16);
	if (frame) {
		tpc_update_frame_tx_power(vif_entry, frame);
		struct txl_buffer_tag * pBuffer = frame->txdesc.lmac.buffer;
		uint8_t* payload = &(pBuffer->payload);
		uint32_t aid = sta_info_tab[sta_idx].aid;
		payload[0] = 0xa4;
		payload[1] = 0;
		payload[2] = (uint8_t)aid;
		payload[3] = (aid >> 8) | 0xc0;
		memcpy(payload + 4, &(sta_info_tab[sta_idx].mac_addr), 6);
		memcpy(payload + 10, &(vif_entry->mac_addr), 6);
		struct tx_hw_desc *hw_desc = frame->txdesc.lmac.hw_desc;
		(hw_desc->thd).macctrlinfo2 = (hw_desc->thd).macctrlinfo2 | 0x10000053;
		frame->txdesc.host.vif_idx = sta_info_tab[sta_idx].inst_nbr;
		frame->txdesc.host.staid = sta_info_tab[sta_idx].staid;
		txl_frame_push(frame, 0x3);
	}
	return frame == 0;
}

//bool ps_check_tx_status(struct vif_info_tag *p_vif_entry, uint32_t status, cfm_func_ptr cfm) {
//	__builtin_trap();
//}

static void ps_enable_cfm(void *env, uint32_t status) {
	// (-1 < (int)(status << 8))
	// 31 - 8
	struct vif_info_tag* vif = env;
	if (!(status & FRAME_SUCCESSFUL_TX_BIT)) {
		uint8_t retry = vif->u.sta.ps_retry + 1;
		vif->u.sta.ps_retry = retry;
		if (retry != 3) {
			txl_frame_send_null_frame(vif->u.sta.ap_id, ps_enable_cfm, env);
			return ;
		}
		mm_send_connection_loss_ind(env);
	}

	struct vif_info_tag *p_vif_entry = (struct vif_info_tag *)co_list_pick(&vif_mgmt_env.used_list);
	if (ps_env.cfm_cnt != 0) {
		ps_env.cfm_cnt--;
	}
	if (ps_env.cfm_cnt == 0) {
		if (ps_env.uapsd_on != false) {
			uint32_t counter = MAC_CORE->MONOTONIC_COUNTER_2_LO.value;
			mm_timer_set(&ps_env.uapsd_timer, counter + ps_env.uapsd_timeout);
			ps_env.uapsd_tmr_on = true;
			for (; p_vif_entry; p_vif_entry = (struct vif_info_tag *)co_list_next(&p_vif_entry.list_hdr)) {
				if ((p_vif_entry->type == VIF_STA) && 
					(p_vif_entry->active != false) && 
					(p_vif_entry->u.sta.uapsd_queues != 0)) 
				{
					p_vif_entry->prevent_sleep &= ~PS_VIF_WAITING_EOSP;
				}
			}
		}
		uint8_t state_resume = (CO_BIT(PS_DPSM_STATE_ON) | CO_BIT(PS_DPSM_STATE_RESUMING));
		if ((ps_env.dpsm_state & state_resume) == state_resume) {
			ps_env.dpsm_state &= ~(CO_BIT(PS_DPSM_STATE_RESUMING) | CO_BIT(PS_DPSM_STATE_PAUSE));
		} else {
			ps_env.ps_on = true;
			ke_msg_send_basic(MM_SET_PS_MODE_CFM, ps_env.taskid, TASK_MM);
		}
		if ((ps_env.dpsm_state & CO_BIT(PS_DPSM_STATE_SET_MODE_REQ)) != 0) {
			ps_env.dpsm_state &= ~CO_BIT(PS_DPSM_STATE_SET_MODE_REQ);
			ps_set_mode(ps_env.next_mode, ps_env.taskid);
		}
	}
}

static void ps_disable_cfm(void *env, uint32_t status) {
	// (-1 < (int)(status << 8))
	// 31 - 8
	struct vif_info_tag* vif = env;
	if (!(status & FRAME_SUCCESSFUL_TX_BIT)) {
		uint8_t retry = vif->u.sta.ps_retry + 1;
		vif->u.sta.ps_retry = retry;
		if (retry != 3) {
			txl_frame_send_null_frame(vif->u.sta.ap_id, ps_enable_cfm, env);
			return ;
		}
		mm_send_connection_loss_ind(env);
	}
	if (ps_env.cfm_cnt != 0) {
		ps_env.cfm_cnt--;
	}
	if (ps_env.cfm_cnt == 0) {
		mm_timer_clear(&ps_env.uapsd_timer);
		ps_env.uapsd_tmr_on = false;
		uint8_t status_pause = CO_BIT(PS_DPSM_STATE_ON) | CO_BIT(PS_DPSM_STATE_PAUSING);
		if ((ps_env.dpsm_state & status_pause) == status_pause) {
			ps_env.dpsm_state = ps_env.dpsm_state & ~CO_BIT(PS_DPSM_STATE_PAUSING) | CO_BIT(PS_DPSM_STATE_PAUSE);
		} else {
			ps_env.ps_on = false;
			ke_msg_send_basic(MM_SET_PS_MODE_CFM, ps_env.taskid, TASK_MM);
		}
		if ((ps_env.dpsm_state & CO_BIT(PS_DPSM_STATE_SET_MODE_REQ)) != 0) {
			ps_env.dpsm_state = ps_env.dpsm_state & ~CO_BIT(PS_DPSM_STATE_SET_MODE_REQ);
			ps_set_mode(ps_env.next_mode, ps_env.taskid);
		}
	}
}

static void ps_dpsm_update(bool pause) {
	cfm_func_ptr ps_cfm_func = NULL;
	if (pause == 0) {
		ps_env.dpsm_state = ps_env.dpsm_state | CO_BIT(PS_DPSM_STATE_RESUMING);
		ps_env.prevent_sleep = ps_env.prevent_sleep & ~PS_VIF_WAITING_EOSP;
		ps_cfm_func = ps_enable_cfm;
	} else {        
		ps_env.dpsm_state = ps_env.dpsm_state | CO_BIT(PS_DPSM_STATE_PAUSING);
		ps_env.prevent_sleep = ps_env.prevent_sleep | PS_VIF_WAITING_EOSP;
		ps_cfm_func = ps_disable_cfm;
	}
	MAC_CORE->MAC_CNTRL_1.pwrMgt = pause ^ 1;
	ps_env.cfm_cnt = 0;
	struct vif_info_tag *p_vif_entry = (struct vif_info_tag *)co_list_pick(&vif_mgmt_env.used_list);
	for (; p_vif_entry; p_vif_entry = co_list_next(&(p_vif_entry->list_hdr))) {
		if ((p_vif_entry->type == VIF_STA) && (p_vif_entry->active != false) && (chan_is_on_channel(p_vif_entry))) {
			p_vif_entry->u.sta.ps_retry = 0;
			ps_env.cfm_cnt++;
			txl_frame_send_null_frame(p_vif_entry->u.sta.ap_id, ps_cfm_func, p_vif_entry);
		}
	}

	if (ps_env.cfm_cnt == 0) {
		ps_cfm_func(NULL, FRAME_SUCCESSFUL_TX_BIT);
	}
}

static void ps_uapsd_timer_handle(void *env) {
	bool updated = false;
	struct vif_info_tag *p_vif_entry = (struct vif_info_tag *)co_list_pick(&vif_mgmt_env.used_list);
	for (; p_vif_entry; p_vif_entry = co_list_next(&(p_vif_entry->list_hdr))) {
		if ((p_vif_entry->type == VIF_STA) && (p_vif_entry->active != false) && (p_vif_entry->u.sta.uapsd_queues != 0)) {
			if (chan_is_on_channel(p_vif_entry)) {
				updated = true;
				int32_t counter = MAC_CORE->MONOTONIC_COUNTER_2_LO.value;
				if (((int32_t)(ps_env.uapsd_timeout >> 1) - counter + p_vif_entry->u.sta.uapsd_last_rxtx) < 0) {
					p_vif_entry->prevent_sleep = p_vif_entry->prevent_sleep | PS_VIF_WAITING_EOSP;
					txl_frame_send_qosnull_frame(p_vif_entry->u.sta.ap_id, 7, 0, 0);
					p_vif_entry->u.sta.uapsd_last_rxtx = MAC_CORE->MONOTONIC_COUNTER_2_LO.value;
				}
			}
		}
	}

	if (updated) {
		mm_timer_set(&ps_env.uapsd_timer, ps_env.uapsd_timeout + MAC_CORE->MONOTONIC_COUNTER_2_LO.value);
		return ;
	}
	ps_env.uapsd_tmr_on = false;
}

void ps_init(void) {
	memset(&ps_env, 0, sizeof(ps_env));
	ps_env.uapsd_timer.cb = ps_uapsd_timer_handle;
}

void ps_set_mode(uint8_t mode, ke_task_id_t taskid) {
	cfm_func_ptr ps_cfm_func = NULL;
	ps_env.taskid = taskid;
	if (((ps_env.dpsm_state & CO_BIT(PS_DPSM_STATE_ON)) == 0) || ((ps_env.dpsm_state & (CO_BIT(PS_DPSM_STATE_PAUSING) | CO_BIT(PS_DPSM_STATE_RESUMING))) == 0)) {
		if (mode == PS_MODE_OFF) {
			ps_env.dpsm_state = 0;
 			ps_cfm_func = ps_disable_cfm;
			MAC_CORE->MAC_CNTRL_1.pwrMgt = mode;
		} else {
			if (mode == PS_MODE_ON_DYN) {
				ps_env.dpsm_state |= CO_BIT(PS_DPSM_STATE_ON);
			}
			MAC_CORE->MAC_CNTRL_1.pwrMgt = 1;
			ps_cfm_func = ps_enable_cfm;
		}

		ps_env.cfm_cnt = 0;
    	ps_env.uapsd_on = false;

		struct vif_info_tag *p_vif_entry = (struct vif_info_tag *)co_list_pick(&vif_mgmt_env.used_list);
		for (; p_vif_entry; p_vif_entry = co_list_next(&(p_vif_entry->list_hdr))) {
			if ((p_vif_entry->type == VIF_STA) && (p_vif_entry->active != false) && (chan_is_on_channel(p_vif_entry) != 0)) {
				p_vif_entry->u.sta.ps_retry = 0;
				ps_env.cfm_cnt = ps_env.cfm_cnt ++;
				if (p_vif_entry->u.sta.uapsd_queues != 0) {
					ps_env.uapsd_on = true;
				}
				txl_frame_send_null_frame(p_vif_entry->u.sta.ap_id, ps_cfm_func, p_vif_entry);
			}
		}
		if (ps_env.cfm_cnt == 0) {
			ps_cfm_func(NULL, FRAME_SUCCESSFUL_TX_BIT);
			return ;
		}
	} else {		        
    	ps_env.dpsm_state = ps_env.dpsm_state | CO_BIT(PS_DPSM_STATE_SET_MODE_REQ);
    	ps_env.next_mode = mode;
	}
}

void ps_polling_frame(struct vif_info_tag *vif_entry) {
	return ps_send_pspoll(vif_entry);
}

bool ps_check_tim(uint32_t a_tim, uint16_t aid) {
	/*
	  	aidshift = (uint)(aid >> 3);
      	bmpc = *(byte *)(tim + 4) & 0xfe;
     	// bVar4 = *(byte *)&(vif_entry->u).field_0xc & 0xf;
  		if (((bmpc <= aidshift) && (aidshift <= (*(byte *)(tim + 1) - 4) + bmpc)) &&
    		(((uint)*(byte *)(((aidshift + tim) - bmpc) + 5) & 1 << (aid & 7)) != 0)) {
	*/
	uint16_t aid_shift = (aid >> 3);
	uint8_t bmpc = co_read8p(a_tim + MAC_TIM_BMPC_OFT) & ~MAC_TIM_BCMC_PRESENT;
	if ((bmpc <= aid_shift) && 
		(aid_shift <= co_read8p(a_tim + MAC_TIM_LEN_OFT) - 4 + bmpc) &&
		(co_read8p(aidshift + a_tim - bmpc + MAC_TIM_BMP_OFT) & (CO_BIT(aid & 7)) != 0)
	) {
		return true;
	}
	return false;
}

void ps_check_beacon(uint32_t tim, uint16_t len, struct vif_info_tag *vif_entry) {
	bool pson = ps_env.ps_on;
	uint8_t sta_idx = vif_entry->u.sta.ap_id;
	uint16_t aid = sta_info_tab[sta_idx].aid;
	vif_entry->prevent_sleep &= ~PS_VIF_WAITING_BCN;
	if (((pson == false) || ((ps_env.dpsm_state & CO_BIT(PS_DPSM_STATE_PAUSE)) != 0)) || (tim == 0)) {
		return 0;
	}
	if (!(vif_entry->u.sta.dont_wait_bcmc)) {
		if ((co_read8p(tim + MAC_TIM_BMPC_OFT) & MAC_TIM_BCMC_PRESENT) == 0) {
			vif_entry->prevent_sleep &= ~(PS_VIF_WAITING_BCN | PS_VIF_WAITING_BCMC)
		} else {
			vif_entry->prevent_sleep = vif_entry->prevent_sleep | PS_VIF_WAITING_BCMC;
		}
	}
	if (ps_check_tim(tim, aid)) {
		if (vif_entry->u.sta.uapsd_queues == 15) {
			if (txl_frame_send_qosnull_frame(sta_idx, 7, 0, 0)) {
				return ;
			}
			vif_entry->prevent_sleep |= PS_VIF_WAITING_EOSP;
		} else {
			if (ps_send_pspoll(vif_entry)) {
				return ;
			}
			vif_entry->prevent_sleep = vif_entry->prevent_sleep | PS_VIF_WAITING_UC; 
		}
	} else {
		if (vif_entry->u.sta.uapsd_queues == 15) {
			vif_entry->prevent_sleep &= ~PS_VIF_WAITING_EOSP;
		} else {
			vif_entry->prevent_sleep &= ~PS_VIF_WAITING_UC;
		}
	}
}

void ps_check_frame(uint8_t *frame, uint32_t statinfo, struct vif_info_tag *vif_entry) {
	uint8_t uapsdon = ps_env.uapsd_on;
	if (ps_env.ps_on == false) {
		return ;
	}
    struct mac_hdr *machdr = (struct mac_hdr *)frame;
    uint16_t framectrl = machdr->fctl;
	if (MAC_ADDR_GROUP(&machdr->addr1)) {
		// 31- 18
		if (((framectrl >> 13) & 1) && !(vif_entry->u.sta.dont_wait_bcmc)) {
			return ;
		}
		vif_entry->prevent_sleep &= ~PS_VIF_WAITING_BCMC;
		return ;
	}
	if (statinfo & RX_HD_ADDRMIS)
		return ;
	if (uapsdon != false) {
    	if ((framectrl & MAC_FCTRL_QOS_DATA) == MAC_FCTRL_QOS_DATA) {
			uint16_t qos = 0;
      		if ((framectrl & MAC_FCTRL_TODS_FROMDS) == MAC_FCTRL_TODS_FROMDS) {
                struct mac_hdr_long_qos *hdr = (struct mac_hdr_long_qos *)machdr;
                qos = hdr->qos;
			} else {
                struct mac_hdr_qos *hdr = (struct mac_hdr_qos *)machdr;
                qos = hdr->qos;
			}
			if (vif_entry->u.sta.uapsd_queues & (CO_BIT(mac_tid2ac[qos & 7]))) {
				vif_entry->u.sta.uapsd_last_rxtx = ke_time();
				if (qos & MAC_QOSCTRL_EOSP) {
					return ;
				}
				vif_entry->prevent_sleep &= ~PS_VIF_WAITING_EOSP;
				return ;
			}
			uapsdon = false;
		} else {
			// MAC_FCTRL_RSV_T?
			if (((framectrl & MAC_FCTRL_RSV_T) == 0) && ((((vif_entry->u.sta.uapsd_queues)) & 8) != 0)) {
				vif_entry->u.sta.uapsd_last_rxtx = ke_time();
			} else {
				uapsdon = false;
			}
		}
	}
	
    td_pck_ps_ind(vif_entry->index, true);
	if (uapsdon == 0) {
		if (framectrl & MAC_FCTRL_MOREDATA) {
			if ((ps_env.dpsm_state & CO_BIT(PS_DPSM_STATE_PAUSE)) == 0) {
				if (ps_send_pspoll(vif_entry) != 0) {
					vif_entry->prevent_sleep &= ~PS_VIF_WAITING_UC;
				}
			}
		} else {
			vif_entry->prevent_sleep &= ~PS_VIF_WAITING_UC;
		}
	}

}

void ps_check_tx_frame(uint8_t staid, uint8_t tid) {
	if ((ps_env.ps_on != false) && (staid != 0xff) && (tid != 0xff)) {
        struct sta_info_tag* = sta_entry = sta_info_tab + staid;
        struct vif_info_tag* vif_entry = vif_info_tab + sta_entry->inst_nbr;
		if ((vif_entry->type == VIF_STA) && (vif_entry->active)) {
			if ((vif_entry->u.sta.uapsd_queues >> mac_tid2ac[tid]) & 1) {
				vif_entry->prevent_sleep |= PS_VIF_WAITING_EOSP;
				vif_entry->u.sta.uapsd_last_rxtx = ke_time();
				return ;
			}
			td_pck_ps_ind(vif_entry->index, false);
		}
	}
}

void ps_uapsd_set(struct vif_info_tag *vif_entry, uint8_t hw_queue, bool uapsd) {
	if (!uapsd) {
		vif_entry->u.sta.uapsd_last_rxtx &= ~CO_BIT(hw_queue);
	} else {
		vif_entry->u.sta.uapsd_last_rxtx |= CO_BIT(hw_queue);
		if (ps_env.ps_on) {
			if (ps_env.uapsd_on == false) {
				ps_env.uapsd_on = true;
				mm_timer_set(&ps_env.uapsd_timer, ke_time() + ps_env.uapsd_timeout);
				ps_env.uapsd_tmr_on = true;
			}
		}
	}
}

void ps_traffic_status_update(uint8_t vif_index, uint8_t new_status) {
	/// TODO: verify me
	if ((ps_env.ps_on != false) && 
		((ps_env.dpsm_state & CO_BIT(PS_DPSM_STATE_ON)) != 0) && 
		((ps_env.dpsm_state & (CO_BIT(PS_DPSM_STATE_PAUSING) | CO_BIT(PS_DPSM_STATE_RESUMING))) == 0)
	) {
		bool pause = (ps_env.dpsm_state & CO_BIT(PS_DPSM_STATE_PAUSE) != 0);
		if (new_status == 0) {
			bool find = false;
			struct vif_info_tag *p_vif_entry = (struct vif_info_tag *)co_list_pick(&vif_mgmt_env.used_list);
			for (; p_vif_entry; p_vif_entry = co_list_next(&(p_vif_entry->list_hdr))) {
				if (p_vif_entry->index != vif_index) {
                    if ((p_vif_entry->active) && (p_vif_entry->type == VIF_STA)) {
						if (td_get_ps_status(p_vif_entry->index)) {
							find = true;
							break;
						}
					}
				}
			}
			if (!find) {
				if (pause) {
					ps_dpsm_update(false);
					return ;
				} else {
					return ;
				}
			}
		}
		/// find == true
		if (!pause) {
			ps_dpsm_update(true);
		}
	}
}
