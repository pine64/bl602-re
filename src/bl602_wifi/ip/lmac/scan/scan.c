#include <blconfig.h>

#include <lmac/scan/scan.h>
#include <lmac/scan/scan_task.h>
#include <lmac/tx/txl/txl_frame.h>
#include <lmac/vif/vif_mgmt.h>

#include <modules/ke/ke_task.h>
#include <modules/mac/mac.h>
#include <modules/mac/mac_ie.h>
#include <modules/mac/mac_frame.h>
#include <modules/common/co_utils.h>

#include <phy_rf/phy_bl602.h>
#include <phy_rf/phy.h>

#include <utils.h>

struct scan_env_tag scan_env;


/** scan_search_ds
 */
void scan_search_ds(void) {
    scan_env.ds_ie = mac_ie_find(CPU2HW(scan_probe_req_ie.buf), scan_env.param->add_ie_len, MAC_ELTID_DS);
}

/** dma_cb
 */
void dma_cb(void* env, int dma_queue) {
    scan_search_ds();
    scan_set_channel_request();
}

/** scan_init
 */
void scan_init(void) {
    memset(&scan_env, 0, sizeof(scan_env));

    scan_env.duration_scan_passive = SCAN_PASSIVE_DURATION;
    scan_env.duration_scan_active = SCAN_ACTIVE_DURATION;

    ke_state_set(TASK_SCAN, SCAN_IDLE);

    scan_env.dma_desc.dma_desc = (dma_desc *)&scan_probe_req_ie;
    scan_env.dma_desc.cb = dma_cb;
    scan_env.dma_desc.env = (void *)0x0;
    
    scan_probe_req_ie.dma_desc.dest = CPU2HW(ie_desc->buf);
    scan_probe_req_ie.pbd.upatterntx = TX_PAYLOAD_DESC_PATTERN;
    scan_probe_req_ie.pbd.next = 0;
    scan_probe_req_ie.pbd.datastartptr = CPU2HW(ie_desc->buf);
    scan_probe_req_ie.pbd.bufctrlinfo = 0;
}

/** scan_ie_download
 */
void scan_ie_download(const struct scan_start_req *param) {
    scan_search_ds();
    scan_set_channel_request();
    scan_probe_req_ie.pbd.dataendptr = (scan_probe_req_ie.pbd.datastartptr - 1) + (uint)param->add_ie_len;
    scan_probe_req_ie.pbd.bufctrlinfo = 0;
}

/** scan_set_channel_request
 */
void scan_set_channel_request(void) {
    struct scan_chan_tag *chan = scan_env.param->chan + scan_env.chan_idx;
    uint32_t duration_us = scan_env.duration_scan_active;
    if (chan->flags & SCAN_PASSIVE_BIT) {
        duration_us = scan_env.duration_scan_passive;
    }
    chan_scan_req(chan->band, chan->freq, chan->tx_power, duration_us, (scan_env.param)->vif_idx);
    if (scan_env.ds_ie == 0) {
        ke_state_set(TASK_SCAN, SCAN_WAIT_CHANNEL);
        return ;
    }
    co_write8p(scan_env.ds_ie + MAC_DS_CHANNEL_OFT, phy_freq_to_channel(chan->band, chan->freq));
    ke_state_set(TASK_SCAN, SCAN_WAIT_CHANNEL);
}

/** scan_probe_req_tx
 */
void scan_probe_req_tx(void) {
    struct scan_start_req *parma = scan_env.param;
    uint8_t chan_idx = scan_env.chan_idx;
    uint8_t vif_idx = (scan_env.param)->vif_idx;
    struct scan_chan_tag *chan = param->chan + chan_idx;
    struct vif_info_tag *vif = vif_info_tab + vif_idx;
    
    for (int i = 0; i < param->ssid_cnt; i++) {
        struct mac_ssid* ssid = &((scan_env.param)->ssid[i]);//.array;
        int tx_parma = TX_DEFAULT_5G;
        if (chan->band == PHY_BAND_2G4) {
            if (!parma->no_cck) {
                tx_parma = TX_DEFAULT_24G;
            }
        }
        
        struct txl_frame_desc_tag* frame = txl_frame_get(tx_parma, (uint)parma->add_ie_len + (scan_env.param)->ssid[0].length + MAC_SHORT_MAC_HDR_LEN + MAC_SSID_SSID_OFT);
        if (!frame) 
            return ;

        struct preq_frame *buf = (frame->txdesc).lmac.buffer->payload;
        struct tx_hw_desc * hwdesc = (frame->txdesc).lmac.hw_desc;

        buf->h.fctl = MAC_FCTRL_PROBEREQ;
        buf->h.durid = 0;

        // offset = 0x150
        memcpy(buf->h.addr1, &mac_addr_bcst, sizeof(struct mac_addr));
        // offset = 0x156
        memcpy(buf->h.addr2, &(vif->mac_addr), sizeof(struct mac_addr));
        // offset = 0x15c
        memcpy(buf->h.addr3, &(parma->bssid), sizeof(struct mac_addr));
        // offset = 0x164 - 332 = 24
        buf->h.seq = txl_get_seq_ctrl();

        uint32_t payload = CPU2HW(&(buf->payload));

        co_write8p(ssid_addr++, MAC_ELTID_SSID);
        co_write8p(ssid_addr++, ssid->length);
        co_pack8p(ssid_addr, ssid->array, ssid->length);

        hwdesc->thd->first_pbd_ptr = CPU2HW(&(scan_probe_req_ie.pbd));
        hwdesc->thd->dataendptr -= param->add_ie_len;
        
        frame->cfm.cfm_func = NULL;
        frame->cfm.env = NULL;                           
        
        #if (NX_CHNL_CTXT || NX_P2P)
        (frame->txdesc).host.vif_idx = parma->vif_idx;
        (frame->txdesc).host.staid = 0xff;
        #endif
        
        txl_frame_push(frame, AC_VO);
    }
}

/** scan_send_cancel_cfm
 */
void scan_send_cancel_cfm(uint8_t status, ke_task_id_t dest_id) {
    // 0x804
    struct scan_cancel_cfm *cfm = KE_MSG_ALLOC(SCAN_CANCEL_CFM, dest_id, TASK_SCAN, scan_cancel_cfm);
    cfm->status = status;
    ke_msg_send(cfm);
}

/** scan_get_chan
 */
const struct scan_chan_tag *scan_get_chan(void) {
	return (scan_env.param)->chan + scan_env.chan_idx;
}
