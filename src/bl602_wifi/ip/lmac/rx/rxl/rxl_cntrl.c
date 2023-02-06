#include <blconfig.h>

#include <lmac/rx/rxl/rxl_cntrl.h>
#include <lmac/rx/rx_swdesc.h>
#include <lmac/rx/rxl/rxl_hwdesc.h>
#include <lmac/mm/mm.h>
#include <lmac/sta/sta_mgmt.h>
#include <lmac/vif/vif_mgmt.h>
#include <lmac/ps/ps.h>
#include <lmac/td/td.h>

#include <umac/rxu/rxu_cntrl.h>

#include <hal/hal_desc.h>

#include <modules/common/co_utils.h>
#include <modules/common/co_list.h>
#include <modules/mac/mac_frame.h>

#include <modules/ke/ke_event.h>

#include <phy_rf/phy_bl602.h>
#include <phy_rf/phy_adapt.h>

#include <phy/dma.h>
#include <phy/mac_pl.h>

#include <FreeRTOS.h>
#include <task.h>

#include <arch/rv32i/ll.h>

#include <assert.h>
#include <macro.h>

struct rxl_cntrl_env_tag rxl_cntrl_env;


void rxl_mpdu_transfer(struct rx_swdesc *swdesc) {
    struct rx_dmadesc *desc = swdesc->dma_hdrdesc;
    struct rx_pbd *pd = HW2CPU(desc->hd.first_pbd_ptr);
    phy_get_channel(&desc->phy_info, PHY_PRIM);
    desc->payl_offset = mac_payload_offset;
    swdesc->pbd_count = 0;
    
    for (struct rx_pbd * prev = NULL; pd; pd = HW2CPU(pd->next)) {
        if (pd->bufstatinfo & RX_PD_LASTBUF) {
            swdesc->spare_pbd = pd;
            swdesc->last_pbd = prev;
            // rx_hwdesc_env.first = HW2CPU(swdesc->spare_pbd->next);
            return ;
        }
        swdesc->pbd_count++;
        prev = pd;
    }
    ASSERT_REC(pd != NULL);
}

/// TODO: verify me
static bool rxl_rxcntrl_frame(struct rx_swdesc *swdesc) {
    struct rx_dmadesc *dma_hdrdesc = swdesc->dma_hdrdesc;
    if ((dma_hdrdesc->hd).frmlen == 0) {
        ASSERT_REC_VAL(dma_hdrdesc->hd.first_pbd_ptr == 0, true);
    } else {
        struct rx_payloaddesc *pd = HW2CPU((dma_hdrdesc->hd).first_pbd_ptr);
        ASSERT_REC_VAL(pd != NULL, true);
        return false; // co_list_push_back(&rxl_cntrl_env.ready,&list_hdr->list_hdr);
    }
    swdesc->spare_pbd = NULL;
    swdesc->last_pbd = NULL;
    rxl_hd_append(swdesc->dma_hdrdesc);
    return true;
}

#if (NX_RX_FRAME_HANDLING)
/**
 ****************************************************************************************
 * @brief This function processes the received frames that could carry useful information
 * for some LMAC features (connection monitoring, power-save mode, etc.)
 *
 * @param[in] swdesc SW header descriptor of the frame
 ****************************************************************************************
 */
static void rxl_pm_check(uint8_t *frame, uint8_t sta_idx, uint8_t vif_idx) {
    struct vif_info_tag *vif = vif_info_tab + vif_idx;
    struct sta_info_tag *sta = sta_info_tab + sta_idx;
    uint16_t frame_ctrl;

    frame_ctrl = co_read16(frame);

    if (vif->type != VIF_AP)
        return ;
    if (sta->ps_state == 1) {
        // 140C
        /// TODO: not sure the macro name.
        if ((frame_ctrl & (MAC_FCTRL_PWRMGT | MAC_FCTRL_MOREFRAG | MAC_FCTRL_DATA_T | MAC_FCTRL_CTRL_T)) == MAC_FCTRL_DATA_T) {
            mm_ps_change_ind(sta_idx, 0);
            apm_tx_int_ps_clear(vif, sta_idx);
            /*
              cVar9 = *(char *)&vif_info_tab[uVar12].u.field_0xee + -1;
              *(char *)&vif_info_tab[uVar12].u.field_0xee = cVar9;
            */
            vif->u.ap.ps_sta_cnt--;
            if (vif->u.ap.ps_sta_cnt == 0) {
                mm_ps_change_ind(VIF_TO_BCMC_IDX(vif_idx), PS_MODE_OFF);
                apm_tx_int_ps_clear(vif, vif_idx + 3);
            }
        } else {
            // & 0xfc == 0xa4
            /// TODO: not sure the macro name.
            if ((frame_ctrl & MAC_FCTRL_TYPESUBTYPE_MASK) == 0xa4) {
                if ((sta->traffic_avail & PS_TRAFFIC_INT) == 0) {
                    mm_traffic_req_ind(sta_idx, 1, 0);
                } else {
                    sta->ps_service_period |= PS_SERVICE_PERIOD;
                    sta_mgmt_send_postponed_frame(vif, sta, 1);
                    sta->ps_service_period &= ~PS_SERVICE_PERIOD;
                }
            }
            // 0x8c == 0x88
            if ((frame_ctrl & (MAC_FCTRL_BEACON_ST | MAC_FCTRL_TYPE_MASK)) == (MAC_FCTRL_BEACON_ST | MAC_FCTRL_DATA_T)) {
                // & 0x300 == 0x300
                uint8_t tid = 0;
                if ((frame_ctrl & MAC_FCTRL_TODS_FROMDS) == MAC_FCTRL_TODS_FROMDS) {
                    /// TODO: what is frame + 0xf?
                    tid = co_read8p(frame + 0xf) & 7;
                } else {
                    tid = co_read8p(frame + 0xc) & 7;
                }
                if (mac_ac2uapsd[mac_tid2ac[val]] & sta->info.uapsd_queues != 0) {
                    int period = sta->ps_service_period & UAPSD_SERVICE_PERIOD;
                    if ((sta->traffic_avail & UAPSD_TRAFFIC) == 0) {
                        if (period == 0) {
                            sta->ps_service_period = UAPSD_SERVICE_PERIOD_INT;
                            txl_frame_send_qosnull_frame(sta->staid, (tid & 7) | 0x10, 0, 0);
                            sta->ps_service_period = NO_SERVICE_PERIOD;
                            return ;
                        }
                    } else {
                        if (period == 0) {
                            uint8_t maxsplen = sta->info.max_sp_len;
                            if ((sta->traffic_avail & UAPSD_TRAFFIC_INT) != 0) {
                                sta->ps_service_period = UAPSD_SERVICE_PERIOD_INT;
                                int len = sta_mgmt_send_postponed_frame(vif, sta, maxsplen);
                                if (maxsplen != 0) {
                                    if (maxsplen - len < 1) {
                                        txl_frame_send_qosnull_frame(sta->staid, (tid & 7) | 0x10, 0, 0);
                                        sta->ps_service_period = NO_SERVICE_PERIOD;
                                        return ;
                                    }
                                }
                            }
                            if ((sta->traffic_avail & UAPSD_TRAFFIC_HOST) == 0) {
                                txl_frame_send_qosnull_frame(sta->staid, (tid & 7) | 0x10, 0, 0);
                                sta->ps_service_period = NO_SERVICE_PERIOD;
                                return ;
                            }
                            sta->ps_service_period = UAPSD_SERVICE_PERIOD_HOST;
                            mm_traffic_req_ind(sta_idx, maxsplen, 1);
                        }
                    }
                }
            }
        }
    } else {
        /// TODO: get macro
        if ((frame_ctrl & (0x1400)) == 0x1000) {
            mm_ps_change_ind(sta_idx, PS_MODE_ON);
            if (vif->u.ap.ps_sta_cnt == 0) {
                mm_ps_change_ind(VIF_TO_BCMC_IDX(vif_idx), PS_MODE_OFF);
            }
            vif->u.ap.ps_sta_cnt++;
        }
    }

}
#endif

static uint8_t rxl_frame_handle(struct rx_swdesc *swdesc, bool *dont_free) {
    struct rx_dmadesc *dma_hdrdesc = swdesc->dma_hdrdesc;
    struct rx_hd *rhd = &dma_hdrdesc->hd;
    bool upload = true;
    
    ASSERT_REC_VAL(rhd->first_pbd_ptr != 0, false);

    struct rx_pbd *pd = HW2CPU(rhd->first_pbd_ptr);

    uint32_t statinfo;
    statinfo = rhd->statinfo;
    if ((statinfo & (RX_HD_KEYIDV | RX_HD_SUCCESS)) != (RX_HD_KEYIDV | RX_HD_SUCCESS)) {
        return upload;
    }
    // ((statinfo & (RX_HD_KEYIDV | RX_HD_SUCCESS)) == (RX_HD_KEYIDV | RX_HD_SUCCESS))
    
    // Get the HW key index
    uint16_t key_idx_hw = (uint16_t)RX_HD_KEYID_GET(statinfo);
    ASSERT_REC_VAL(key_idx_hw >= MM_SEC_DEFAULT_KEY_COUNT, false);
    uint8_t sta_idx = ((key_idx_hw) - MM_SEC_DEFAULT_KEY_COUNT);
    if (!sta_mgmt_is_valid(sta_idx)) {
        rhd->statinfo = statinfo & ~RX_HD_KEYIDV;
        return upload;
    }
    // else
    struct sta_info_tag *p_sta_entry = sta_info_tab + sta_idx;
    struct vif_info_tag *vif_entry = vif_info_tab + p_sta_entry->inst_nbr;
    TickType_t now = xTaskGetTickCount();
    p_sta_entry->time_last_seen = now;
    uint8_t *frame = HW2CPU(pd->datastartptr);
    uint16_t framectrl = co_read16(frame);

    rxl_pm_check(frame, sta_idx, vif_entry->index);

    if (!vif_entry->active)
        return upload;
    //  (vif_info_tab[uVar4].active != false)

    #if (NX_TD)
    if (((framectrl & MAC_FCTRL_TYPE_MASK) == MAC_FCTRL_DATA_T) ||
        ((framectrl & MAC_FCTRL_TYPE_MASK) == MAC_FCTRL_MGT_T)) {
        td_pck_ind(vif_entry->index, sta_idx, true);
    }
    #endif //(NX_TD)

    if (vif_entry->type == VIF_STA) {
        if (MAC_FCTRL_IS(framectrl, BEACON)) {
            #if NX_POWERSAVE || NX_CONNECTION_MONITOR || NX_MULTI_ROLE
            uint32_t tim = 0;
            #endif
            pa_input(0, rhd);
            pa_adapt(0);
            #if NX_CONNECTION_MONITOR || NX_MULTI_ROLE
            // Let the MM handle the connection monitoring procedures
            upload = mm_check_beacon(rhd, vif_entry, p_sta_entry, &tim);
            #elif NX_POWERSAVE
            tim = mac_ie_find(pd->datastartptr + MAC_BEACON_VARIABLE_PART_OFT,
                              dma_hdrdesc->hd.frmlen - MAC_BEACON_VARIABLE_PART_OFT,
                              MAC_ELTID_TIM);
            #endif
            #if NX_POWERSAVE
            // Let the PS module check if it has something to do with this beacon
            ps_check_beacon(tim, dma_hdrdesc->hd.frmlen, vif_entry);
            #endif
            #if (NX_P2P || NX_CHNL_CTXT)
            vif_mgmt_bcn_recv(vif_entry);
            #endif
            #if (NX_CHNL_CTXT)
            if (vif_entry->chan_ctxt)
            {
                chan_tbtt_switch_update(vif_entry, vif_entry->tbtt_timer.time);
            }
            #endif //(NX_CHNL_CTXT)
        } else if (
                ((framectrl & MAC_FCTRL_TYPE_MASK) == MAC_FCTRL_DATA_T) ||
                ((framectrl & MAC_FCTRL_TYPE_MASK) == MAC_FCTRL_MGT_T)
            ) {
            #if NX_POWERSAVE
            ps_check_frame((uint8_t *)frame, statinfo, vif_entry);
            #endif
        }
    }
    return upload;
}

static void rxl_cntrl_init(void) {
    co_list_init(&rxl_cntrl_env.ready);
}

void rxl_init(void) {
    rxl_hwdesc_init(1);
    rx_swdesc_init();
    rxl_cntrl_init();
    rxu_cntrl_init();
}

void rxl_cntrl_evt(int dummy) {
    int tim = RX_FRAME_PREP_THD + 1;
    struct rx_swdesc *swdesc;
    uint8_t upload;
    while (true) {
        swdesc = (struct rx_swdesc *)co_list_pick(&rxl_cntrl_env.ready);
        ke_evt_clear(KE_EVT_RXLREADY_BIT);
        if (!swdesc)
            return ;
        tim--;
        if (!tim) {
            // 4 times
            ke_evt_set(KE_EVT_RXLREADY_BIT);
            break;
        }
        __disable_irq();
        co_list_pop_front(&rxl_cntrl_env.ready);
        __enable_irq();
        #if (NX_RX_FRAME_HANDLING)
            bool dont_free = false;
            upload = rxl_frame_handle(swdesc, &dont_free);
            if (!upload) {
                if (!dont_free) 
                    rxl_mpdu_free(swdesc);        
            } else
        #endif //(NX_RX_FRAME_HANDLING)
        {
            upload = rxu_cntrl_frame_handle(swdesc);
            if (!upload) { // bk_wlan_is_monitor_mode ?
                rxl_mpdu_free(swdesc);
            }
        }
    }
}

void rxl_cntrl_dump(void) {
    // empty function
    return ;
}

void rxl_timer_int_handler(void) {
    PACK0(MAC_PL->TX_RX_INT_ACK, int_ack) {
        int_ack.timerRxTrigger = 1;
        int_ack.counterRxTrigger = 1;
    }
    while (true) {
        if ((rxl_cntrl_env.first == NULL) ||
            (!RX_HD_DONE_GET(rxl_cntrl_env.first->hd.statinfo)))
            break;
        struct rx_dmadesc *dma_hdrdesc = rxl_cntrl_env.first;
        struct rx_swdesc *swdesc = (dma_hdrdesc->hd).swdesc;
        rxl_cntrl_env.first = (struct rx_dmadesc*)HW2CPU(dma_hdrdesc->hd.next);
        swdesc->pd = (struct rx_payloaddesc *)dma_hdrdesc->hd.first_pbd_ptr;
        // check if it is a control frame and handle it if necessary
        if (!rxl_rxcntrl_frame(swdesc)) {
            co_list_push_back(&rxl_cntrl_env.ready, &swdesc->list_hdr);
        }
    }
    if (!co_list_is_empty(&rxl_cntrl_env.ready))
        ke_evt_set(KE_EVT_RXLREADY_BIT);
}

void rxl_timeout_int_handler(void) {
    MAC_PL->TIMERS_INT_UN_MASK.maskabsTimers6 = 0;
}

void rxl_dma_int_handler(void) {
    // forever ?
    for (;;);
}

void rxl_dma_evt(int dummy) {
    ke_evt_clear(KE_EVT_RX_DMA_BIT);
    DMA->int_ack.value = 0x20;
}

void rxl_frame_release(struct rx_swdesc *swdesc) {
    // release the payload descriptors associated with this SW descriptor
    rxl_pd_append(HW2CPU(swdesc->dma_hdrdesc->hd.first_pbd_ptr), swdesc->last_pbd, swdesc->spare_pbd);
    // release the HW DMA descriptors
    rxl_hd_append(swdesc->dma_hdrdesc);
}

void rxl_mpdu_free(struct rx_swdesc *swdesc) {
    struct rx_pbd *pd = (struct rx_pbd *)(swdesc->dma_hdrdesc->hd).first_pbd_ptr;
    vTaskEnterCritical();
    swdesc->use_in_tcpip = false;
    swdesc->dma_hdrdesc->use_in_tcpip = false;
    for (struct rx_pbd * prev = NULL; pd; pd = HW2CPU(pd->next)) {
        if (pd->bufstatinfo & RX_PD_LASTBUF) {
            swdesc->spare_pbd = pd;
            swdesc->last_pbd = prev;
            rxl_frame_release(swdesc);
            // rx_hwdesc_env.first = HW2CPU(swdesc->spare_pbd->next);
            vTaskExitCritical();
            return ;
        }
        swdesc->pbd_count++;
        prev = pd;
    }
    ASSERT_REC(pd != NULL);
    vTaskExitCritical();
}

void bl60x_firmwre_mpdu_free(void *swdesc_ptr) {
    vTaskEnterCritical();
    struct rx_swdesc* swdesc = swdesc_ptr;
    rxl_cntrl_env.packet_stack_cnt -= swdesc->pbd_count;
    vTaskExitCritical();
    rxl_mpdu_free(swdesc);
}

void rxl_current_desc_get(struct rx_hd **rhd, struct rx_pbd **rbd) {
    *rhd = &(rxl_cntrl_env.free)->hd;
    *rbd = rx_hwdesc_env.free;
}

void rxl_reset(void) {
    rxl_hwdesc_init(0);
    co_list_init(&rxl_cntrl_env.ready);
    co_list_init(&rxu_cntrl_env.rxdesc_ready);
}
