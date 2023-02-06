#include <blconfig.h>

#include <lmac/mm/mm_bcn.h>
#include <lmac/mm/mm.h>
#include <lmac/vif/vif_mgmt.h>
#include <lmac/sta/sta_mgmt.h>
#include <lmac/tx/txl/txl_cntrl.h>
#include <lmac/tx/txl/txl_frame.h>
#include <lmac/tpc/tpc.h>

#include <umac/me/me_utils.h>

#include <hal/hal_desc.h>

#include <modules/common/co_list.h>
#include <modules/common/co_utils.h>

#include <modules/ke/ke_msg.h>
#include <modules/mac/mac_frame.h>
#include <modules/mac/mac_common.h>

#include <ipc/ipc_emb.h>

#include <phy/mac_core.h>

#include <utils.h>

struct mm_bcn_env_tag mm_bcn_env;

static void mm_tim_update_proceed(const struct mm_tim_update_req *param) {
    /// TODO: verify this function..
    struct vif_info_tag *vif_entry = vif_info_tab + param->inst_nbr;

    // No beacon transmission ongoing, proceed immediately to the update
    if (param->aid == 0) {
        if (param->tx_avail == 0)
            vif_entry->u.ap.bc_mc_status = param->tx_avail;
        else
            vif_entry->u.ap.bc_mc_status = 1;
    } else {
        struct tx_pbd *pbd_tim = &txl_tim_desc[0]; //&txl_tim_desc[param->inst_nbr][0];
        uint32_t tim_ie = CPU2HW(txl_tim_ie_pool + 0); // CPU2HW(&txl_tim_ie_pool[param->inst_nbr][0]);
        struct tx_pbd *pbd_bmp = &txl_tim_desc[1]; // &txl_tim_desc[param->inst_nbr][1];
        uint32_t tim_bmp = CPU2HW(txl_tim_bitmap_pool + 0); // CPU2HW(&txl_tim_bitmap_pool[param->inst_nbr][0]);

        // Compute the byte and bit numbers for this AID
        uint8_t n = param->aid / 8;
        uint8_t mask = CO_BIT(param->aid % 8);
        uint8_t val = co_read8p(tim_bmp + n);
        uint8_t pass = (val & mask);
        if ((param->tx_avail) && (pass == 0)) {
            co_write8p(tim_bmp + n, val | mask);

            vif_entry->u.ap.tim_bitmap_set++;

            // Check if Lower limit of the partial virtual bitmap needs to be updated
            if (n < vif_entry->u.ap.tim_n1) {
                // Lower limit shall be an even number
                vif_entry->u.ap.tim_n1 = n & 0xFE;
                // Update the start pointer in the TBD
                pbd_bmp->datastartptr = tim_bmp + vif_entry->u.ap.tim_n1;
            }

            // Check if Upper limit of the partial virtual bitmap needs to be updated
            if (n > vif_entry->u.ap.tim_n2) {
                // Update Upper limit
                vif_entry->u.ap.tim_n2 = n;

                // Update the end pointer in the TBD
                pbd_bmp->dataendptr = tim_bmp + vif_entry->u.ap.tim_n2;
            }

            // Update the TIM length
            vif_entry->u.ap.tim_len = vif_entry->u.ap.tim_n2 - vif_entry->u.ap.tim_n1 + 6;

            // Update the TIM PBD
            co_write8p(tim_ie + MAC_TIM_LEN_OFT, vif_entry->u.ap.tim_len - 2);
            co_write8p(tim_ie + MAC_TIM_BMPC_OFT, vif_entry->u.ap.tim_n1);

            pbd_tim->dataendptr = tim_ie + MAC_TIM_BMPC_OFT;
            pbd_tim->next = CPU2HW(pbd_bmp);
        } else if ((param->tx_avail != 0) && pass) {
            // Reset the bit in the bitmap
            co_write8p(tim_bmp + n, val & ~mask);

            // One more bit is reset
            vif_entry->u.ap.tim_bitmap_set--;

            // Check if the bitmap has still some bits set
            if (vif_entry->u.ap.tim_bitmap_set) {
                // Check if we need to update the Lower Limit
                if ((n & 0xFE) == vif_entry->u.ap.tim_n1) {
                    // Search for the new Lower Limit
                    while ((vif_entry->u.ap.tim_n1 != MAC_TIM_SIZE) &&
                           (co_read8p(tim_bmp + vif_entry->u.ap.tim_n1) == 0)) {
                        vif_entry->u.ap.tim_n1++;
                    }

                    // Lower Limit shall be an even number
                    vif_entry->u.ap.tim_n1 &= 0xFE;

                    // Update the start pointer in the TBD
                    pbd_bmp->datastartptr = tim_bmp + vif_entry->u.ap.tim_n1;
                }

                // Check if we need to update the Upper Limit
                if (n == vif_entry->u.ap.tim_n2) {
                    // Search for the new Upper Limit
                    while ((vif_entry->u.ap.tim_n2 != 0) &&
                           (co_read8p(tim_bmp + vif_entry->u.ap.tim_n2) == 0)) {
                        vif_entry->u.ap.tim_n2--;
                    }

                    // Update the end pointer in the TBD
                    pbd_bmp->dataendptr = tim_bmp + vif_entry->u.ap.tim_n2;
                }

                // Update the TIM length
                vif_entry->u.ap.tim_len = vif_entry->u.ap.tim_n2 - vif_entry->u.ap.tim_n1 + 6;

                // Update the TIM PBD
                co_write8p(tim_ie + MAC_TIM_LEN_OFT, vif_entry->u.ap.tim_len - 2);
                co_write8p(tim_ie + MAC_TIM_BMPC_OFT, vif_entry->u.ap.tim_n1);
            } else {
                // Update the TIM
                vif_entry->u.ap.tim_len = MAC_TIM_BMP_OFT + 1;
                vif_entry->u.ap.tim_n1 = (uint8_t)-1;
                vif_entry->u.ap.tim_n2 = 0;
                co_write8p(tim_ie + MAC_TIM_LEN_OFT, vif_entry->u.ap.tim_len - 2);
                co_write8p(tim_ie + MAC_TIM_BMPC_OFT, 0);
                // Update the TIM PBD
                pbd_tim->dataendptr = tim_ie + MAC_TIM_BMP_OFT;
                pbd_tim->next = CPU2HW(&txl_bcn_end_desc);//[param->inst_nbr]);
                // Update the end pointer in the TBD
                pbd_bmp->dataendptr = tim_bmp + vif_entry->u.ap.tim_n2;
            }
        }
    }

    ke_msg_send_basic(MM_TIM_UPDATE_CFM, ke_param2msg(param)->src_id, TASK_MM);
    ke_msg_free(ke_param2msg(param));
}

static void mm_bcn_desc_prep(struct vif_info_tag *vif_entry, const struct mm_bcn_change_req *param) {
    struct txl_frame_desc_tag *frame = &vif_entry->u.ap.bcn_desc;
    uint32_t vif_index = vif_entry->index;
    struct tx_hd *thd = &frame->txdesc.lmac.hw_desc->thd;
    struct tx_pbd *pbd_bcn = &txl_bcn_end_desc; //+ vif_index;
    uint32_t tim_bcn = thd->datastartptr + param->tim_oft;
    uint32_t tim_ie = CPU2HW(&txl_tim_ie_pool[0]); // CPU2HW(&txl_tim_ie_pool[vif_index][0]);
    struct tx_policy_tbl *pol;
    uint8_t band;
    uint32_t bcn_len = param->bcn_len - param->tim_len;

    vif_entry->u.ap.bcn_len = bcn_len;

    // Verify the protection and bandwidth status
    me_beacon_check(vif_index, param->bcn_len, thd->datastartptr);

    // Fill-up the TX header descriptor
    thd->dataendptr = thd->datastartptr + param->tim_oft - 1;
    pbd_bcn->datastartptr = thd->dataendptr + param->tim_len + 1;
    pbd_bcn->dataendptr = pbd_bcn->datastartptr + bcn_len - param->tim_oft - 1;
    pbd_bcn->bufctrlinfo = 0;

    // Get band
    #if NX_CHNL_CTXT
    band = vif_entry->chan_ctxt->channel.band;
    #else
    phy_get_channel(&info, PHY_PRIM);
    band = info.info1 & 0xFF;
    #endif

    {
        pol = (band == PHY_BAND_2G4) ? &txl_buffer_control_24G.policy_tbl : &txl_buffer_control_5G.policy_tbl;
    }

    // Set TX power
    pol->powercntrlinfo[0] = MAC_CORE->MAX_POWER_LEVEL.ofdmMaxPwrLevel << TX_PWR_LEVEL_PT_RCX_OFT;
    thd->policyentryaddr = CPU2HW(pol);
    thd->phyctrlinfo = 0;
    thd->macctrlinfo2 = 0;
    thd->first_pbd_ptr = CPU2HW(&txl_tim_desc[0]); // CPU2HW(&txl_tim_desc[vif_index][0]);

    // The beacon is now configured for this VIF
    vif_entry->u.ap.bcn_configured = true;
    co_write8p(tim_ie + MAC_TIM_PERIOD_OFT, co_read8p(tim_bcn + MAC_TIM_PERIOD_OFT));
}

static void mm_bcn_csa_init(struct vif_info_tag *vif_entry, const struct mm_bcn_change_req *param) {
    struct txl_frame_desc_tag *frame = &vif_entry->u.ap.bcn_desc;
    struct tx_hd *thd = &frame->txdesc.lmac.hw_desc->thd;
    
    // reset value
    vif_entry->u.ap.csa_count = 0;
    for (int i = 0; i < BCN_MAX_CSA_CPT; i++)
        vif_entry->u.ap.csa_oft[i] = param->csa_oft[i];

    if (param->csa_oft[0] > 0) 
        vif_entry->u.ap.csa_count = co_read8p(thd->datastartptr + param->csa_oft[0]) + 1;
}

static void mm_bcn_send_csa_counter_ind(uint8_t vif_index, uint8_t csa_count) {
    struct mm_csa_counter_ind *ind = KE_MSG_ALLOC(MM_CSA_COUNTER_IND, TASK_API, TASK_MM, mm_csa_counter_ind);
    ind->vif_index = vif_index;
    ind->csa_count = csa_count;

    ke_msg_send(ind);
}

static uint8_t mm_bcn_build(struct vif_info_tag *vif_entry) {
    struct txl_frame_desc_tag *frame = &vif_entry->u.ap.bcn_desc;
    struct tx_hd *thd = &frame->txdesc.lmac.hw_desc->thd;
    uint32_t tim_ie = CPU2HW(&txl_tim_ie_pool[0]); // CPU2HW(&txl_tim_ie_pool[vif_entry->index][0]);
    uint8_t bmpc = co_read8p(tim_ie + MAC_TIM_BMPC_OFT);

    thd->frmlen = vif_entry->u.ap.bcn_len + vif_entry->u.ap.tim_len + MAC_FCS_LEN;

    co_write16(HW2CPU(thd->datastartptr + MAC_HEAD_CTRL_OFT), txl_get_seq_ctrl());

    co_write8p(tim_ie + MAC_TIM_CNT_OFT, vif_entry->u.ap.dtim_count);

    // Update DTIM count for next beacon
    if (vif_entry->u.ap.dtim_count == 0) {
        // alios one only has (vif_entry->u.ap.bc_mc_status)
        if ((vif_entry->u.ap.bc_mc_status) || ipc_emb_tx_q_has_data(0))
            bmpc |= MAC_TIM_BCMC_PRESENT;
        else
            bmpc &= ~MAC_TIM_BCMC_PRESENT;
        vif_entry->u.ap.dtim_count = co_read8p(tim_ie + MAC_TIM_PERIOD_OFT);
    } else {
        // alios only does bmpc &= ~MAC_TIM_BCMC_PRESENT
         bmpc &= ~MAC_TIM_BCMC_PRESENT;
         if (vif_entry->u.ap.bc_mc_status & 2)
            bmpc |= MAC_TIM_BCMC_PRESENT;

    }
    // I've no idea, but the bl602 always write bmpc | MAC_TIM_BCMC_PRESENT here
    // TODO: verify me
    co_write8p(tim_ie + MAC_TIM_BMPC_OFT, bmpc | MAC_TIM_BCMC_PRESENT);
    vif_entry->u.ap.dtim_count--;

    // Update CSA counter in the beacon
    if (vif_entry->u.ap.csa_count) {
        vif_entry->u.ap.csa_count --;
        for (int i = 0; i < BCN_MAX_CSA_CPT; i++) {
            if (vif_entry->u.ap.csa_oft[i] == 0)
                break;
            co_write8p((uint32_t)HW2CPU(thd->datastartptr) + vif_entry->u.ap.csa_oft[i],
                       vif_entry->u.ap.csa_count);
        }
        if (vif_entry->u.ap.csa_count) 
            mm_bcn_send_csa_counter_ind(vif_entry->index, vif_entry->u.ap.csa_count);
        // keep csa_count to 1 until beacon is successfully transmistted
        if (vif_entry->u.ap.csa_count == 0)
            vif_entry->u.ap.csa_count = 1;
    }

    tpc_update_frame_tx_power(vif_entry, frame);

    return bmpc & MAC_TIM_BCMC_PRESENT;
}

static void mm_bcn_updated(void *env, int dma_queue) {
    struct vif_info_tag *vif_entry = (struct vif_info_tag *) env;
    struct ke_msg *msg = ke_param2msg(mm_bcn_env.param);

    ke_msg_send_basic(MM_BCN_CHANGE_CFM, msg->src_id, TASK_MM);

    mm_bcn_desc_prep(vif_entry, mm_bcn_env.param);

    mm_bcn_csa_init(vif_entry, mm_bcn_env.param);

    mm_bcn_env.update_ongoing = false;
    if (mm_bcn_env.tx_pending)
        mm_bcn_transmit();

    mm_bcn_env.param = NULL;
    ke_msg_free(msg);
}

static void mm_bcn_update(const struct mm_bcn_change_req *param) {
    // param->inst_nbr <= 2?
    //struct txl_buffer_tag *buffer = (struct txl_buffer_tag *)&txl_bcn_pool[param->inst_nbr];
    struct txl_buffer_tag *buffer = (struct txl_buffer_tag *)&txl_bcn_pool;
    memcpy(buffer->payload, param->bcn_buf, param->bcn_len);
    mm_bcn_env.update_pending = false;
    mm_bcn_env.update_ongoing = true;
    mm_bcn_updated(vif_info_tab + param->inst_nbr, 0);
}

static void mm_bcn_transmitted(void *env, uint32_t status) {
    ASSERT_ERR(mm_bcn_env.tx_cfm);

    struct vif_info_tag *p_vif_entry = (struct vif_info_tag *)env;
    if (--mm_bcn_env.tx_cfm == 0) {
        if (mm_bcn_env.update_pending != false) {
            mm_bcn_update(mm_bcn_env.param);
        }
    }

    while (! co_list_is_empty(&mm_bcn_env.tim_list)) {
        struct ke_msg *msg = (struct ke_msg*) co_list_pop_front(&mm_bcn_env.tim_list);
        mm_tim_update_proceed((struct mm_tim_update_req *)ke_msg2param(msg));
    }

    if (p_vif_entry->u.ap.csa_count == 1) {
        vif_mgmt_switch_channel(p_vif_entry);
    }
    
}

static void mm_bcn_init_tim(struct vif_info_tag *vif_entry) {
    uint8_t inst_nbr = vif_entry->index;
    struct tx_pbd *pbd = &txl_tim_desc[0]; // &txl_tim_desc[inst_nbr][0];
    uint32_t tim_ie = CPU2HW(&txl_tim_ie_pool[0]); // CPU2HW(&txl_tim_ie_pool[inst_nbr][0]);
    uint32_t tim_bmp = CPU2HW(&txl_tim_bitmap_pool[0]); // CPU2HW(&txl_tim_bitmap_pool[inst_nbr][0]);

    // Initialize the DTIM count
    vif_entry->u.ap.dtim_count = 0;
    vif_entry->u.ap.tim_len = MAC_TIM_BMP_OFT + 1;
    vif_entry->u.ap.tim_bitmap_set = 0;
    vif_entry->u.ap.tim_n1 = (uint8_t)-1;
    vif_entry->u.ap.tim_n2 = 0;
    vif_entry->u.ap.bc_mc_status = 0;

    // First part of the TIM
    pbd->upatterntx = TX_PAYLOAD_DESC_PATTERN;
    pbd->datastartptr = tim_ie + MAC_TIM_ID_OFT;
    pbd->dataendptr = tim_ie + MAC_TIM_BMP_OFT;
    pbd->next = CPU2HW(&txl_bcn_end_desc);///[inst_nbr]);
    pbd->bufctrlinfo = 0;
    co_write8p(tim_ie + MAC_TIM_ID_OFT, MAC_ELTID_TIM);
    co_write8p(tim_ie + MAC_TIM_LEN_OFT, 4);
    co_write8p(tim_ie + MAC_TIM_CNT_OFT, vif_entry->u.ap.dtim_count);
    co_write8p(tim_ie + MAC_TIM_PERIOD_OFT, 1); // Will be updated when receiving the beacon from host
    co_write8p(tim_ie + MAC_TIM_BMPC_OFT, 0);
    co_write8p(tim_ie + MAC_TIM_BMP_OFT, 0xff); // 0xff instead of 0

    // Reset the TIM virtual bitmap
    pbd = &txl_tim_desc[1]; // &txl_tim_desc[inst_nbr][1];
    pbd->upatterntx = TX_PAYLOAD_DESC_PATTERN;
    pbd->dataendptr = tim_bmp + vif_entry->u.ap.tim_n2;
    pbd->next = CPU2HW(&txl_bcn_end_desc);//[inst_nbr]);
    //memset(txl_tim_bitmap_pool[inst_nbr], 0, sizeof(txl_tim_bitmap_pool[inst_nbr]));
    memset(txl_tim_bitmap_pool, 0, sizeof(txl_tim_bitmap_pool));

    // Initialize post-TIM TX PBD
    pbd = &txl_bcn_end_desc;//[inst_nbr];
    pbd->upatterntx = TX_PAYLOAD_DESC_PATTERN;
    pbd->next = 0;
    pbd->bufctrlinfo = 0;
}

void mm_bcn_init(void) {
  memset(&mm_bcn_env, 0, sizeof(struct mm_bcn_env_tag));
  mm_bcn_env.dma.dma_desc = &bcn_dwnld_desc;
  mm_bcn_env.dma.cb = mm_bcn_updated;
  co_list_init(&mm_bcn_env.tim_list);
}

void mm_bcn_init_vif(struct vif_info_tag *vif_entry) {
    struct txl_frame_desc_tag *frame = &vif_entry->u.ap.bcn_desc;
    struct txl_buffer_tag *buffer = (struct txl_buffer_tag *)&txl_bcn_pool; //(struct txl_buffer_tag *)&txl_bcn_pool[vif_entry->index][0];
    struct tx_hw_desc *hwdesc = &txl_bcn_hwdesc_pool //&txl_bcn_hwdesc_pool[vif_entry->index];
    struct txl_buffer_control *bufctrl = &txl_bcn_buf_ctrl;//[vif_entry->index];
    struct tx_hd *thd;

    // Initialize the frame descriptor
    txl_frame_init_desc(frame, buffer, hwdesc, bufctrl);

    // Initialize the TIM buffer
    mm_bcn_init_tim(vif_entry);

    // Initialize some static fields of the THD
    thd = &frame->txdesc.lmac.hw_desc->thd;
    thd->phyctrlinfo = 0;
    thd->macctrlinfo2 = 0;
    thd->first_pbd_ptr = 0;

    // Initialize callback function
    frame->cfm.cfm_func = mm_bcn_transmitted;
    frame->cfm.env = vif_entry;
}

void mm_bcn_change(const struct mm_bcn_change_req *param) {
    if (mm_bcn_env.tx_cfm != 0) {
        mm_bcn_env.param = param;
        mm_bcn_env.update_pending = true;
        return;
    } else {
        mm_bcn_env.param = param;
        mm_bcn_update(param);
    }
}

void mm_tim_update(const struct mm_tim_update_req *param) {
    if (mm_bcn_env.tx_cfm != 0) {
        co_list_push_back(&mm_bcn_env.tim_list, &ke_param2msg(param)->hdr);
    }
    mm_tim_update_proceed(param);
}

void mm_bcn_transmit(void) {
    ASSERT_ERR(!mm_bcn_env.tx_cfm);
    if (mm_bcn_env.update_ongoing == false) {
        mm_bcn_env.tx_pending = false;
        for (struct vif_info_tag * vif = vif_mgmt_first_used(); vif; vif = vif_mgmt_next(vif)) {
            if ((vif->type == VIF_AP) && (vif->u.ap.bcn_configured) && (vif->u.ap.bcn_tbtt_cnt == vif->u.ap.bcn_tbtt_ratio)) {
                mm_bcn_build(vif);
                // bl602 put all the code inside chan_is_on_operational_channel(vif),
                // alios check the return value of mm_bcn_build and only does 
                // mm_traffic_req_ind(VIF_TO_BCMC_IDX(vif->index), 0, false);
                if (chan_is_on_operational_channel(vif)) {
                    mm_traffic_req_ind(VIF_TO_BCMC_IDX(vif->index), 0, false);
                    #if (NX_CHNL_CTXT || NX_P2P_GO)
                    // Set VIF and STA indexes
                    vif->u.ap.bcn_desc.txdesc.host.vif_idx = vif->index;
                    vif->u.ap.bcn_desc.txdesc.host.staid = 0xff;

                    if (txl_frame_push(&vif->u.ap.bcn_desc, AC_BCN)) {
                        mm_bcn_env.tx_cfm++;
                    }
                    #else
                    txl_frame_push(&vif->u.ap.bcn_desc, AC_BCN);
                    mm_bcn_env.tx_cfm++;
                    #endif //(NX_CHNL_CTXT || NX_P2P_GO)
                    struct sta_info_tag* p_sta_info = sta_info_tab + VIF_TO_BCMC_IDX(vif->index);
                    if ((p_sta_info->traffic_avail & PS_TRAFFIC_INT) != 0) {
                        p_sta_info->ps_service_period = PS_SERVICE_PERIOD | BCN_SERVICE_PERIOD;
                        sta_mgmt_send_postponed_frame(vif, p_sta_info, 0);
                        p_sta_info->ps_service_period = NO_SERVICE_PERIOD;
                    }
                }
            }
        }
    } else mm_bcn_env.tx_pending = true;
}
