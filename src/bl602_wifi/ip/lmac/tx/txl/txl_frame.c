#include <lmac/tx/txl/txl_frame.h>

#include <lmac/tx/txl/txl_cntrl.h>
#include <lmac/tx/txl/txl_buffer.h>
#include <lmac/tx/txl/txl_frame.h>
#include <lmac/sta/sta_mgmt.h>

#include <lmac/tpc/tpc.h>

#include <umac/me/me_mic.h>

#include <phy_rf/phy_bl602.h>
#include <phy_rf/phy.h>

#include <modules/common/co_utils.h>
#include <modules/common/co_status.h>
#include <modules/ke/ke_event.h>

#include <hal/hal_desc.h>

#include <utils.h>

#include <FreeRTOS.h>

#include <arch/rv32i/ll.h>

#include <blconfig.h>

static struct txl_frame_desc_tag txl_frame_desc[NX_TXFRAME_CNT];
struct txl_frame_env_tag txl_frame_env;

void txl_frame_init_desc(struct txl_frame_desc_tag *frame, struct txl_buffer_tag *buffer, struct tx_hw_desc *hwdesc, struct txl_buffer_control *bufctrl) {
    memset(frame, 0, sizeof(struct txl_frame_desc_tag));
    (hwdesc->thd).upatterntx = TX_HEADER_DESC_PATTERN;
    (hwdesc->thd).datastartptr = CPU2HW(buffer->payload);
    (hwdesc->thd).frmlifetime = 0;
    (hwdesc->thd).optlen[0] = 0;
    (hwdesc->thd).optlen[1] = 0;
    (hwdesc->thd).optlen[2] = 0;
    bufctrl->policy_tbl.upatterntx = POLICY_TABLE_PATTERN;
    (frame->txdesc).lmac.hw_desc = hwdesc;
    (frame->txdesc).lmac.buffer = buffer;
    (frame->txdesc).umac.buf_control = bufctrl;
    frame->type = TX_EXT;
}

void txl_frame_init(bool reset) {
    co_list_init(&txl_frame_env.desc_free);
    co_list_init(&txl_frame_env.desc_used);

	for (int i = 0; i < NX_TXFRAME_CNT; i ++) {
        struct txl_frame_desc_tag* desc = txl_frame_desc + i;
        struct tx_hw_desc_s* hwdesc = txl_frame_hwdesc_pool + i;
        struct txl_buffer_control *bufctrl = txl_frame_buf_ctrl + i;
        struct txl_buffer_tag *buffer = (struct txl_buffer_tag *)(txl_frame_pool + i);
        if ((reset == 0) || (desc->postponed == false)) {
            memset(desc, 0, sizeof(struct txl_frame_desc_tag)); // 0xd8 == 216
            hwdesc->thd.upatterntx = TX_HEADER_DESC_PATTERN;
            
            (hwdesc->thd).frmlifetime = 0;
            (hwdesc->thd).optlen[0] = 0;
            (hwdesc->thd).optlen[1] = 0;
            (hwdesc->thd).optlen[2] = 0;
            bufctrl->policy_tbl.upatterntx = POLICY_TABLE_PATTERN;

            (desc->txdesc).lmac.buffer = buffer;
            hwdesc->cfm_ptr = txl_frame_hwdesc_cfms + i;

            hwdesc->thd.datastartptr = CPU2HW(&(buffer->payload)); // 0x14c
            (desc->txdesc).umac.buf_control = bufctrl;
            (desc->txdesc).lmac.hw_desc = hwdesc;
            desc->type = TX_INT;
            
            co_list_push_back(&txl_frame_env.desc_free, &desc->txdesc.list_hdr);
        }
    }
    txl_buffer_control_24G.policy_tbl.upatterntx = POLICY_TABLE_PATTERN;
    txl_buffer_control_24G.policy_tbl.mac_control_info = 0;
    txl_buffer_control_24G.policy_tbl.phy_control_info = 0;
    txl_buffer_control_24G.policy_tbl.phycntrlinfo1 = phy_get_ntx() << NX_TX_PT_OFT;
    txl_buffer_control_24G.policy_tbl.phycntrlinfo2 = TX_NTX_2_ANTENNA_SET(phy_get_ntx());
    
    txl_buffer_control_24G.policy_tbl.maccntrlinfo1 = 0;
    txl_buffer_control_24G.policy_tbl.maccntrlinfo2 = 0xffff0704;
    txl_buffer_control_24G.policy_tbl.ratecntrlinfo[0] = (HW_RATE_1MBPS << MCS_INDEX_TX_RCX_OFT) | PRE_TYPE_TX_RCX_MASK; // 0x400;
    txl_buffer_control_24G.policy_tbl.ratecntrlinfo[1] = 0;
    txl_buffer_control_24G.policy_tbl.ratecntrlinfo[2] = 0;
    txl_buffer_control_24G.policy_tbl.ratecntrlinfo[3] = 0;

    txl_buffer_control_24G.policy_tbl.powercntrlinfo[1] = 0;
    txl_buffer_control_24G.policy_tbl.powercntrlinfo[2] = 0;
    txl_buffer_control_24G.policy_tbl.powercntrlinfo[3] = 0;
}


static uint32_t tx_count;
static uint32_t rx_count;
extern uint8_t mac_hw_reset;

struct txl_frame_desc_tag *txl_frame_get(int type, int len) {
	struct txl_frame_desc_tag * desc = co_list_pop_front(&txl_frame_env.desc_free);
    if (!desc) {
        tx_count++;
        if (tx_count == 10) {
            tx_count = 0;
            rx_count = 2;
            int cnt1 = co_list_cnt(&txl_frame_env.desc_free);
            int cnt2 = co_list_cnt(&txl_frame_env.desc_done);
            if ((cnt1 | cnt2) == 0) {
                txl_cntrl_clear_all_ac();
            }
        }
        return 0;
    } else {
        if (rx_count == 1) {
            rx_count = 0;
            mac_hw_reset = 1;
            
            vTaskEnterCritical();
            assert_rec("MAC HW RESET include tx and rx", "tx rx", __LINE__);
            vTaskDelay(200);
            vTaskExitCritical();
            return 0;
        } else {
            if (rx_count != 0) {
                rx_count = rx_count - 1;
            }
            struct tx_hw_desc *hwdesc = (desc->txdesc).lmac.hw_desc;
            struct txl_buffer_tag *buffer = (desc->txdesc).lmac.buffer;
            (hwdesc->thd).frmlen = len + MAC_FCS_LEN;
            (hwdesc->thd).dataendptr = (hwdesc->thd).datastartptr + len + -1;
            if (type == TX_DEFAULT_24G) {
                memcpy(&buffer->buffer_control.policy_tbl, &txl_buffer_control_24G.policy_tbl, sizeof(struct tx_policy_tbl)); // len = 0x34
            }
            /* 0x114 */
            (buffer->buffer_control).policy_tbl.powercntrlinfo[0] = tpc_get_vif_tx_power_vs_rate((buffer->buffer_control).policy_tbl.ratecntrlinfo[0]); // 0x104(buffer)
            (hwdesc->thd).policyentryaddr = CPU2HW(&buffer->buffer_control.policy_tbl);
            (hwdesc->thd).phyctrlinfo = 0;
            (hwdesc->thd).macctrlinfo2 = 0;
            (hwdesc->thd).first_pbd_ptr = 0; // 0x10 = 16 - 4 = 12
            (ptVar2->cfm).cfm_func = (cfm_func_ptr *)0x0;
            (ptVar2->cfm).env = (void *)0x0;
            return desc;
        }
    }
    return 0;
}

bool txl_frame_push(struct txl_frame_desc_tag *frame, uint8_t ac) {
    struct tx_hw_desc* hwdesc = frame->txdesc.lmac.hw_desc;
    struct tx_hd* thd = &(hwdesc->thd);
	ASSERT_ERR((thd->datastartptr & 0x01) == 0);

    thd->nextfrmexseq_ptr = 0;
    thd->nextmpdudesc_ptr = 0;
    thd->macctrlinfo2 = thd->macctrlinfo2 & ~(WHICHDESC_MSK | UNDER_BA_SETUP_BIT);
    
    struct mac_hdr *hdr = HW2CPU(thd->datastartptr);

    if (MAC_ADDR_GROUP(&hdr->addr1)) {
        thd->macctrlinfo1 = EXPECTED_ACK_NO_ACK;
    } else {
        thd->macctrlinfo1 = EXPECTED_ACK_NORMAL_ACK;
    }
    thd->statinfo = 0;
    return txl_cntrl_push_int(&frame->txdesc, ac);
}

bool txl_frame_push_force(struct txl_frame_desc_tag *frame, uint8_t ac) {
    /// TODO: I can't see any difference between the two functions
    struct tx_hw_desc* hwdesc = frame->txdesc.lmac.hw_desc;
    struct tx_hd* thd = &(hwdesc->thd);
	ASSERT_ERR((thd->datastartptr & 0x01) == 0);

    thd->nextfrmexseq_ptr = 0;
    thd->nextmpdudesc_ptr = 0;
    thd->macctrlinfo2 = thd->macctrlinfo2 & ~(WHICHDESC_MSK | UNDER_BA_SETUP_BIT);
    
    struct mac_hdr *hdr = HW2CPU(thd->datastartptr);

    if (MAC_ADDR_GROUP(&hdr->addr1)) {
        thd->macctrlinfo1 = EXPECTED_ACK_NO_ACK;
    } else {
        thd->macctrlinfo1 = EXPECTED_ACK_NORMAL_ACK;
    }
    thd->statinfo = 0;
    return txl_cntrl_push_int(&frame->txdesc, ac);
}

void txl_frame_cfm(struct txdesc *txdesc) {
    co_list_push_back(&txl_frame_env.desc_done, &txdesc->list_hdr);
    ke_evt_set(KE_EVT_TXFRAME_CFM_BIT);
}

void txl_frame_release(struct txdesc *txdesc, bool postponed) {
	struct txl_frame_desc_tag *frame = (struct txl_frame_desc_tag *)txdesc;
    if (frame->type == TX_INT) {
        co_list_push_back(&txl_frame_env.desc_free, &(txdesc->list_hdr));
    } else {
        if (postponed && frame->cfm) {
            frame->cfm.cfm_func(frame->cfm.env, 0);
        }
    }
}

void txl_frame_evt(int dummy) {
	ke_evt_clear(KE_EVT_TXFRAME_CFM_BIT);

    while (true) {
        __disable_irq();
        struct txl_frame_desc_tag *frame = (struct txl_frame_desc_tag *)co_list_pop_front(&txl_frame_env.desc_done);
        __enable_irq();

        if (frame == NULL)
            break;

        txl_cntrl_env.pck_cnt--;

        if (frame->cfm.cfm_func != 0) {
            frame->cfm.cfm_func(frame->cfm.env, (((frame->txdesc).lmac.hw_desc)->thd).statinfo);
            if (frame->keep_desc) {
                frame->keep_desc = false;
                continue;
            }
        }

        if (frame->type == TX_INT) {
            co_list_push_back(&txl_frame_env.desc_free, &frame->txdesc.list_hdr);
        }

    }
}

uint8_t txl_frame_send_null_frame(uint8_t sta_idx, cfm_func_ptr cfm, void *env) {
	struct sta_info_tag* sta = sta_info_tab + sta_idx;
    struct phy_channel_info phy_info;
    phy_get_channel(&phy_info, 0);
    uint8_t band = phy_info.info1 & 0xFF;
    // Chose the right rate according to the band
    int txtype = (band == PHY_BAND_2G4)?TX_DEFAULT_24G:TX_DEFAULT_5G;
    struct txl_frame_desc_tag *frame = txl_frame_get(txtype, MAC_NULL_FRAME_SIZE); // 0x18
    
    if (frame) {
        struct vif_info_tag* vif = vif_info_tab + sta->inst_nbr;
        tpc_update_frame_tx_power(vif, frame);
        struct txl_buffer_tag *buffer = (frame->txdesc).lmac.buffer;
        struct mac_hdr *payload = &(buffer->payload);
        payload->fctl = MAC_FCTRL_NULL_FUNCTION | MAC_FCTRL_TODS;
        payload->durid = 0;
        memcpy(payload->addr1, sta->mac_addr, sizeof(struct mac_addr));
        memcpy(payload->addr2, vif->mac_addr, sizeof(struct mac_addr));
        memcpy(payload->addr3, sta->mac_addr, sizeof(struct mac_addr));
        payload->seq = txl_get_seq_ctrl();
        (frame->cfm).cfm_func = cfm;
        (frame->cfm).env = env;
        (frame->txdesc).host.staid = sta_idx;
        (frame->txdesc).host.vif_idx = sta->inst_nbr;
        txl_frame_push(frame, AC_VO);

        return CO_OK;
    }

    return CO_FAIL;
}

uint8_t txl_frame_send_qosnull_frame(uint8_t sta_idx, uint16_t qos, cfm_func_ptr cfm, void *env) {
	struct sta_info_tag* sta = sta_info_tab + sta_idx;
    struct phy_channel_info phy_info;
    phy_get_channel(&phy_info, 0);
    uint8_t band = phy_info.info1 & 0xFF;
    // Chose the right rate according to the band
    int txtype = (band == PHY_BAND_2G4)?TX_DEFAULT_24G:TX_DEFAULT_5G;
    struct txl_frame_desc_tag *frame = txl_frame_get(txtype, MAC_QOS_NULL_FRAME_SIZE); // 0x1a
    
    if (frame) {
        struct vif_info_tag* vif = vif_info_tab + sta->inst_nbr;
        tpc_update_frame_tx_power(vif, frame);
        struct txl_buffer_tag *buffer = (frame->txdesc).lmac.buffer;
        struct mac_hdr_qos *payload = &(buffer->payload);
        
        payload->fctl = MAC_FCTRL_QOS_NULL;
        payload->durid = 0;
        memcpy(payload->addr1, sta->mac_addr, sizeof(struct mac_addr));
        memcpy(payload->addr2, vif->mac_addr, sizeof(struct mac_addr));
        if (vif->type == VIF_STA) {
            payload->fctl |= MAC_FCTRL_TODS;
            memcpy(payload->addr3, sta->mac_addr, sizeof(struct mac_addr));
        } else {
            payload->fctl |= MAC_FCTRL_FROMDS;
            memcpy(payload->addr3, vif->mac_addr, sizeof(struct mac_addr));
        }
        
        payload->seq = 0;
        payload->qos = qos;

        frame->cfm.cfm_func = cfm;
        frame->cfm.env = env;

        frame->txdesc.host.vif_idx = sta->inst_nbr;
        frame->txdesc.host.staid   = sta_idx;
        txl_frame_push(frame, AC_VO);

        return CO_OK;
    }
    return CO_FAIL;
}

// inlined part of txl_frame_send_eapol_frame
uint8_t txl_frame_sechdr_len_compute(struct txdesc *txdesc) {
    int sta_idx = txdesc->host.staid;
    struct sta_info_tag* sta = sta_info_tab + sta_idx;
    struct vif_info_tag* vif = vif_info_tab + txdesc->host.vif_idx;
    uint8_t iVar9 = 0;
    uint8_t len_sec_hdr = 0;
    if ((vif->type == VIF_STA) && (sta->ctrl_port_state == PORT_CLOSING)) {
        struct key_info_tag * keyinfo = *(sta->sta_sec_info.cur_key);
        if ((keyinfo->cipher == MAC_RSNIE_CIPHER_TKIP) || (keyinfo->cipher == MAC_RSNIE_CIPHER_WEP104)) {
            // == 1
            keyinfo->tx_pn++;
            memcpy((txdesc)->host.pn, keyinfo->tx_pn, 6); // why here is 6???
            iVar9 = 12;
            len_sec_hdr = 8;
        } else {
            if (keyinfo->cipher == MAC_RSNIE_CIPHER_WEP40) {
                keyinfo->tx_pn++;
                memcpy((txdesc)->host.pn,&keyinfo->tx_pn, 4);
                iVar9 = 4;
                len_sec_hdr = 4;
            } else {
                if (keyinfo->cipher == MAC_RSNIE_CIPHER_CCMP) {
                    keyinfo->tx_pn++;                                           
                    memcpy((txdesc)->host.pn,&keyinfo->tx_pn, 6);
                    iVar9 = 8;
                    len_sec_hdr = 8;
                } else {
                    iVar9 = 0;
                    len_sec_hdr = 0;
                }
            }
        }
    }
    /// TODO: I don't understand this length calc for ivar9..
    return sec_hdr + iVar9;
}

/*
uint8_t txl_frame_sec_hdr_append(struct txdesc *txdesc, uint32_t buf) {
	__builtin_trap();
}

void txl_frame_tkip_mic_append(struct txdesc *txdesc, uint8_t *buf, uint32_t len) {
	__builtin_trap();
}
*/


/// TODO: this function need extra verify
uint8_t txl_frame_send_eapol_frame(uint8_t sta_idx, cfm_func_ptr cfm, void *cfm_env, uint8_t *pBuf, uint32_t pBuf_len) {
	struct sta_info_tag* sta = sta_info_tab + sta_idx;
    struct phy_channel_info phy_info;
    phy_get_channel(&phy_info, 0);
    uint8_t band = phy_info.info1 & 0xFF;
    // Chose the right rate according to the band
    int txtype = (band == PHY_BAND_2G4)?TX_DEFAULT_24G:TX_DEFAULT_5G;
    struct txl_frame_desc_tag *frame = txl_frame_get(txtype, NX_TXFRAME_LEN); // 0x100

    if (!frame) {
        /// TODO: WTF?? the assembly says return 0 here???
        return CO_OK; 
    }
    
    struct vif_info_tag* vif = vif_info_tab + sta->inst_nbr;
    (frame->txdesc).host.vif_idx = sta->inst_nbr;
    (frame->txdesc).host.staid = sta_idx;
    (frame->txdesc).host.tid = 0;
    
    uint16_t sn = sta->seq_nbr[0];
    sta->seq_nbr[0] = (sn + 1) & 0xfff;
    (frame->txdesc).host.ethertype = 0x8e88;
    (frame->txdesc).host.sn = sn;
    memcpy(&((frame->txdesc).host.eth_dest_addr.array), &(sta->mac_addr.array), sizeof(struct mac_addr));
    memcpy(&((frame->txdesc).host.eth_src_addr.array), &(vif->mac_addr.array), sizeof(struct mac_addr));
    
    tpc_update_frame_tx_power(vif,frame);
    struct txl_buffer_tag *buffer = (frame->txdesc).lmac.buffer;
    //struct txl_buffer_tag *payload = 
    struct eapol_payload* eapol_payload = NULL;
    uint32_t length = pBuf_len;
    if (!(vif->bss_info.valid_flags & 1)) {
        //MAC_FCTRL_DATA_T
        struct mac_hdr* data = &(buffer->payload);
        //len += 0x20 = buffer
        //struct mac_hdr
        //}
        data->fctl = MAC_FCTRL_DATA_T; // 8
        data->seq = txl_get_seq_ctrl();
        eapol_payload = (struct eapol_payload*)(data + 1);
        length += sizeof(struct mac_hdr) + sizeof(struct eapol_payload);
    } else {
        //MAC_FCTRL_QOS_DATA 0x88?
        struct mac_hdr_qos* data = &(buffer->payload);
        data->fctl = MAC_FCTRL_QOS_DATA; // 0x88
        data->seq = (frame->txdesc).host.sn << MAC_SEQCTRL_NUM_OFT;
        data->qos = (frame->txdesc).host.tid;
        //len += 0x22
        eapol_payload = (struct eapol_payload*)(data + 1);
        length += sizeof(struct mac_hdr_qos) + sizeof(struct eapol_payload);
    }
    
    ASSERT_ERR(length <= NX_TXFRAME_LEN);

    // -332 = data
    struct mac_hdr* payload = &(buffer->payload);
    payload->durid = 0;
    // 0z152
    memcpy(payload->addr1, sta->mac_addr, sizeof(struct mac_addr));
    // 0x156
    memcpy(payload->addr2, vif->mac_addr, sizeof(struct mac_addr));
    
    // 0x15c
    if (vif->type == VIF_STA) {
        // 0x0 = sta
        payload->fctl |= MAC_FCTRL_TODS;
        memcpy(payload->addr3, sta->mac_addr, sizeof(struct mac_addr));
    } else {
        // 0x2 = vif
        payload->fctl |= MAC_FCTRL_FROMDS;
        memcpy(payload->addr3, vif->mac_addr, sizeof(struct mac_addr));
    }
    
    // buffer = {
    // 2 bytes of 0xaaaa 
    // 2 bytes of 0x3 = FRAME_BODY_LLC_H
    // 2 bytes of 0
    // 2 bytes os (frame->txdesc).host.ethertype
    // data
    int sechdrlen = txl_frame_sechdr_len_compute(txdesc);
    length += sechdrlen;
    if (sechdrlen != 0)  { // if length != 0
        // payload
        payload->fctl |= MAC_FCTRL_PROTECTEDFRAME; // = 0x4000;
        uint16_t* sechdr = (uint16_t*)eapol_payload;
        // till now is current function
        // function: txl_frame_sec_hdr_append
        int secbytes = 0;
        if (sta->ctrl_port_state == PORT_CLOSING) {
            struct key_info_tag * keyinfo = *(sta->sta_sec_info.cur_key);
            struct tx_policy_tbl *pol = HW2CPU((((frame->txdesc).lmac.hw_desc)->thd).policyentryaddr);
            switch (keyinfo->cipher) {
                /// TODO: here the packet number goes really weird... even the endian..
                /// I'm also wondering if there are other parts using different endian?
                case MAC_RSNIE_CIPHER_TKIP: {
                    secbytes = 8;
                    uint16_t pn0 = (frame->txdesc).host.pn[0];
                    sechdr[0] = (pn0 & 0x7f00 | 0x2000) | (pn0 >> 8);
                    sechdr[1] = ((pn0 & 0xff) | keyinfo->key_idx << 0xe) | 0x2000;
                    sechdr[2] = (frame->txdesc).host.pn[1];
                    sechdr[3] = (frame->txdesc).host.pn[2];
                    break;
                }
                case MAC_RSNIE_CIPHER_CCMP:{
                    secbytes = 8;
                    uint16_t pn0 = (frame->txdesc).host.pn[0];
                    sechdr[0] = pn0;
                    sechdr[1] = (keyinfo->key_idx << 0xe) | 0x2000;
                    sechdr[2] = (frame->txdesc).host.pn[1];
                    sechdr[3] = (frame->txdesc).host.pn[2];
                    break;
                }
                case MAC_RSNIE_CIPHER_WEP40:
                case MAC_RSNIE_CIPHER_WEP104: {
                    secbytes = 4;
                    sechdr[0] = (frame->txdesc).host.pn[0];
                    sechdr[1] = (frame->txdesc).host.pn[1] | (keyinfo->key_idx << 0xe);
                }
                default:
                break;
            }
            pol->maccntrlinfo1 = pol->maccntrlinfo1 & 0xffc00 | keyinfo->hw_key_idx;
        }
        eapol_payload = (struct eapol_payload* ) (((uint8_t*)eapol_payload) + secbytes);
    }

    eapol_payload->llc = FRAME_BODY_LLC_H;
    eapol_payload->zero = 0;
    eapol_payload->eth_type = (frame->txdesc).host.ethertype;

    memcpy(eapol_payload + 1, pBuf, pBuf_len);
    uint8_t *ebufptr = eapol_payload + 1;

    if (sechdrlen != 0) {
        // txl_frame_tkip_mic_append
        struct key_info_tag * keyinfo = *(sta->sta_sec_info.cur_key);
        if (keyinfo->cipher == MAC_RSNIE_CIPHER_TKIP) {
            struct mic_calc mic_calc;
            struct hostdesc *host = &(frame->txdesc.host);
            me_mic_init(&mic_calc, (uint32_t *)&keyinfo->u,
                (struct mac_addr *)&host->eth_dest_addr,
                (struct mac_addr *)&host->eth_src_addr,&host->tid);
            /// TODO: why +8?
            me_mic_calc(&mic_calc, (uint32_t)(ebufptr), pBuf_len + 8); 
            me_mic_end(&mic_calc);
            co_copy8p(CPU2HW(ebufptr + pBuf_len), CPU2HW(&mic_calc), 8);
        }
        // end of func
    }
    struct tx_hw_desc * hwdesc = (frame->txdesc).lmac.hw_desc;
    hwdesc->thd.dataendptr = hwdesc->thd.datastartptr - 1 + length;
    hwdesc->thd.frmlen = length + MAC_FCS_LEN;
    if (cfm != 0x0) {
        (frame->cfm).cfm_func = cfm;
        (frame->cfm).env = cfm_env;
    }

    txl_frame_push(frame, mac_tid2ac[(frame->txdesc).host.tid]);
    return CO_OK;
}

void txl_frame_dump(void) {
    int cnt = co_list_cnt(&txl_frame_env.desc_free);
    struct txdesc* desc = co_list_pick(&txl_frame_env.desc_free);
    if (cnt != 0) {
        for (; desc; desc = co_list_next(&desc->list_hdr)) {

        }
        desc = co_list_pick(&txl_frame_env.desc_done);
        for (; desc; desc = co_list_next(&desc->list_hdr)) {

        }
    }
}

