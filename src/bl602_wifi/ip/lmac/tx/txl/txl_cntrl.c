#include <lmac/tx/txl/txl_cntrl.h>

#include <lmac/tx/txl/txl_cfm.h>

#include <umac/apm/apm.h>

#include <modules/mac/mac.h>
#include <modules/mac/mac_common.h>
#include <modules/common/co_list.h>
#include <modules/common/co_utils.h>
#include <modules/ke/ke_timer.h>
#include <modules/ke/ke_event.h>

#include <phy/dma.h>
#include <phy/mac_pl.h>

#include <hal/hal_machw.h>

#include <utils.h>

#include <arch/rv32i/ll.h>

#include <blconfig.h>


// VHT NSYM
#define VHT_BW   4
#define VHT_MCS  10

// IEEE P802.11ac D3.0  Chptr 22.5 Parameters for VHT MCSs
// Note that some BW, MCS, NSS combinations are not allowed (e.g 20MHz, MCS9, NSS 1,2)
// The NDBPS value given for MCS9 20MHz is for NSS=3
const uint16_t VHT_NDBPS[VHT_BW][VHT_MCS] = {
    // MCS Index:  0     1      2       3      4      5      6      7      8      9
   [BW_20MHZ]  = {26,   52,    78,     104,   156,   208,   234,   260,   312,   1040},
   [BW_40MHZ]  = {54,   108,   162,    216,   324,   432,   486,   540,   648,   720 },
   [BW_80MHZ]  = {117,  234,   351,    468,   702,   936,   1053,  1170,  1404,  1560},
   [BW_160MHZ] = {234,  468,   702,    936,   1404,  1872,  2106,  2340,  2808,  3120},
};

/// Table containing the TX timeout value per TX queue
const uint32_t TX_TIMEOUT[NX_TXQ_CNT] = {
    TX_AC0_TIMEOUT,
    TX_AC1_TIMEOUT,
    TX_AC2_TIMEOUT,
    TX_AC3_TIMEOUT,
    #if (NX_BEACONING)
    TX_BCN_TIMEOUT
    #endif
};

struct txl_cntrl_env_tag txl_cntrl_env;


static void txl_timer_move(uint8_t ac)
{
	__builtin_trap();
}

static void txl_int_fake_transfer(struct txdesc *txdesc, uint8_t access_category) {
	struct txl_buffer_tag *buf = txl_buffer_get();
    buf->txdesc = txdesc;
    buf->tbd.upatterntx = TX_PAYLOAD_DESC_PATTERN;
    txl_buffer_push(access_category, buf);
}

static bool txl_payload_transfer(struct txdesc *txdesc, uint8_t access_category, uint8_t user_idx) {
	if ((txdesc->host).packet_addr == 0) {
        txl_int_fake_transfer(txdesc,access_category);
    } else {
        struct txl_buffer_tag *buffer =  txl_buffer_alloc(txdesc, access_category, user_idx);
        (txdesc->lmac).buffer = buffer;
        buffer->txdesc = txdesc;
        txl_buffer_update_thd(txdesc);
    }
    return false;
}

static bool txl_payload_alloc(struct txdesc *txdesc, uint8_t access_category, uint8_t user_idx) {
    bool success = !txl_payload_transfer(txdesc, access_category, user_idx);
    txl_payload_handle_backup();
    return !success;
}

static void txl_hwdesc_config_pre(struct txdesc *txdesc, int access_category) {
    uint8_t taillen = (txdesc->umac).tail_len;
    uint8_t headlen = (txdesc->umac).head_len;
    struct tx_hw_desc *hwdesc = (txdesc->lmac).hw_desc;
    uint16_t packetlen = (txdesc->host).packet_len;
    (hwdesc->thd).nextmpdudesc_ptr = 0;
    (hwdesc->thd).frmlen = headlen + taillen + packetlen + MAC_FCS_LEN;
    (hwdesc->thd).upatterntx = TX_HEADER_DESC_PATTERN;
    (hwdesc->thd).nextfrmexseq_ptr = 0;
    (hwdesc->thd).first_pbd_ptr = 0;
    (hwdesc->thd).policyentryaddr = 0;
    (hwdesc->thd).macctrlinfo2 = 0;
    (hwdesc->thd).datastartptr = 0;
    (hwdesc->thd).dataendptr = 0;
    (hwdesc->thd).frmlifetime = 0;
    (hwdesc->thd).statinfo = 0;
}

static void txl_hwdesc_config_post(struct txdesc *txdesc, uint8_t access_category) {
	__builtin_trap();
}

void txl_machdr_format(uint32_t machdrptr) {
    // struct mac_hdr
	uint16_t seq_ctrl = co_read8p(machdrptr + MAC_HEAD_CTRL_OFT) & MAC_SEQCTRL_FRAG_MSK;
    if (seq_ctrl == 0) {
        txl_cntrl_env.seqnbr++;
    }
    seq_ctrl |= txl_cntrl_env.seqnbr << MAC_SEQCTRL_NUM_OFT;
    co_write16p(machdrptr + MAC_HEAD_CTRL_OFT, seq_ctrl);
}

static void txl_cntrl_newhead(uint32_t desc, uint8_t access_category) {
	__builtin_trap();
}

static void txl_cntrl_newtail(uint8_t access_category) {
	__builtin_trap();
}

static void txl_frame_exchange_chain(struct tx_hd *first_thd, struct tx_hd *last_thd, uint8_t access_category) {
	__builtin_trap();
}

static void txl_frame_exchange_done(uint8_t access_category) {
	__builtin_trap();
}

static void txl_frame_exchange_manage(struct txdesc *txdesc, struct txl_buffer_tag *buffer, uint8_t access_category) {
	__builtin_trap();
}

static void txl_cntrl_postpone(struct txdesc *p_txdesc, uint8_t access_category) {
    (txdesc->host).tid = access_category;
    // struct txl_buffer_tag*buf = txdesc->buf;
    /// TODO: bl602 modified txdesc + 0xd5 and set it to 1, which is lenpad.. not really sure why
    /// but we also see that  at sta_mgmt_send_postponed_frame...
    /// maybe just some indicator bit.. that is not refleced in the struct
    *(((uint8_t*)txdesc->buf) + 9) = 1; 

    return true;
}

static bool txl_cntrl_start_pm_mon(struct mac_hdr *p_mac_hdr) {
	__builtin_trap();
}

static void txl_check_bcmc_status(struct txdesc *txdesc, uint8_t access_category, struct mac_hdr *mac_hdr) {
	__builtin_trap();
}

static void txl_cntrl_init(void) {
    txl_hwdesc_init();
    txl_buffer_init();
    txl_cfm_init();
    txl_frame_init(false);
    memset(&txl_cntrl_env, 0, sizeof(txl_cntrl_env));

    /// TODO: it seems that TX_BCN should have id = 4.. ?
    /// I'm doing that now..
    uint16_t bridgedmacnts[NX_TXQ_CNT] = {
        DMA->TX_AC_0.bridgedmacnt,
        DMA->TX_AC_1.bridgedmacnt,
        DMA->TX_AC_2.bridgedmacnt,
        DMA->TX_AC_3.bridgedmacnt,
        DMA->TX_BCN.bridgedmacnt,
    };
    for (int i = 0; i < NX_TXQ_CNT; i++) {
        co_list_init(&(txl_cntrl_env.txlist[i].transmitting));   
        txl_cntrl_env.txlist[i].last_frame_exch = NULL;
        txl_cntrl_env.txlist[i].bridgedmacnt = bridgedmacnts[i];
        txl_cntrl_env.txlist[i].chk_state = THD_CHK_STATE;
    }
    txl_cntrl_env.seqnbr = 0;
}

bool txl_cntrl_tx_check(struct vif_info_tag *p_vif_entry) {
	if (txl_cntrl_env.reset == false) {
        return chan_is_tx_allowed(p_vif_entry);
    }
    return false;
}

void txl_cntrl_halt_ac(uint8_t access_category) {
	switch (access_category) {
        case AC_BCN:
            MAC_PL->DMA_CNTRL_SET.haltBcnAfterTXOP = 1;
            while (MAC_PL->DMA_STATUS_1.txBcnState != 0);
            MAC_PL->DMA_CNTRL_CLEAR.haltBcnAfterTXOP = 1;
            break;
        case AC_VO:
            MAC_PL->DMA_CNTRL_SET.haltAC3AfterTXOP = 1;
            while (MAC_PL->DMA_STATUS_1.txAC3State != 0);
            MAC_PL->DMA_CNTRL_CLEAR.haltAC3AfterTXOP = 1;
            break;
        case AC_VI:
            MAC_PL->DMA_CNTRL_SET.haltAC2AfterTXOP = 1;
            while (MAC_PL->DMA_STATUS_1.txAC2State != 0);
            MAC_PL->DMA_CNTRL_CLEAR.haltAC2AfterTXOP = 1;
            break;
        case AC_BE:
            MAC_PL->DMA_CNTRL_SET.haltAC1AfterTXOP = 1;
            while (MAC_PL->DMA_STATUS_1.txAC1State != 0);
            MAC_PL->DMA_CNTRL_CLEAR.haltAC1AfterTXOP = 1;
            break;
        case AC_BK:
            MAC_PL->DMA_CNTRL_SET.haltAC0AfterTXOP = 1;
            while (MAC_PL->DMA_STATUS_1.txAC0State != 0);
            MAC_PL->DMA_CNTRL_CLEAR.haltAC0AfterTXOP = 1;
            break;
        default:
            ASSERT_ERR(0);
    }
}

void txl_cntrl_flush_ac(uint8_t access_category, uint32_t status) {
	uint32_t timer_bit = CO_BIT(TX_AC2TIMER(access_category));
    struct txl_list *txlist = &txl_cntrl_env.txlist[access_category];
    txl_cfm_flush(access_category, txl_cfm_env.cfmlist + access_category, status);
    txl_cfm_flush(access_category, &txl_cntrl_env.txlist[access_category].transmitting, status);

    txl_cntrl_env.txlist[access_category].last_frame_exch = NULL;

    txl_buffer_reset();

    MAC_PL->TIMERS_INT_UN_MASK.value = MAC_PL->TIMERS_INT_UN_MASK.value & ~timer_bit;
    MAC_PL->TIMERS_INT_EVENT_CLEAR = timer_bit;
}

void txl_cntrl_clear_bcn_ac(void) {
	txl_cntrl_halt_ac(AC_BCN);
    txl_cntrl_flush_ac(AC_BCN, 0x40000000);
}

void txl_cntrl_clear_all_ac(void) {
    txl_cntrl_halt_ac(AC_BCN);
    txl_cntrl_flush_ac(AC_BCN, 0x40000000);
    txl_cntrl_halt_ac(AC_BK);
    txl_cntrl_flush_ac(AC_BK, 0x40000000);
    txl_cntrl_halt_ac(AC_BE);
    txl_cntrl_flush_ac(AC_BE, 0x40000000);
    txl_cntrl_halt_ac(AC_VI);
    txl_cntrl_flush_ac(AC_VI, 0x40000000);
    txl_cntrl_halt_ac(AC_VO);
    txl_cntrl_flush_ac(AC_VO, 0x40000000);
}

/// TODO: the buffer allocation never failed??
bool txl_cntrl_push(struct txdesc *txdesc, uint8_t access_category) {
    txl_hwdesc_config_pre(txdesc, access_category);
    __disable_irq();
    txl_payload_alloc(txdesc, access_category, 0);
    co_list_push_back(&txl_cntrl_env.txlist[access_category].transmitting, &txdesc->list_hdr);
    __enable_irq();
    txl_cntrl_env.pck_cnt++;
    td_pck_ind((txdesc->host).vif_idx, (txdesc->host).staid, false);
    ps_check_tx_frame((txdesc->host).staid, (txdesc->host).tid);
    return false;
}

void txl_cntrl_inc_pck_cnt(void) {
	txl_cntrl_env.pck_cnt ++;
}

bool txl_cntrl_push_int(struct txdesc *txdesc, uint8_t access_category) {
	struct tx_hw_desc* hwdesc = (txdesc->lmac).hw_desc;
    if (txl_cntrl_tx_check(vif_info_tab + (txdesc->host).vif_idx)) {
        if (apm_tx_int_ps_check(txdesc)) {
            (hwdesc->thd).macctrlinfo2 = (hwdesc->thd).macctrlinfo2 | INTERRUPT_EN_TX;
            __disable_irq();
            txl_int_fake_transfer(txdesc,access_category);   
            co_list_push_back(&txl_cntrl_env.txlist[access_category].transmitting,&txdesc->list_hdr);
            __enable_irq();
            txl_cntrl_env.pck_cnt ++;
            txl_payload_handle_backup();
            return true;
        }
    }
    #if (NX_CHNL_CTXT || NX_P2P)
    if ((txdesc->host).staid != INVALID_STA_IDX) {
        txl_frame_release(txdesc, false);
        return false;
    } else {
        txl_cntrl_postpone(txdesc, access_category);
        return true;
    }
    #endif

    return true;
}

bool txl_cntrl_push_int_force(struct txdesc *txdesc, uint8_t access_category) {
    struct tx_hw_desc *hwdesc = (txdesc->lmac).hw_desc;
    (hwdesc->thd).macctrlinfo2 = (hwdesc->thd).macctrlinfo2 | INTERRUPT_EN_TX;
    __disable_irq();
    txl_int_fake_transfer(txdesc,access_category);
    co_list_push_back(&txl_cntrl_env.txlist[CONCAT31(in_register_0000202d,access_category)].
                       transmitting,&txdesc->list_hdr);
    __enable_irq();
    txl_cntrl_env.pck_cnt++;
    txl_payload_handle_backup();

    return true;
}

void txl_payload_handle(void) {
    for (uint32_t status = DMA->int_status.TX; status; status = DMA->int_status.TX) {
        int ldz = __builtin_clz(status);
        DMA->int_ack = 1 << (31 - (ldz & 31));
    }
}

void txl_payload_handle_backup(void) {
	__builtin_trap();
}

void txl_transmit_trigger(void)
{
	__builtin_trap();
}

void txl_current_desc_get(int access_category, struct tx_hd **thd)
{
	__builtin_trap();
}

void txl_reset(void)
{
	__builtin_trap();
}

void txdesc_dump(struct txdesc *txdesc)
{
	__builtin_trap();
}

void txl_cntrl_env_dump(void)
{
	__builtin_trap();
}

