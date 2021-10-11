#ifndef __LLC_UTIL_H__
#define __LLC_UTIL_H__

#include <stdbool.h>
#include <stdint.h>

#include <co_bt_defines.h>
#include <lld/lld_evt.h>

enum llc_util_enc_state {
    LLC_ENC_DISABLED = 0,
    LLC_ENC_TX = 1,
    LLC_ENC_RX = 2,
    LLC_ENC_ENABLE = 3,
    LLC_ENC_TX_FLOW_OFF = 4,
    LLC_ENC_RX_FLOW_OFF = 8,
    LLC_ENC_FLOW_OFF = 12,
    LLC_ENC_REFRESH_PENDING = 16,
    LLC_ENC_PAUSE_PENDING = 32,
};

uint8_t llc_util_get_free_conhdl(uint16_t *conhdl);
uint8_t llc_util_get_nb_active_link(void);
void llc_util_dicon_procedure(uint16_t conhdl, uint8_t reason);
void llc_util_update_channel_map(uint16_t conhdl, struct le_chnl_map *map);
void llc_util_set_llcp_discard_enable(uint16_t conhdl, bool enable);
void llc_util_set_auth_payl_to_margin(struct lld_evt_tag *evt);
void llc_util_clear_operation_ptr(uint16_t conhdl, uint8_t op_type);
void llc_util_bw_mgt(uint16_t conhdl);
void llc_end_evt_defer(uint16_t conhdl);
void llc_pdu_llcp_tx_ack_defer(uint16_t conhdl, uint8_t opcode);
void llc_pdu_acl_tx_ack_defer(uint16_t conhdl, uint8_t tx_cnt);
void llc_pdu_defer(uint16_t conhdl, uint16_t status, uint8_t rssi, uint8_t channel, uint8_t length);

#endif // __LLC_UTIL_H__
