#include <blconfig.h>

#include <lmac/mm/mm_task.h>
#include <lmac/mm/mm_bcn.h>
#include <lmac/mm/mm.h>
#include <umac/me/me.h>

#include <lmac/vif/vif_mgmt.h>
#include <lmac/tpc/tpc.h>
#include <lmac/ps/ps.h>

#include <modules/common/co_utils.h>
#include <modules/common/co_status.h>

#include <modules/ke/ke_msg.h>
#include <modules/ke/ke_task.h>
#include <modules/ke/ke_timer.h>
#include <modules/mac/mac.h>
#include <modules/mac/mac_frame.h>

#include <hal/hal_machw.h>

#include <phy_rf/phy_bl602.h>
#include <phy_rf/phy.h>

#include <phy/mac_core.h>

#include <arch/rv32i/ll.h>

#include <macro.h>
#include <utils.h>


int bl60x_edca_get(int ac, uint8_t *aifs, uint8_t *cwmin, uint8_t *cwmax, uint16_t *txop) {
    switch (ac) {
    case 0:
        EXTRACT(MAC_CORE->EDCA_AC_0, edca_ac) {
            *aifs = edca_ac.aifsn0;
            *cwmin = edca_ac.cwMin0;
            *cwmax = edca_ac.cwMax0;
            *txop = edca_ac.txOpLimit0;
        }
        break;
    case 1:
        EXTRACT(MAC_CORE->EDCA_AC_1, edca_ac) {
            *aifs = edca_ac.aifsn1;
            *cwmin = edca_ac.cwMin1;
            *cwmax = edca_ac.cwMax1;
            *txop = edca_ac.txOpLimit1;
        }
        break;
    case 2:
        EXTRACT(MAC_CORE->EDCA_AC_2, edca_ac) {
            *aifs = edca_ac.aifsn2;
            *cwmin = edca_ac.cwMin2;
            *cwmax = edca_ac.cwMax2;
            *txop = edca_ac.txOpLimit2;
        }
        break;
    case 3:
        EXTRACT(MAC_CORE->EDCA_AC_3, edca_ac) {
            *aifs = edca_ac.aifsn3;
            *cwmin = edca_ac.cwMin3;
            *cwmax = edca_ac.cwMax3;
            *txop = edca_ac.txOpLimit3;
        }
        break;
    default:
        return -1;
    }
    return 0;
}

static int mm_version_req_handler(const ke_msg_id_t msgid, const void *param, const ke_task_id_t dest_id, const ke_task_id_t src_id) {
    struct mm_version_cfm  *msg = (struct mm_version_cfm  *)ke_msg_alloc(MM_VERSION_CFM, src_id, dest_id, sizeof(struct mm_version_cfm));
    msg->version_lmac = NX_VERSION;
    msg->version_machw_1 = MAC_CORE->VERSION_1.value;
    msg->version_machw_2 = MAC_CORE->VERSION_2.value;
    phy_get_version(&msg->version_phy_1, &msg->version_phy_2);
    msg->features = (0
    #if (NX_BEACONING)
            | CO_BIT(MM_FEAT_BCN_BIT)
    #endif //(NX_BEACONING)
    #if (NX_BCN_AUTONOMOUS_TX)
            | CO_BIT(MM_FEAT_AUTOBCN_BIT)
    #endif //(NX_BCN_AUTONOMOUS_TX)
    #if (NX_HW_SCAN)
            | CO_BIT(MM_FEAT_HWSCAN_BIT)
    #endif //(NX_HW_SCAN)
    #if (NX_CONNECTION_MONITOR)
            | CO_BIT(MM_FEAT_CMON_BIT)
    #endif //(NX_CONNECTION_MONITOR)
    #if (NX_MULTI_ROLE)
            | CO_BIT(MM_FEAT_MROLE_BIT)
    #endif //(NX_MULTI_ROLE)
    #if (NX_RADAR_DETECT)
            | CO_BIT(MM_FEAT_RADAR_BIT)
    #endif //(NX_RADAR_DETECT)
    #if (NX_POWERSAVE)
            | CO_BIT(MM_FEAT_PS_BIT)
    #endif //(NX_POWERSAVE)
    #if (NX_UAPSD)
            | CO_BIT(MM_FEAT_UAPSD_BIT)
    #endif //(NX_UAPSD)
    #if (NX_DPSM)
            | CO_BIT(MM_FEAT_DPSM_BIT)
    #endif //(NX_DPSM)
    #if (NX_AMPDU_TX)
            | CO_BIT(MM_FEAT_AMPDU_BIT)
    #endif //(NX_AMPDU_TX)
    #if (NX_AMSDU_TX)
            | CO_BIT(MM_FEAT_AMSDU_BIT)
    #endif //(NX_AMSDU_TX)
    #if (NX_CHNL_CTXT)
            | CO_BIT(MM_FEAT_CHNL_CTXT_BIT)
    #endif //(NX_CHNL_CTXT)
    #if (NX_P2P)
            | CO_BIT(MM_FEAT_P2P_BIT)
    #endif //(NX_P2P)
    #if (NX_P2P_GO)
            | CO_BIT(MM_FEAT_P2P_GO_BIT)
    #endif //(NX_P2P_GO)
            | CO_BIT(MM_FEAT_UMAC_BIT)
    #if (NX_REORD)
            | CO_BIT(MM_FEAT_REORD_BIT)
    #endif //(NX_REORD)
    #if (NX_MFP)
            | CO_BIT(MM_FEAT_MFP_BIT)
    #endif //(NX_MFP)
    #if (RW_MESH_EN)
            | CO_BIT(MM_FEAT_MESH_BIT)
    #endif //(RW_MESH_EN)
    #if (TDLS_ENABLE)
            | CO_BIT(MM_FEAT_TDLS_BIT)
    #endif //(TDLS_ENABLE)
            );

    #if (RW_BFMEE_EN)
    if (hal_machw_bfmee_support())
        msg->features |= CO_BIT(MM_FEAT_BFMEE_BIT);
    #endif //(RW_BFMEE_EN)

    #if (RW_BFMER_EN)
    msg->features |= CO_BIT(MM_FEAT_BFMER_BIT);
    #endif //(RW_BFMER_EN)

    #if (RW_MUMIMO_RX_EN)
    if (hal_machw_mu_mimo_rx_support())
        msg->features |= CO_BIT(MM_FEAT_MU_MIMO_RX_BIT);
    #endif //(RW_MUMIMO_RX_EN)

    #if (RW_MUMIMO_TX_EN)
    msg->features |= CO_BIT(MM_FEAT_MU_MIMO_TX_BIT);
    #endif //(RW_MUMIMO_TX_EN)

    #if (RW_WAPI_EN)
    if (nxmac_wapi_getf())
        msg->features |= CO_BIT(MM_FEAT_WAPI_BIT);
    #endif //(RW_WAPI_EN)

    #if (NX_VHT)
    msg->features |= CO_BIT(MM_FEAT_UMAC_VHT_BIT);
    #endif

    ke_msg_send((void*) msg);

    return KE_MSG_CONSUMED;
}

static int mm_reset_req_handler(const ke_msg_id_t msgid, const void *param, const ke_task_id_t dest_id, const ke_task_id_t src_id) {
    __disable_irq();
    hal_machw_stop();
    phy_stop();
    me_init();
    mm_init();
    __enable_irq();
    ke_msg_send_basic(MM_RESET_CFM, src_id, dest_id);
    ke_state_set(TASK_MM, MM_IDLE);
    return KE_MSG_CONSUMED;
}

static int mm_start_req_handler(const ke_msg_id_t msgid, const struct mm_start_req *param, const ke_task_id_t dest_id, const ke_task_id_t src_id) {
    ASSERT_ERR(ke_state_get(dest_id) == MM_IDLE);

    phy_init(&param->phy_cfg);

    phy_set_channel(PHY_BAND_2G4, PHY_CHNL_BW_20, 2412, 2412, 0, PHY_PRIM);
    tpc_update_tx_power(15);

    #if NX_UAPSD
    ps_env.uapsd_timeout = param->uapsd_timeout * MILLI2MICRO;
    #endif

    #if NX_POWERSAVE
    mm_env.lp_clk_accuracy = param->lp_clk_accuracy;
    #endif

    ke_msg_send_basic(MM_START_CFM, src_id, dest_id);

    mm_active();
    hal_machw_idle_req();

    ke_state_set(dest_id, MM_GOING_TO_IDLE);

    return KE_MSG_CONSUMED;
}
#if (!NX_CHNL_CTXT)
static int mm_set_channel_req_handler(const ke_msg_id_t msgid, const struct mm_set_channel_req *param, const ke_task_id_t dest_id, const ke_task_id_t src_id) {
    // not used
}
#else
static int mm_set_channel_req_handler(const ke_msg_id_t msgid, const struct mm_set_channel_req *param, const ke_task_id_t dest_id, const ke_task_id_t src_id) {
    struct mm_set_channel_cfm *cfm;
    cfm = KE_MSG_ALLOC(MM_SET_CHANNEL_CFM, src_id, dest_id, mm_set_channel_cfm);
    if (param->index != PHY_PRIM) {
        phy_set_channel(param->band, param->type, param->prim20_freq, param->center1_freq, param->center2_freq, param->index);
    }
    ke_msg_send((void*) cfm);
    return KE_MSG_CONSUMED;
}
#endif

static int mm_set_dtim_req_handler(const ke_msg_id_t msgid, const struct mm_set_dtim_req *param, const ke_task_id_t dest_id, const ke_task_id_t src_id) {
    MAC_CORE->DTIM_CFP_1.dtimPeriod = param->dtim_period;
    MAC_CORE->DTIM_CFP_1.dtimUpdatedBySW = 1;

    ke_msg_send_basic(MM_SET_DTIM_CFM, src_id, dest_id);

    return KE_MSG_CONSUMED;
}

static int mm_set_beacon_int_req_handler(const ke_msg_id_t msgid, const struct mm_set_beacon_int_req *param, const ke_task_id_t dest_id, const ke_task_id_t src_id) {
    struct vif_info_tag *vif_entry = vif_info_tab + param->inst_nbr;

    if (vif_entry->type == VIF_STA) {
        #if (NX_MULTI_ROLE)
        {
            struct sta_info_tag *p_sta_entry = sta_info_tab + vif_entry->u.sta.ap_id;
            p_sta_entry->bcn_int = param->beacon_int * TU_DURATION;
        }
        #else //(NX_MULTI_ROLE)
        MAC_CORE->BCN_CNTRL_1.beaconInt = param->beacon_int * TU_DURATION;
        #endif //(NX_MULTI_ROLE)
    } else {
        vif_mgmt_set_ap_bcn_int(vif_entry, param->beacon_int);
    }

    ke_msg_send_basic(MM_SET_BEACON_INT_CFM, src_id, dest_id);

    return KE_MSG_CONSUMED;
}

static int mm_set_basic_rates_req_handler(const ke_msg_id_t msgid, const struct mm_set_basic_rates_req *param, const ke_task_id_t dest_id, const ke_task_id_t src_id) {
    #if NX_CHNL_CTXT
    struct chan_ctxt_tag *chan = chan_env.current_channel;
    mm_env.basic_rates[param->band] = param->rates;
    
    if (chan && (chan->channel.band == param->band))
        MAC_CORE->RATES.value = 0x10; // bl602 always set this value to 0x10
    #else
    MAC_CORE->RATES.value = param->rates;
    #endif

    ke_msg_send_basic(MM_SET_BASIC_RATES_CFM, src_id, dest_id);

    return KE_MSG_CONSUMED;
}

static int mm_set_filter_req_handler(const ke_msg_id_t msgid, const struct mm_set_filter_req *param, const ke_task_id_t dest_id, const ke_task_id_t src_id) {
    mm_env.rx_filter_umac = param->filter;
    MAC_CORE->RX_CNTRL.value = mm_env.rx_filter_umac | mm_env.rx_filter_lmac_enable;

    ke_msg_send_basic(MM_SET_FILTER_CFM, src_id, dest_id);

    return KE_MSG_CONSUMED;
}

static int mm_set_bssid_req_handler(const ke_msg_id_t msgid, const struct mm_set_bssid_req *param, const ke_task_id_t dest_id, const ke_task_id_t src_id) {
    #if NX_MULTI_ROLE
    struct vif_info_tag *vif_entry = vif_info_tab + param->inst_nbr;

    memcpy(&vif_entry->bssid, &param->bssid, sizeof(param->bssid));

    if (vif_mgmt_used_cnt() == 1) 
    #endif
    {
        MAC_CORE->BSS_ID_LOW.value = *(uint32_t*) &(param->bssid.array);
        MAC_CORE->BSS_ID_HI.value = param->bssid.array[2];
    }

    ke_msg_send_basic(MM_SET_BSSID_CFM, src_id, dest_id);

    return KE_MSG_CONSUMED;
}

static int mm_set_edca_req_handler(const ke_msg_id_t msgid, const struct mm_set_edca_req *param, const ke_task_id_t dest_id, const ke_task_id_t src_id) {
    struct vif_info_tag *vif_entry = vif_info_tab + param->inst_nbr;

    vif_entry->txq_params[param->hw_queue] = param->ac_param;

    if (vif_entry->active) {
        switch (param->hw_queue) {
            case AC_BK:
                MAC_CORE->EDCA_AC_0.value = param->ac_param;
                break;
            case AC_BE:
                MAC_CORE->EDCA_AC_1.value = param->ac_param;
                break;
            case AC_VI:
                MAC_CORE->EDCA_AC_2.value = param->ac_param;
                break;
            default:
                MAC_CORE->EDCA_AC_3.value = param->ac_param;
                break;
        }

        mm_env_max_ampdu_duration_set();
    }

    #if NX_UAPSD
    if (vif_entry->type == VIF_STA) {
        ps_uapsd_set(vif_entry, param->hw_queue, param->uapsd);
    }
    #endif

    ke_msg_send_basic(MM_SET_EDCA_CFM, src_id, dest_id);

    return KE_MSG_CONSUMED;
}

static int mm_set_slottime_req_handler(const ke_msg_id_t msgid, const struct mm_set_slottime_req *param, const ke_task_id_t dest_id, const ke_task_id_t src_id) {
    uint16_t mac_core_clk = MAC_CORE->TIMINGS_1.macCoreClkFreq;

    PACK0(MAC_CORE->TIMINGS_2, timings2) {
        timings2.slotTimeInMACClk = mac_core_clk * param->slottime;
        timings2.slotTime = param->slottime;
    }
    
    ke_msg_send_basic(MM_SET_SLOTTIME_CFM, src_id, dest_id);

    return KE_MSG_CONSUMED;
}

static int mm_set_mode_req_handler(const ke_msg_id_t msgid, const struct mm_set_mode_req *param, const ke_task_id_t dest_id, const ke_task_id_t src_id) {
    MAC_CORE->MAC_CNTRL_1.abgnMode = param->abgnmode;

    ke_msg_send_basic(MM_SET_MODE_CFM, src_id, dest_id);

    return KE_MSG_CONSUMED;
}

static int mm_set_vif_state_req_handler(const ke_msg_id_t msgid, const struct mm_set_vif_state_req *param, const ke_task_id_t dest_id, const ke_task_id_t src_id) {
    struct vif_info_tag *vif_entry = vif_info_tab + param->inst_nbr;

    if (vif_entry->type == VIF_STA) {
        if (param->active) {
            struct sta_info_tag *p_sta_entry = &sta_info_tab[vif_entry->u.sta.ap_id];
            #if NX_POWERSAVE
            uint32_t drift;
            #endif
            #if NX_MULTI_ROLE
            uint32_t next_tbtt = ke_time() + p_sta_entry->bcn_int;
            mm_timer_set(&vif_entry->tbtt_timer, next_tbtt);
            #endif

            p_sta_entry->aid = param->aid;

            #if NX_POWERSAVE
            vif_entry->u.sta.listen_interval = 0;
            vif_entry->u.sta.dont_wait_bcmc = false;
            
            drift = ((uint32_t)(mm_env.lp_clk_accuracy + MM_AP_CLK_ACCURACY) *
                     (uint32_t)p_sta_entry->bcn_int) / 1000000;
            p_sta_entry->drift = (uint16_t)drift;

            #if NX_UAPSD
            vif_entry->u.sta.uapsd_last_rxtx = ke_time();
            #endif
            vif_entry->prevent_sleep |= PS_VIF_WAITING_BCN;
            #endif

            #if NX_CONNECTION_MONITOR
            // Reset the beacon loss count and keep-alive frame time
            vif_entry->u.sta.beacon_loss_cnt = 0;
            vif_entry->u.sta.mon_last_crc = 0;
            vif_entry->u.sta.mon_last_tx = ke_time();
            #endif

            #if (NX_CHNL_CTXT)
            chan_bcn_detect_start(vif_entry);
            #endif //(NX_CHNL_CTXT)
        } else {
            #if NX_MULTI_ROLE
            // Clear the TBTT timer
            mm_timer_clear(&vif_entry->tbtt_timer);
            #endif
        }
    }

    vif_entry->active = param->active;

    if (param->active) {
        MAC_CORE->EDCA_AC_0.value = vif_entry->txq_params[AC_BK];
        MAC_CORE->EDCA_AC_1.value = vif_entry->txq_params[AC_BE];
        MAC_CORE->EDCA_AC_2.value = vif_entry->txq_params[AC_VI];
        MAC_CORE->EDCA_AC_3.value = vif_entry->txq_params[AC_VO];

        mm_env_max_ampdu_duration_set();
    }

    ke_msg_send_basic(MM_SET_VIF_STATE_CFM, src_id, dest_id);

    return KE_MSG_CONSUMED;
}

static int mm_set_power_req_handler(const ke_msg_id_t msgid, const struct mm_set_power_req *param, const ke_task_id_t dest_id, const ke_task_id_t src_id) {
    struct mm_set_power_cfm *cfm;
    struct vif_info_tag *vif_entry = vif_info_tab + param->inst_nbr;

    cfm = KE_MSG_ALLOC(MM_SET_POWER_CFM, src_id, dest_id, mm_set_power_cfm);
    vif_entry->user_tx_power = param->power;
    cfm->power = vif_entry->tx_power;
    vif_entry->tx_power = VIF_UNDEF_POWER;
    tpc_update_vif_tx_power(vif_entry, &cfm->power, &cfm->radio_idx);

    ke_msg_send((void*) cfm);

    return KE_MSG_CONSUMED;
}

static int mm_add_if_req_handler(const ke_msg_id_t msgid, const struct mm_add_if_req *param, const ke_task_id_t dest_id, const ke_task_id_t src_id) {
    struct mm_add_if_cfm *cfm;

    cfm = KE_MSG_ALLOC(MM_ADD_IF_CFM, src_id, dest_id, mm_add_if_cfm);

    cfm->status = vif_mgmt_register(&param->addr, param->type, param->p2p, &cfm->inst_nbr);

    ke_msg_send((void*) cfm);
    
    return KE_MSG_CONSUMED;
}

static int mm_remove_if_req_handler(const ke_msg_id_t msgid, const struct mm_remove_if_req *param, const ke_task_id_t dest_id, const ke_task_id_t src_id) {
    if (param->inst_nbr < NX_VIRT_DEV_MAX)
        vif_mgmt_unregister(param->inst_nbr);

    if (co_list_is_empty(&vif_mgmt_env.used_list)) 
        hal_machw_monitor_mode(); // not hal_machw_enter_monitor_mode();

    ke_msg_send_basic(MM_REMOVE_IF_CFM, src_id, dest_id);

    return KE_MSG_CONSUMED;
}

static int mm_set_idle_req_handler(const ke_msg_id_t msgid, const struct mm_set_idle_req *param, const ke_task_id_t dest_id, const ke_task_id_t src_id) {
    if (ke_state_get(dest_id) == MM_HOST_BYPASSED) {
        return KE_MSG_SAVED;
    }

    mm_env.host_idle = param->hw_idle;

    if (param->hw_idle) {
        switch (ke_state_get(dest_id)) {
        case MM_IDLE:
            ASSERT_ERR(MAC_CORE->STATE_CNTRL.currentState == HW_IDLE);
            mm_env.prev_mm_state = MM_IDLE;
            mm_env.prev_hw_state = HW_IDLE;
            break;
        case MM_GOING_TO_IDLE:
            return KE_MSG_SAVED;

        default:
            hal_machw_idle_req();
            ke_state_set(dest_id, MM_GOING_TO_IDLE);

            return KE_MSG_SAVED;
        }
    } else {
        if (ke_state_get(dest_id) == MM_GOING_TO_IDLE) 
            return KE_MSG_SAVED;
        mm_active();
    }

    ke_msg_send_basic(MM_SET_IDLE_CFM, src_id, dest_id);

    return KE_MSG_CONSUMED;
}

static int mm_force_idle_req_handler(const ke_msg_id_t msgid, const struct mm_force_idle_req *param, const ke_task_id_t dest_id, const ke_task_id_t src_id) {
    switch (ke_state_get(dest_id)){
    case MM_IDLE:
        ASSERT_ERR(MAC_CORE->STATE_CNTRL.currentState == HW_IDLE);
        break;

    case MM_GOING_TO_IDLE:
        return KE_MSG_SAVED;

    default:
        hal_machw_idle_req();
        ke_state_set(dest_id, MM_GOING_TO_IDLE);

        return KE_MSG_SAVED;
    }

    ke_state_set(dest_id, MM_HOST_BYPASSED);

    param->cb();

    return KE_MSG_CONSUMED;
}

static int mm_sta_add_req_handler(const ke_msg_id_t msgid, const struct mm_sta_add_req *param, const ke_task_id_t dest_id, const ke_task_id_t src_id) {
    struct mm_sta_add_cfm *rsp = KE_MSG_ALLOC(MM_STA_ADD_CFM, src_id, dest_id, mm_sta_add_cfm);

    rsp->status = mm_sta_add(param, &rsp->sta_idx, &rsp->hw_sta_idx);

    ke_msg_send((void*) rsp);

    return KE_MSG_CONSUMED;
}

static int mm_sta_del_req_handler(const ke_msg_id_t msgid, const struct mm_sta_del_req *param, const ke_task_id_t dest_id, const ke_task_id_t src_id){
    mm_sta_del(param->sta_idx);
    ke_msg_send_basic(MM_STA_DEL_CFM, src_id, dest_id);
    return KE_MSG_CONSUMED;
}

static int mm_key_add_req_handler(const ke_msg_id_t msgid, const struct mm_key_add_req *param, const ke_task_id_t dest_id, const ke_task_id_t src_id) {
    uint8_t hw_key_idx;
    struct mm_key_add_cfm *cfm =
        KE_MSG_ALLOC(MM_KEY_ADD_CFM, src_id, dest_id, mm_key_add_cfm);

    #if NX_MFP
    ASSERT_ERR(param->key_idx < MAC_DEFAULT_MFP_KEY_COUNT);
    #else
    ASSERT_ERR(param->key_idx < MAC_DEFAULT_KEY_COUNT);
    #endif

    ASSERT_ERR(param->key.length <= MAC_SEC_KEY_LEN);

    ASSERT_ERR(param->cipher_suite <= MAC_RSNIE_CIPHER_AES_CMAC);

    hw_key_idx = mm_sec_machwkey_wr(param);

    cfm->hw_key_idx = hw_key_idx;
    cfm->status = CO_OK;

    ke_msg_send((void*) cfm);

    return KE_MSG_CONSUMED;
}

static int mm_key_del_req_handler(const ke_msg_id_t msgid, const struct mm_key_del_req *param, const ke_task_id_t dest_id, const ke_task_id_t src_id) {
    ASSERT_ERR(param->hw_key_idx <= MM_SEC_MAX_KEY_NBR);
    
    mm_sec_machwkey_del(param->hw_key_idx);
    ke_msg_send_basic(MM_KEY_DEL_CFM, src_id, dest_id);
    return KE_MSG_CONSUMED;
}

int mm_ba_add_req_handler(const ke_msg_id_t msgid, const struct mm_ba_add_req *param, const ke_task_id_t dest_id, const ke_task_id_t src_id) {
    uint8_t status = BA_AGMT_ESTABLISHED;


    if (param->type == BA_AGMT_TX) {
        #if (NX_AMPDU_TX)
        #else
        status = BA_AGMT_NOT_SUPPORTED;
        #endif
    } else {
        #if (NX_REORD)
        #endif
        MAC_CORE->MAC_ERR_REC_CNTRL.baPSBitmapReset = 1;
    }

    struct mm_ba_add_cfm *cfm = KE_MSG_ALLOC(MM_BA_ADD_CFM, src_id, dest_id, mm_ba_add_cfm);

    cfm->sta_idx = param->sta_idx;
    cfm->tid = param->tid;
    cfm->status = status;

    ke_msg_send((void*) cfm);

    return KE_MSG_CONSUMED;
}

int mm_chan_ctxt_update_req_handler(const ke_msg_id_t msgid, const struct mm_chan_ctxt_update_req *param, const ke_task_id_t dest_id, const ke_task_id_t src_id) {
    chan_ctxt_update(param);

    ke_msg_send_basic(MM_CHAN_CTXT_UPDATE_CFM, src_id, dest_id);

    return KE_MSG_CONSUMED;
}

static int mm_remain_on_channel_req_handler(const ke_msg_id_t msgid, const struct mm_remain_on_channel_req *param, const ke_task_id_t dest_id, const ke_task_id_t src_id) {
    uint8_t status = chan_roc_req(param, src_id);
    #if (TDLS_ENABLE)
    if ((src_id != TASK_MM) && (src_id != TASK_TDLS))
    #else
    if (src_id != TASK_MM)
    #endif
    {
        // Send back the confirmation
        struct mm_remain_on_channel_cfm *cfm = KE_MSG_ALLOC(MM_REMAIN_ON_CHANNEL_CFM, src_id, dest_id, mm_remain_on_channel_cfm);
        
        cfm->op_code = param->op_code;
        cfm->status = status;
        cfm->chan_ctxt_index = CHAN_ROC_CTXT_IDX;

        ke_msg_send((void*) cfm);
    }
    return KE_MSG_CONSUMED;
}

static int mm_bcn_change_req_handler(const ke_msg_id_t msgid, const struct mm_bcn_change_req *param, const ke_task_id_t dest_id, const ke_task_id_t src_id) {
    mm_bcn_change(param);
    return KE_MSG_CONSUMED;
}

static int mm_tim_update_req_handler(const ke_msg_id_t msgid, const struct mm_tim_update_req *param, const ke_task_id_t dest_id, const ke_task_id_t src_id) {
    mm_tim_update(param);
    return KE_MSG_CONSUMED;
}

static int mm_hw_config_handler(const ke_msg_id_t msgid, const void *param, const ke_task_id_t dest_id, const ke_task_id_t src_id) {
    int status = KE_MSG_SAVED;

    switch (ke_state_get(dest_id)) {
        case MM_IDLE:
            ASSERT_ERR(MAC_CORE->STATE_CNTRL.currentState == HW_IDLE);
            switch (msgid) {
                case MM_SET_CHANNEL_REQ: //
                    status = mm_set_channel_req_handler(msgid, param, dest_id, src_id);
                    break;
                case MM_SET_FILTER_REQ: //
                    status = mm_set_filter_req_handler(msgid, param, dest_id, src_id);
                    break;
                case MM_ADD_IF_REQ: //
                    status = mm_add_if_req_handler(msgid, param, dest_id, src_id);
                    break;
                case MM_REMOVE_IF_REQ: //
                    status = mm_remove_if_req_handler(msgid, param, dest_id, src_id);
                    break;
                case MM_SET_BASIC_RATES_REQ: // 
                    status = mm_set_basic_rates_req_handler(msgid, param, dest_id, src_id);
                    break;
                case MM_SET_BEACON_INT_REQ: //
                    status = mm_set_beacon_int_req_handler(msgid, param, dest_id, src_id);
                    break;
                case MM_SET_DTIM_REQ: //
                    status = mm_set_dtim_req_handler(msgid, param, dest_id, src_id);
                    break;
                case MM_SET_BSSID_REQ: //
                    status = mm_set_bssid_req_handler(msgid, param, dest_id, src_id);
                    break;
                case MM_SET_EDCA_REQ: //
                    status = mm_set_edca_req_handler(msgid, param, dest_id, src_id);
                    break;
                case MM_SET_SLOTTIME_REQ: //
                    status = mm_set_slottime_req_handler(msgid, param, dest_id, src_id);
                    break;
                case MM_SET_MODE_REQ: //
                    status = mm_set_mode_req_handler(msgid, param, dest_id, src_id);
                    break;
                case MM_SET_VIF_STATE_REQ: //
                    status = mm_set_vif_state_req_handler(msgid, param, dest_id, src_id);
                    break;
                case MM_BA_ADD_REQ: //
                    status = mm_ba_add_req_handler(msgid, param, dest_id, src_id);
                    break;
                #if (NX_CHNL_CTXT)
                case MM_CHAN_CTXT_UPDATE_REQ: //
                    status = mm_chan_ctxt_update_req_handler(msgid, param, dest_id, src_id);
                    break;
                #endif //(NX_CHNL_CTXT)
                default:
                    ASSERT_ERR(0);
                    break;
            }

            PACK0(MAC_CORE->STATE_CNTRL, state) {
                state.nextState = mm_env.prev_hw_state;
            }

            ke_state_set(dest_id, mm_env.prev_mm_state);
            break;

        case MM_GOING_TO_IDLE:
        case MM_HOST_BYPASSED:
            // MAC is currently going to IDLE, so simply save the message. It will be
            // rescheduled once the MAC has switched to IDLE.
            break;

        default:
            // Store the current HW and MM states for later restoring
            mm_env.prev_hw_state = MAC_CORE->STATE_CNTRL.currentState;
            mm_env.prev_mm_state = ke_state_get(dest_id);

            // Request to MAC HW to switch to IDLE state
            hal_machw_idle_req();

            // Adjust the MM state accordingly
            ke_state_set(dest_id, MM_GOING_TO_IDLE);
            break;
    }

    return (status);
}

#if NX_POWERSAVE
void ps_polling_frame(struct vif_info_tag *vif_entry);
static int mm_set_ps_mode_req_handler(const ke_msg_id_t msgid, const struct mm_set_ps_mode_req *param, const ke_task_id_t dest_id, const ke_task_id_t src_id) {
    struct vif_info_tag *vif_entry = vif_mgmt_first_used();

    if (param->new_state == PS_DENOISE) {
        // Unknown PS_MODE
        for (; vif_entry; vif_entry = vif_mgmt_next(vif_entry)) {
            if (vif_entry->type == VIF_STA) {
                if (vif_entry->active != false) {
                    ps_polling_frame(vif_entry);
                }
            }
        }
        ke_msg_send_basic(MM_SET_PS_MODE_CFM, ps_env.taskid, TASK_MM);
    } else {
        ps_set_mode(param->new_state, src_id);
    }

    return KE_MSG_CONSUMED;
}


static int mm_set_ps_options_req_handler(const ke_msg_id_t msgid, const struct mm_set_ps_options_req *param, const ke_task_id_t dest_id, const ke_task_id_t src_id) {
    struct vif_info_tag *vif_entry = vif_info_tab + param->vif_index;

    ASSERT_ERR(vif_entry->type == VIF_STA);

    vif_entry->u.sta.listen_interval = param->listen_interval;
    vif_entry->u.sta.dont_wait_bcmc = param->dont_listen_bc_mc;

    ke_msg_send_basic(MM_SET_PS_OPTIONS_CFM, src_id, dest_id);

    return KE_MSG_CONSUMED;
}
#endif

static int mm_cfg_rssi_req_handler(const ke_msg_id_t msgid, const struct mm_cfg_rssi_req *param, const ke_task_id_t dest_id, const ke_task_id_t src_id) {
    struct vif_info_tag *vif_entry = vif_info_tab + param->vif_index;

    ASSERT_ERR(vif_entry->type == VIF_STA);

    vif_entry->u.sta.rssi_thold = param->rssi_thold;
    vif_entry->u.sta.rssi_hyst = param->rssi_hyst;
    vif_entry->u.sta.rssi_status = 0;

    return KE_MSG_CONSUMED;
}

static int mm_monitor_enable_req_handler(const ke_msg_id_t msgid, const struct mm_monitor_req *param, const ke_task_id_t dest_id, const ke_task_id_t src_id) {
    struct mm_monitor_cfm *cfm = KE_MSG_ALLOC(MM_MONITOR_CFM, src_id, dest_id, mm_monitor_cfm);
    cfm->status = 1;
    cfm->data[0] = 0;
    cfm->data[1] = 0x11111111;
    cfm->data[2] = 0x22222222;
    cfm->data[3] = 0x33333333;
    cfm->data[4] = 0x44444444;
    cfm->data[5] = 0x55555555;
    cfm->data[6] = 0x66666666;
    cfm->data[7] = 0x77777777;
    cfm->enable = param->enable;
    struct phy_cfg_tag config;
    memset(&config, 0, sizeof(struct phy_cfg_tag));
    config.parameters[0] = 0;
    phy_init(&config);
    phy_set_channel('\0','\0',0x985,0x985,0,'\0');
    mm_active();
    cfm->status = 0;
    ke_msg_send((void*) cfm);

    return KE_MSG_CONSUMED;
}

static int mm_monitor_channel_req_handler(const ke_msg_id_t msgid, const struct mm_monitor_channel_req *param, const ke_task_id_t dest_id, const ke_task_id_t src_id) {
    struct mm_monitor_channel_cfm *cfm = KE_MSG_ALLOC(MM_MONITOR_CHANNEL_CFM, src_id, dest_id, mm_monitor_channel_cfm);
    cfm->status = 1;
    cfm->data[1] = 0x11111111;
    cfm->data[2] = 0x22222222;
    cfm->data[3] = 0x33333333;
    cfm->data[4] = 0x44444444;
    cfm->data[5] = 0x55555555;
    cfm->data[6] = 0x66666666;
    cfm->data[0] = 0;
    cfm->data[7] = 0x77777777;
    cfm->freq = param->freq;

    uint16_t center1_freq = (uint16_t)param->freq;
    uint16_t prim20_freq = (uint16_t)param->freq;
    if ((param->use_40Mhz != 0) && param->higher_band == 0) {
        if (param->higher_band == 0)
            center1_freq = prim20_freq - 10;
        else 
            center1_freq = prim20_freq + 10;
    }
    phy_set_channel(0, param->use_40Mhz != 0, prim20_freq, center1_freq, 0, 0);
    cfm->status = CO_OK;
    ke_msg_send((void*) cfm);
    
    return KE_MSG_CONSUMED;
}


// TODO: verify this table
const struct ke_msg_handler mm_default_state[33] = {

    // From UMAC
    {MM_START_REQ, (ke_msg_func_t)mm_start_req_handler},
    // From UMAC
    {MM_VERSION_REQ, (ke_msg_func_t)mm_version_req_handler},

    // From UMAC
    {MM_ADD_IF_REQ, (ke_msg_func_t)mm_hw_config_handler},
    // From UMAC
    {MM_REMOVE_IF_REQ, (ke_msg_func_t)mm_hw_config_handler},

    // From UMAC
    {MM_RESET_REQ, (ke_msg_func_t)mm_reset_req_handler},

    // From UMAC
    {MM_SET_CHANNEL_REQ, (ke_msg_func_t)mm_hw_config_handler},
    // From UMAC
    {MM_SET_BASIC_RATES_REQ, (ke_msg_func_t)mm_hw_config_handler},
    // From UMAC
    {MM_SET_BEACON_INT_REQ, (ke_msg_func_t)mm_hw_config_handler},
    // From UMAC
    {MM_SET_DTIM_REQ, (ke_msg_func_t)mm_hw_config_handler},
    // From UMAC
    {MM_SET_FILTER_REQ, (ke_msg_func_t)mm_hw_config_handler},
    // From UMAC
    {MM_SET_BSSID_REQ, (ke_msg_func_t)mm_hw_config_handler},
    // From UMAC
    {MM_SET_EDCA_REQ, (ke_msg_func_t)mm_hw_config_handler},
    // From UMAC
    {MM_SET_SLOTTIME_REQ, (ke_msg_func_t)mm_hw_config_handler},
    // From UMAC
    {MM_SET_MODE_REQ, (ke_msg_func_t)mm_hw_config_handler},
    // From UMAC
    {MM_SET_VIF_STATE_REQ, (ke_msg_func_t)mm_hw_config_handler},

    // From UMAC
    {MM_SET_IDLE_REQ, (ke_msg_func_t)mm_set_idle_req_handler},
    // From internal
    {MM_FORCE_IDLE_REQ, (ke_msg_func_t)mm_force_idle_req_handler},

    // From UMAC
    {MM_SET_POWER_REQ, (ke_msg_func_t)mm_set_power_req_handler},
    // From UMAC
    {MM_KEY_ADD_REQ, (ke_msg_func_t)mm_key_add_req_handler},
    // From UMAC
    {MM_KEY_DEL_REQ, (ke_msg_func_t)mm_key_del_req_handler},
    // From UMAC
    {MM_STA_ADD_REQ, (ke_msg_func_t)mm_sta_add_req_handler},
    // From UMAC
    {MM_STA_DEL_REQ, (ke_msg_func_t)mm_sta_del_req_handler},

    // From UMAC
    {MM_BA_ADD_REQ,  (ke_msg_func_t)mm_hw_config_handler},
    #if (NX_AMPDU_TX || NX_REORD)
    // From UMAC
    {MM_BA_DEL_REQ,  (ke_msg_func_t)mm_ba_del_req_handler},
    #endif

    #if (NX_CHNL_CTXT)
    // From UMAC
    {MM_CHAN_CTXT_UPDATE_REQ,  (ke_msg_func_t)mm_hw_config_handler},
    // From UMAC
    {MM_REMAIN_ON_CHANNEL_REQ,  (ke_msg_func_t)mm_remain_on_channel_req_handler},
    #endif //(NX_CHNL_CTXT)

    #if NX_BCN_AUTONOMOUS_TX
    // From UMAC
    {MM_BCN_CHANGE_REQ,  (ke_msg_func_t)mm_bcn_change_req_handler},
    // From UMAC
    {MM_TIM_UPDATE_REQ,  (ke_msg_func_t)mm_tim_update_req_handler},
    #endif

    #if NX_POWERSAVE
    // From UMAC
    {MM_DENOISE_REQ, (ke_msg_func_t)mm_set_ps_mode_req_handler},
    {MM_SET_PS_MODE_REQ, (ke_msg_func_t)mm_set_ps_mode_req_handler},
    // From UMAC
    {MM_SET_PS_OPTIONS_REQ, (ke_msg_func_t)mm_set_ps_options_req_handler},
    #endif

    #if (NX_P2P_GO)
    // From UMAC
    {MM_SET_P2P_NOA_REQ,   (ke_msg_func_t)mm_set_p2p_noa_req_handler},
    // From UMAC
    {MM_SET_P2P_OPPPS_REQ, (ke_msg_func_t)mm_set_p2p_oppps_req_handler},
    #endif //(NX_P2P_GO)

    #if (RW_BFMER_EN)
    // From UMAC
    {MM_BFMER_ENABLE_REQ, (ke_msg_func_t)mm_bfmer_enable_req_handler},
    #endif //(RW_BFMER_EN)
    #if (RW_MUMIMO_TX_EN)
    // From UMAC
    {MM_MU_GROUP_UPDATE_REQ, (ke_msg_func_t)mm_mu_group_update_req_handler},
    #endif //(RW_MUMIMO_TX_EN)

    {MM_CFG_RSSI_REQ, (ke_msg_func_t)mm_cfg_rssi_req_handler},

    {MM_MONITOR_REQ, (ke_msg_func_t)mm_monitor_enable_req_handler},
    {MM_MONITOR_CHANNEL_REQ, (ke_msg_func_t)mm_monitor_channel_req_handler},
};

const struct ke_state_handler mm_state_handler[MM_STATE_MAX] = {
    /// IDLE State message handlers.
    KE_STATE_HANDLER_NONE,   // [MM_IDLE] = 
    /// JOIN State message handlers.
    KE_STATE_HANDLER_NONE    // [MM_ACTIVE] = 
};

const struct ke_state_handler mm_default_handler = KE_STATE_HANDLER(mm_default_state);

ke_state_t mm_state[MM_IDX_MAX];
