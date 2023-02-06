#ifndef _TXL_CNTRL_H_
#define _TXL_CNTRL_H_

#include <stdbool.h>
#include <stdint.h>

#include <lmac/tx/tx_swdesc.h>
#include <lmac/vif/vif_mgmt.h>
#include <modules/common/co_list.h>

#include <modules/mac/mac.h>
#include <modules/mac/mac_frame.h>


/// Tx trigger descriptor status check states
enum
{
    /// State for checking MPDU THD done status
    THD_CHK_STATE,
    /// State for checking BAR THD done status
    ATHD_CHK_STATE,
};


struct txl_list {
    struct tx_hd *last_frame_exch; // +0
    struct co_list transmitting; // +4
    uint16_t bridgedmacnt; // +12
    uint8_t chk_state; // +14
};

struct txl_cntrl_env_tag {
    struct txl_list txlist[5]; // +0
    uint32_t pck_cnt; // +80
    uint16_t seqnbr; // +84
    bool reset; // +86
};


extern const uint32_t txl_prep_evt_bit[5];
extern struct txl_cntrl_env_tag txl_cntrl_env;


bool txl_sleep_check(void);
void txl_cntrl_init(void);
void txl_reset(void);
bool txl_cntrl_tx_check(struct vif_info_tag *p_vif_entry);
bool txl_cntrl_push(struct txdesc *txdesc, uint8_t access_category);
bool txl_cntrl_push_int(struct txdesc *txdesc, uint8_t access_category);
bool txl_cntrl_push_int_force(struct txdesc *txdesc, uint8_t access_category);
void txl_cntrl_halt_ac(uint8_t access_category);
void txl_cntrl_flush_ac(uint8_t access_category, uint32_t status);
void txl_cntrl_clear_bcn_ac(void);
void txl_cntrl_clear_all_ac(void);
void txl_cntrl_inc_pck_cnt(void);
void txl_payload_handle(void);
void txl_transmit_trigger(void);

/*
 * DEFINES
 ****************************************************************************************
 */
/// AC0 queue timeout
#define TX_AC0_TIMEOUT      200000
/// AC1 queue timeout
#define TX_AC1_TIMEOUT      2000000
/// AC2 queue timeout
#define TX_AC2_TIMEOUT      400000
/// AC3 queue timeout
#define TX_AC3_TIMEOUT      200000
/// BCN queue timeout
#define TX_BCN_TIMEOUT      50000

/// Conversion from Access Category to corresponding TX timer
#define TX_AC2TIMER(ac)             ((ac) + HAL_AC0_TIMER)

/// Index of the beacon queue
#define AC_BCN                        AC_MAX

#define TX_NTX_2_ANTENNA_SET(ntx)   ((CO_BIT((ntx) + 1) - 1) << ANTENNA_SET_PT_OFT)

static inline uint16_t txl_get_seq_ctrl(void) {
    txl_cntrl_env.seqnbr++;

    return (txl_cntrl_env.seqnbr << MAC_SEQCTRL_NUM_OFT);
}

#endif 
