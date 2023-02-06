#include <lmac/tx/txl/txl_buffer.h>

#include <lmac/tx/txl/txl_cntrl.h>
#include <lmac/tx/txu/txu_cntrl.h>
#include <lmac/tx/tx_swdesc.h>

#include <hal/hal_desc.h>

#include <phy_rf/phy.h>

#include <modules/common/co_utils.h>
#include <modules/common/co_list.h>

#include <utils.h>

#include <blconfig.h>

struct txl_buffer_env_tag txl_buffer_env;

static void txl_buffer_transfer(struct txdesc *txdesc, struct txl_buffer_tag *buf, uint16_t head_len) {
	__builtin_trap();
}

void txl_buffer_reinit(void) {
    /// TODO: the code here only changes list[0], but I really think it should change all of them
    /*
    for (int i = 0; i < NX_TXQ_CNT; i++) {
        txl_buffer_env.list[i].first = NULL;
        txl_buffer_env.list[i].last = NULL;
    }
    */                
    txl_buffer_env.list[0].first = NULL;
    txl_buffer_env.list[0].last = NULL;
}

void txl_buffer_init(void) {
	txl_buffer_reinit();
    for (int i = 0; i < NX_REMOTE_STA_MAX; i++) {
        struct txl_buffer_control* buf_ctrl = txl_buffer_control_desc + i;
        struct tx_policy_tbl* pol = buf_ctrl->policy_tbl;
        pol->upatterntx = POLICY_TABLE_PATTERN;
        pol->phycntrlinfo1 = phy_get_ntx() << NX_TX_PT_OFT;
        pol->phycntrlinfo2 = TX_NTX_2_ANTENNA_SET(phy_get_ntx());
        pol->maccntrlinfo1 = 0;
        pol->maccntrlinfo2 = 0xffff0704;

        pol->ratecntrlinfo[0] = 0;
        pol->ratecntrlinfo[1] = 0;
        pol->ratecntrlinfo[2] = 0;
        pol->ratecntrlinfo[3] = 0;

        pol->powercntrlinfo[0]  = MAC_CORE->MAX_POWER_LEVEL.ofdmMaxPwrLevel << TX_PWR_LEVEL_PT_RCX_OFT;
        pol->powercntrlinfo[1]  = MAC_CORE->MAX_POWER_LEVEL.ofdmMaxPwrLevel << TX_PWR_LEVEL_PT_RCX_OFT;
        pol->powercntrlinfo[2]  = MAC_CORE->MAX_POWER_LEVEL.ofdmMaxPwrLevel << TX_PWR_LEVEL_PT_RCX_OFT;
        pol->powercntrlinfo[3]  = MAC_CORE->MAX_POWER_LEVEL.ofdmMaxPwrLevel << TX_PWR_LEVEL_PT_RCX_OFT;

        buf_ctrl->mac_control_info = EXPECTED_ACK_NORMAL_ACK | LOW_RATE_RETRY; // 0x2200
        buf_ctrl->phy_control_info = 63 << GID_TX_OFT; // 0x3f0000
    }

    for (int i = 0; i < NX_VIRT_DEV_MAX; i++) {
        struct txl_buffer_control* buf_ctrl = txl_buffer_control_desc_bcmc + i;
        struct tx_policy_tbl* pol = buf_ctrl->policy_tbl;
        pol->upatterntx = POLICY_TABLE_PATTERN;
        pol->phycntrlinfo1 = phy_get_ntx() << NX_TX_PT_OFT;
        pol->phycntrlinfo2 = TX_NTX_2_ANTENNA_SET(phy_get_ntx());
        pol->maccntrlinfo1 = 0;
        pol->maccntrlinfo2 = 0xffff0704;

        pol->ratecntrlinfo[0] = 0;
        pol->ratecntrlinfo[1] = 0;
        pol->ratecntrlinfo[2] = 0;
        pol->ratecntrlinfo[3] = 0;

        pol->powercntrlinfo[0]  = MAC_CORE->MAX_POWER_LEVEL.ofdmMaxPwrLevel << TX_PWR_LEVEL_PT_RCX_OFT; // 0x24
        pol->powercntrlinfo[1]  = 0;
        pol->powercntrlinfo[2]  = 0;
        pol->powercntrlinfo[3]  = 0;

        buf_ctrl->mac_control_info = 0x0; // 0
        buf_ctrl->phy_control_info = 63 << GID_TX_OFT; // 0x3f0000
    }
}

void txl_buffer_reset(void) {
    /// TODO: the code here only changes list[0], but I really think it should change all of them
    /*
    for (int i = 0; i < NX_TXQ_CNT; i++) {
        txl_buffer_env.list[i].first = NULL;
        txl_buffer_env.list[i].last = NULL;
    }
    */                
    txl_buffer_env.list[0].first = NULL;
    txl_buffer_env.list[0].last = NULL;
}

struct txl_buffer_tag *txl_buffer_alloc(struct txdesc *txdesc, uint8_t access_category, uint8_t user_idx) {
	struct txl_buffer_tag* buf = &txdesc->buf;
    buf->user_idx = user_idx; // 0x1b8

    // txl_buffer_transfer
    uint32_t headlen = (txdesc->umac).head_len;
    buf->lenpad = (headlen + 16) & 0xfffffff0 - headlen; // 0xd4 -> 8
    struct tx_pbd* tbd = buf->tbd; // 0x104 -> 56
    tbd->upatterntx = TX_PAYLOAD_DESC_PATTERN;
    buf->lenheader = headlen; // 0xd0
    if (!((txdesc->host).flags & TXU_CNTRL_MGMT)) {
        txu_cntrl_frame_build(txdesc, CPU2HW(buf->payload) + headlen);
    }

    struct txl_buffer_control* buf_control = &((txdesc->umac).buf_control); // 240
    memcpy(&(buf->buffer_control), buf_control, sizeof(struct txl_buffer_control));
    
    // txl_buffer_push
    txl_buffer_push(access_category, buf);
}

void txl_buffer_update_thd(struct txdesc *txdesc) {
    struct txl_buffer_tag* buf = (txdesc->lmac).buffer;
    struct tx_hw_desc* hwdesc = (txdesc->lmac).hw_desc; 
    struct tx_pbd *tbd = buf->tbd_body;
    int i = 0;
    for (i = 0; i < 4; i++) {
        uint32_t ptr = (txdesc->host).pbuf_chained_ptr[i];
        uint32_t len = (txdesc->host).pbuf_chained_len[i];
        if (ptr) {
            tbd[i].upatterntx = TX_PAYLOAD_DESC_PATTERN;
            tbd[i].datastartptr = ptr;
            tbd[i].bufctrlinfo = 0;
            tbd[i].dataendptr = ptr + len - 1;
            tbd[i].next = tbd + i + 1;
        } else break;
    }
    if (i == 0) {
        printf("%s: assert when set add_pbd chain\r\n", "txl_buffer_update_thd");
        for(;;);
    }
    tbd[i - 1].bufctrlinfo = 0;
    tbd[i - 1].next = 0;
    ptr = buf->lenheader;
    (buf->tbd).upatterntx = TX_PAYLOAD_DESC_PATTERN;
    (buf->tbd).datastartptr = CPU2HW(&(buf->payload));
    (buf->tbd).dataendptr = CPU2HW(&(buf->payload)) + buf->lenheader - 1;
    (buf->tbd).next = CPU2HW(buf->tbd_body);
    (buf->tbd).bufctrlinfo = 0;
    (hwdesc->thd).first_pbd_ptr = CPU2HW(buf->tbd);
}

