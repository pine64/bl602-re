#ifndef __LLM_UTIL_H__
#define __LLM_UTIL_H__

#include <stdbool.h>
#include <stdint.h>

#include <co_bt_defines.h>


extern const uint8_t LLM_AA_CT1[3];
extern const uint8_t LLM_AA_CT2[2];
enum bl_flag_wl {
    LLM_UTIL_BL_NO_ACTION_WL = 0,
    LLM_UTIL_BL_CLEAR_WL = 1,
    LLM_UTIL_BL_SET_WL = 2,
};

int8_t llm_util_ch_assess_get_upper_limit(void);
int8_t llm_util_ch_assess_get_lower_limit(void);
uint8_t llm_util_ch_assess_get_reass_cnt(void);
int8_t llm_util_ch_assess_get_rssi_noise(void);
uint16_t llm_util_ch_assess_get_assess_timer(void);
uint8_t llm_util_check_map_validity(uint8_t *channel_map, uint8_t nb_octet);
uint16_t llm_util_bd_addr_wl_position(const struct bd_addr *bd_address, uint8_t bd_addr_type);
bool llm_util_bd_addr_in_wl(const struct bd_addr *bd_address, uint8_t bd_addr_type, bool *in_black_list);
uint8_t llm_util_check_address_validity(struct bd_addr *bd_address, uint8_t addr_type);
void llm_util_apply_bd_addr(uint8_t addr_type);
bool llm_util_check_adv_report_list(struct bd_addr *adv_bd_addr, uint8_t adv_type);
void llm_util_set_param_scan_dft(void);
void llm_util_aa_gen(uint8_t *acc_addr);
void llm_util_gen_pattern(uint8_t pattern_type, uint8_t payload_len, uint8_t *payload);
void llm_util_set_param_adv_dft(void);
extern uint8_t orig_rxsyncwinszdef;
extern uint8_t orig_rfrxtmda;
void llm_util_chk_tst_mode(void);
uint8_t llm_util_get_adv_type(void);
bool llm_util_check_evt_mask(uint8_t event_id);
void llm_util_get_channel_map(struct le_chnl_map *map);
void llm_util_get_supp_features(struct le_features *feats);
void llm_util_adv_data_update(void);
uint8_t llm_util_bl_check(const struct bd_addr *bd_addr_to_add, uint8_t bd_addr_type, uint16_t *conhdl, uint8_t wl_flag_action, bool *in_wl);
uint8_t llm_util_bl_add(struct bd_addr *bd_addr_to_add, uint8_t bd_addr_type, uint16_t conhdl);
uint8_t llm_util_bl_rem(uint16_t conhdl);
void llm_end_evt_defer(void);
bool llm_pdu_defer(uint16_t status, uint8_t rx_hdl, uint8_t tx_cnt);

#endif // __LLM_UTIL_H__
