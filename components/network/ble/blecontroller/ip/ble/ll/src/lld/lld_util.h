#ifndef __LLD_UTIL_H__
#define __LLD_UTIL_H__

#include <stdbool.h>
#include <stdint.h>

#include <co_bt_defines.h>
#include <co_list.h>
#include <ea.h>

enum lld_util_instant_action {
    LLD_UTIL_NO_ACTION = 0,
    LLD_UTIL_PARAM_UPDATE = 1,
    LLD_UTIL_CHMAP_UPDATE = 2,
};

uint16_t lld_util_instant_get(void *event, uint8_t action);
void lld_util_get_bd_address(struct bd_addr *bd_addr);
void lld_util_set_bd_address(struct bd_addr *bd_addr, uint8_t type);
uint8_t lld_util_freq2chnl(uint8_t freq);
uint16_t lld_util_get_local_offset(uint16_t PeerOffset, uint16_t Interval, uint32_t AnchorPoint);
uint16_t lld_util_get_peer_offset(uint16_t LocalOffset, uint16_t Interval, uint32_t AnchorPoint);
void lld_util_connection_param_set(struct ea_elt_tag *elt, struct ea_param_output *param);
void lld_util_dle_set_cs_fields(uint16_t conhdl);
void lld_util_anchor_point_move(struct ea_elt_tag *elt_connect);
void lld_util_flush_list(struct co_list *list);
bool lld_util_instant_ongoing(struct ea_elt_tag *elt);
void lld_util_compute_ce_max(struct ea_elt_tag *elt, uint16_t tx_time, uint16_t rx_time);
bool lld_util_elt_programmed(struct ea_elt_tag *elt);
void lld_util_priority_set(struct ea_elt_tag *elt, uint8_t priority_index);
void lld_util_priority_update(struct ea_elt_tag *elt, uint8_t value);
uint8_t lld_util_get_tx_pkt_cnt(struct ea_elt_tag *elt);
void lld_util_eff_tx_time_set(struct ea_elt_tag *elt, uint16_t max_tx_time, uint16_t max_tx_size);

#endif // __LLD_UTIL_H__
