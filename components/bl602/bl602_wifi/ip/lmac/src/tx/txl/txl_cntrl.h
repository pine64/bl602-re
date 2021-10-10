#ifndef __TXL_CNTRL_H__
#define __TXL_CNTRL_H__

#include <stdbool.h>
#include <stdint.h>

#include <tx/tx_swdesc.h>
#include <vif/vif_mgmt.h>
#include <co_list.h>


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
uint16_t txl_get_seq_ctrl(void);
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

#endif // __TXL_CNTRL_H__
