#ifndef __ME_UTILS_H__
#define __ME_UTILS_H__

#include <stdbool.h>
#include <stdint.h>

#include <sta/sta_mgmt.h>
#include <me/me.h>
#include <tx/tx_swdesc.h>


uint8_t me_phy2mac_bw(uint8_t phy_bw);
uint8_t me_get_sta_bw(uint8_t sta_phy_bw, uint8_t bss_phy_bw);
bool me_set_sta_ht_vht_param(struct sta_info_tag *sta, struct mac_bss_info *bss);
void me_get_basic_rates(const struct mac_rateset *rateset, struct mac_rateset *basic_ratest);
uint16_t me_legacy_rate_bitfield_build(const struct mac_rateset *rateset, bool basic_only);
uint16_t me_build_capability(uint8_t vif_idx);
void me_init_rate(struct sta_info_tag *sta_entry);
void me_init_bcmc_rate(struct sta_info_tag *sta_entry);
void me_check_rc(uint8_t sta_idx, bool *tx_ampdu);
void me_tx_cfm_singleton(struct txdesc *txdesc);
struct txl_buffer_control *me_update_buffer_control(struct sta_info_tag *sta_info);
void me_bw_check(uint32_t ht_op_addr, uint32_t vht_op_addr, struct mac_bss_info *bss);
void me_beacon_check(uint8_t vif_idx, uint16_t length, uint32_t bcn_addr);
void me_sta_bw_nss_max_upd(uint8_t sta_idx, uint8_t bw, uint8_t nss);
uint8_t me_11n_nss_max(uint8_t *mcs_set);
uint8_t me_legacy_ridx_min(uint16_t rate_map);
uint8_t me_legacy_ridx_max(uint16_t rate_map);
uint8_t me_add_chan_ctx(uint8_t *p_chan_idx, struct scan_chan_tag *p_chan, uint32_t center_freq1, uint32_t center_freq2, uint8_t ch_width);
uint8_t me_rate_translate(uint8_t rate);

#endif // __ME_UTILS_H__
