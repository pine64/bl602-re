#include <lmac/vif/vif_mgmt.h>

#include <lmac/ke/ke_timer.h>
#include <lmac/mm/mm.h>
#include <lmac/mm/mm_task.h>
#include <lmac/tx/txl/txl_cntrl.h>

#include <modules/common/co_list.h>
#include <modules/common/co_status.h>
#include <modules/mac/mac.h>
#include <modules/mac/mac_frame.h>
#include <modules/ke/ke_task.h>

#include <phy/mac_core.h>

#include <phy_rf/phy.h>

#include <blconfig.h>

struct vif_mgmt_env_tag vif_mgmt_env;
struct vif_info_tag vif_info_tab[NX_VIRT_DEV_MAX];

static void vif_mgmt_bcn_to_evt(void *env) {
    struct vif_info_tag *p_info_env = (struct vif_info_tag *)env;
    if (p_info_env->chan_ctxt != 0) {
        chan_bcn_to_evt(p_info_env);
        return;
    }
}

static void vif_mgmt_entry_init(struct vif_info_tag *vif_entry) {
    memset(vif_entry, 0, sizeof(*vif_entry));

    vif_entry->type = VIF_UNKNOWN;
    vif_entry->tx_power = VIF_UNDEF_POWER;
    vif_entry->user_tx_power = VIF_UNDEF_POWER;

    #if (NX_P2P || NX_CHNL_CTXT)
    vif_entry->tmr_bcn_to.cb  = vif_mgmt_bcn_to_evt;
    vif_entry->tmr_bcn_to.env = vif_entry;
    #endif
}

void vif_mgmt_init(void) { 
    memset(&vif_mgmt_env, 0, sizeof(struct vif_mgmt_env_tag));
    co_list_init(&vif_mgmt_env.free_list);
    co_list_init(&vif_mgmt_env.used_list);
	for (int i = 0; i < NX_VIRT_DEV_MAX; i++) {
        vif_mgmt_entry_init(&vif_info_tab[i]);
        co_list_push_back(&vif_mgmt_env.free_list, &vif_info_tab[i].list_hdr);
    }
}

void vif_mgmt_reset(void) {
    struct vif_info_tag *p_vif_entry = co_list_pick(&vif_mgmt_env.used_list);
    
    for (; p_vif_entry != NULL; p_vif_entry = co_list_next(&p_vif_entry->list_hdr)) {
        vif_mgmt_send_postponed_frame(p_vif_entry);
    }
}

uint8_t vif_mgmt_register(const struct mac_addr *mac_addr, uint8_t vif_type, bool p2p, uint8_t *vif_idx) {
	if (co_list_is_empty(&vif_mgmt_env.free_list)) {
        return 1;
    }

    if (co_list_is_empty(&vif_mgmt_env.used_list)) {
        mm_hw_info_set(mac_addr);
    } else {
        if (*((uint32_t*)(mac_addr->array)) != MAC_CORE->MAC_ADDR_LOW.value) {
            return CO_FAIL;
        }

        if ((MAC_CORE->MAC_ADDR_HI.value & ~(MAC_CORE->MAC_ADDR_HI_MASK.value)) != *((uint32_t*)(mac_addr->array + 2))) {
            return CO_FAIL;
        }

        mm_rx_filter_lmac_enable_set(NXMAC_ACCEPT_OTHER_BSSID_BIT);
    }

    struct vif_info_tag* vif_entry = (struct vif_info_tag *) co_list_pop_front(&vif_mgmt_env.free_list);
    
    vif_entry->type = vif_type;
    vif_entry->mac_addr = *mac_addr;
    vif_entry->index = CO_GET_INDEX(vif_entry, vif_info_tab);

    // reset values
    vif_entry->txq_params[AC_BK] = 0x0a47;
    vif_entry->txq_params[AC_BE] = 0xa43;
    vif_entry->txq_params[AC_VI] = 0x5e432;
    vif_entry->txq_params[AC_VO] = 0x2f322;

    #if (NX_CHNL_CTXT)
    vif_entry->chan_ctxt = NULL;
    (vif_entry->tbtt_switch).vif_index = vif_entry->index;
    #endif

    switch (vif_type) {
        case VIF_STA: {
            (vif_entry->tbtt_timer).env = vif_entry;
            vif_entry->u.sta.csa_count = 0;
            vif_mgmt_env.vif_sta_cnt = vif_mgmt_env.vif_sta_cnt + 1;
            vif_entry->tbtt_timer.cb = mm_sta_tbtt;
            vif_entry->u.sta.ap_id = 0xff;
            vif_entry->u.sta.csa_occured = 0;
            break;
        }
        case VIF_AP: {
            if (vif_mgmt_env.vif_ap_cnt == 0) {
                mm_hw_ap_info_set();
            }
            vif_mgmt_env.vif_ap_cnt++;
            mm_bcn_init_vif(vif_entry);
            break;;
        }
        default:
            break;
    }

    td_start(vif_entry->index);
    *vif_idx = vif_entry->index;
    co_list_push_back(&vif_mgmt_env.used_list,&vif_entry->list_hdr);
    return CO_OK;
}

void vif_mgmt_unregister(uint8_t vif_idx) {
	struct vif_info_tag *vif_entry = &vif_info_tab[vif_idx];
    co_list_extract(&vif_mgmt_env.used_list, &vif_entry->list_hdr);
    switch (vif_entry->type) {
        case VIF_STA: {
            vif_mgmt_env.vif_sta_cnt--;
            break;
        }
        case VIF_AP: {
            vif_mgmt_env.vif_ap_cnt--;
            if (vif_mgmt_env.vif_ap_cnt == 0)
                mm_hw_ap_info_reset();
            break;
        }
        default:
            break;
    }

    if (vif_mgmt_used_cnt() == 1) {
        mm_rx_filter_lmac_enable_clear(NXMAC_ACCEPT_OTHER_BSSID_BIT);
        struct vif_info_tag* vif_next = co_list_pick(&vif_mgmt_env.used_list);
        MAC_CORE->BSS_ID_LOW.value = vif_next->bssid.array[0] | (vif_next->bssid.array[1] << 16);
        MAC_CORE->BSS_ID_HI.value = vif_next->bssid.array[2];
    }

    if (vif_entry->type == VIF_AP) {
        txl_cntrl_clear_bcn_ac();
    }

    mm_timer_clear(&(vif_entry->tbtt_timer));
    mm_timer_clear(&(vif_entry->tmr_bcn_to));

    td_reset(vif_entry->index);

    vif_mgmt_entry_init(vif_entry);

    co_list_push_back(&vif_mgmt_env.free_list, &vif_entry->list_hdr);
}

void vif_mgmt_add_key(const struct mm_key_add_req *param, uint8_t hw_key_idx) {
    uint8_t inst_nbr = param->inst_nbr;
    struct vif_info_tag *vif_entry = &vif_info_tab[inst_nbr];
    uint8_t key_idx = param->key_idx;
    struct key_info_tag *key_info = &vif_info_tab[inst_nbr].key_info[key_idx];
    key_info->hw_key_idx = hw_key_idx;
    key_info->cipher = param->cipher_suite;
    key_info->key_idx = param->key_idx;

    memset(key->rx_pn, 0, sizeof(key->rx_pn));

    switch (key_info->cipher) {
        case MAC_RSNIE_CIPHER_TKIP: {
            key_info->tx_pn = 0;
            key_info->u.mic.tx_key[0] = param->key.array[4];
            key_info->u.mic.tx_key[1] = param->key.array[5];
            key_info->u.mic.rx_key[0] = param->key.array[6];
            key_info->u.mic.rx_key[1] = param->key.array[7];
            break;
        }
        case MAC_RSNIE_CIPHER_WEP40:
        case MAC_RSNIE_CIPHER_WEP104: {
            key_info->tx_pn = co_rand_word() & 0xFFFFFF;
            break;
        }
        default:
            key_info->tx_pn = 0;
    }   
    key_info->valid = true;
    vif_entry->default_key = vif_entry->key_info + key_idx;
}

void vif_mgmt_del_key(struct vif_info_tag *vif, uint8_t keyid) {
	vif->key_info[keyid].valid = false;
    if (vif->default_key == vif->key_info + keyid) {
        vif->default_key = NULL;
        for (int i = 0 ; i < MAC_DEFAULT_KEY_COUNT; i++) {
            if (vif->key_info[i].valid) {
                vif->default_key = vif->key_info + i;
                break;
            }
        }
    }
}

void vif_mgmt_send_postponed_frame(struct vif_info_tag *p_vif_entry) {
	struct sta_info_tag *p_sta_entry = co_list_pick(&p_vif_entry->sta_list);
    for (; p_sta_entry != NULL; p_sta_entry = co_list_next(&p_sta_entry->list_hdr)) {
        sta_mgmt_send_postponed_frame(p_vif_entry,p_sta_entry, 0);
    }
}

#if (NX_CHNL_CTXT || NX_P2P)
void vif_mgmt_bcn_to_prog(struct vif_info_tag *p_vif_entry) {
	mm_timer_set(&p_vif_entry->tmr_bcn_to, ke_time() + VIF_MGMT_BCN_TO_DUR);
}

void vif_mgmt_bcn_recv(struct vif_info_tag *p_vif_entry) {
    if (((ps_env.ps_on != false) && 
        ((ps_env.prevent_sleep & PS_VIF_WAITING_EOSP) == 0)) &&
        (p_vif_entry->prevent_sleep == 0)
    ) {
        mm_timer_clear(&p_vif_entry->tmr_bcn_to);
        vif_mgmt_bcn_to_evt(p_vif_entry);
    }
}
#endif

void vif_mgmt_set_ap_bcn_int(struct vif_info_tag *p_vif_entry, uint16_t bcn_int) {
    uint16_t new_bcn_int = bcn_int;
    p_vif_entry->u.ap.bcn_int = bcn_int;
	__disable_irq();
    if (vif_mgmt_env.vif_ap_cnt < 2) {
        vif_mgmt_env.low_bcn_int_idx = p_vif_entry->index;
        p_vif_entry->u.ap.bcn_tbtt_ratio = 1;
        p_vif_entry->u.ap.bcn_tbtt_cnt = 1;
    } else {
        uint16_t lowest_bcn_int = vif_info_tab[vif_mgmt_env.low_bcn_int_idx].u.ap.bcn_int;
        if (new_bcn_int < lowest_bcn_int) {
            vif_mgmt_env.low_bcn_int_idx = p_vif_entry->index;
        } else {
            new_bcn_int = lowest_bcn_int;
        }
        struct vif_info_tag * p_vif_entry = (struct vif_info_tag *)co_list_pick(&vif_mgmt_env.used_list);
        for (; p_vif_entry != NULL; p_vif_entry = co_list_next(&p_vif_entry->list_hdr)) {
            p_vif_entry->u.ap.bcn_tbtt_cnt = 1; /// e5: 229
            uint8_t ratio = p_vif_entry->u.ap.bcn_int / new_bcn_intl; // e2: 226
            p_vif_entry->u.ap.bcn_tbtt_ratio = ratio /// e4: 228
        }
    }
    MAC_CORE->BCN_CNTRL_1.beaconInt = new_bcn_int;
    __enable_irq();
}

void vif_mgmt_switch_channel(struct vif_info_tag *p_vif_entry) {
    struct mm_csa_finish_ind *ind = KE_MSG_ALLOC(MM_CSA_FINISH_IND, TASK_API, TASK_MM, mm_csa_finish_ind);
    chan_ctxt_unlink(p_vif_entry->index);
    uint8_t chan_idx = 0xff;
    struct mm_chan_ctxt_add_req* chan = &p_vif_entry->csa_channel;
    struct mac_bss_info *bss_info = &p_vif_entry->bss_info;
    uint16_t prim_freq = chan->prim20_freq;
    uint16_t center1_freq = chan->center1_freq;

    bss_info->chan = me_freq_to_chan_ptr(chan->band, prim_freq);;
    bss_info->center_freq1 = center1_freq;
    bss_info->center_freq2 = chan->center2_freq;                                          

    if (chan->type == PHY_CHNL_BW_80P80) {
        bss_info->phy_bw = BW_160MHZ
    } else {
        bss_info->phy_bw = chan->type;
    }

    if (bss_info->chan) {
        chan->tx_power = bss_info->chan->tx_power;
        int ret = chan_ctxt_add(&p_vif_entry->csa_channel, &chan_idx);
        ind->status = ret;
        ind->chan_idx = chan_idx;
        switch (p_vif_entry->type) {
            case VIF_STA: {
                p_vif_entry->u.sta.csa_count = 0;
                if (ret == CO_OK) {
                    chan_ctxt_link(p_vif_entry->index, chan_idx);
                    mm_timer_clear(&p_vif_entry->tmr_bcn_to);
                    mm_timer_set(&p_vif_entry->tbtt_timer,ke_time() + sta_info_tab[p_vif_entry->u.sta.ap_id].bcn_int);
                    p_vif_entry->u.sta.beacon_loss_cnt = 0; // 0x18
                    p_vif_entry->u.sta.csa_occured = true; // 0x1e
                } else {
                    mm_send_connection_loss_ind(p_vif_entry);
                }
                break;
            }
            case VIF_AP: {
                //  p_vif_entry->type == VIF_AP
                p_vif_entry->u.ap.csa_count = 0;
                if (ret == CO_OK) {
                    chan_ctxt_link(p_vif_entry->index, chan_idx);
                    mm_bcn_env.update_ongoing = true;
                }
            }
            default: 
                break;
        }
    } else {
        /// TODO: why use c.break?
        ASSERT_ERR(bss_info->chan);
    }
    ke_msg_send(ind);
}

struct vif_info_tag *vif_mgmt_get_first_ap_inf(void) {
    if (vif_mgmt_env.vif_ap_cnt != '\0') {
        struct vif_info_tag* p_vif_entry = (struct vif_info_tag *)co_list_pick(&vif_mgmt_env.used_list);
        for (; p_vif_entry != NULL; p_vif_entry = co_list_next(&p_vif_entry->list_hdr)) {
            if (p_vif_entry->type == VIF_AP) {
                return p_vif_entry;
            }
        }
    }
    return NULL;
}
