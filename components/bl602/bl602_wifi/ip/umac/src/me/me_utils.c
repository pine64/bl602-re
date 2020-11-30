
uint8_t me_11ac_mcs_max(uint16_t mcs_map);
uint8_t me_11ac_nss_max(uint16_t mcs_map);
uint8_t me_11n_nss_max(uint8_t * mcs_set);
uint8_t me_add_chan_ctx(uint8_t * p_chan_idx, scan_chan_tag * p_chan, uint32_t center_freq1, uint32_t center_freq2, uint8_t ch_width);
void me_beacon_check(uint8_t vif_idx, uint16_t length, uint32_t bcn_addr);
uint16_t me_build_capability(uint8_t vif_idx);
void me_bw_check(uint32_t ht_op_addr, uint32_t vht_op_addr, mac_bss_info * bss);
void me_chan_ctxt_update(vif_info_tag * vif);
void me_check_rc(uint8_t sta_idx, _Bool * tx_ampdu);
void me_erp_prot_check(uint32_t erp_addr, uint16_t * prot_status);
void me_get_basic_rates(mac_rateset * rateset, mac_rateset * basic_ratest);
void me_init_bcmc_rate(sta_info_tag * sta_entry);
void me_init_rate(sta_info_tag * sta_entry);
uint16_t me_legacy_rate_bitfield_build(mac_rateset * rateset, _Bool basic_only);
uint8_t me_legacy_ridx_max(uint16_t rate_map);
uint8_t me_legacy_ridx_min(uint16_t rate_map);
uint16_t me_rate_bitfield_vht_build(uint16_t mcs_map_1, uint16_t mcs_map_2);
uint8_t me_rate_translate(uint8_t rate);
_Bool me_set_sta_ht_vht_param(sta_info_tag * sta, mac_bss_info * bss);
void me_sta_bw_nss_max_upd(uint8_t sta_idx, uint8_t bw, uint8_t nss);
void me_tx_cfm_ampdu(uint8_t sta_idx, uint32_t txed, uint32_t txok, _Bool retry_required);
uint16_t me_tx_cfm_amsdu(txdesc * txdesc);
void me_tx_cfm_singleton(txdesc * txdesc);
txl_buffer_control * me_update_buffer_control(sta_info_tag * sta_info);
#if 0 //TODO EXISTS ALEADY
/**
* @file me_utils.c
* Source file for BL602
*/
#include "me_utils.h"


bool me_set_sta_ht_vht_param(struct sta_info_tag *sta, struct mac_bss_info *bss);
uint8_t me_11ac_mcs_max(uint16_t mcs_map);
uint8_t me_11ac_nss_max(uint16_t mcs_map);
uint8_t me_11n_nss_max(uint8_t *mcs_set);
uint8_t me_legacy_ridx_min(uint16_t rate_map);
uint8_t me_legacy_ridx_max(uint16_t rate_map);
uint8_t me_rate_translate(uint8_t rate);
void me_get_basic_rates(const struct mac_rateset *rateset, struct mac_rateset *basic_ratest);
uint16_t me_legacy_rate_bitfield_build(const struct mac_rateset *rateset, bool basic_only);
uint16_t me_rate_bitfield_vht_build(uint16_t mcs_map_1, uint16_t mcs_map_2);
uint16_t me_build_capability(uint8_t vif_idx);
void me_init_rate(struct sta_info_tag *sta_entry);
void me_init_bcmc_rate(struct sta_info_tag *sta_entry);
void me_tx_cfm_singleton(struct txdesc *txdesc);
void me_tx_cfm_ampdu(uint8_t sta_idx, uint32_t txed, uint32_t txok, bool retry_required);
void me_check_rc(uint8_t sta_idx, bool *tx_ampdu);
struct txl_buffer_control *me_update_buffer_control(struct sta_info_tag *sta_info);
void me_bw_check(uint32_t ht_op_addr, uint32_t vht_op_addr, struct mac_bss_info *bss);
void me_beacon_check(uint8_t vif_idx, uint16_t length, uint32_t bcn_addr);
void me_sta_bw_nss_max_upd(uint8_t sta_idx, uint8_t bw, uint8_t nss);
uint16_t me_tx_cfm_amsdu(struct txdesc *txdesc);
uint8_t me_add_chan_ctx(uint8_t *p_chan_idx, struct scan_chan_tag *p_chan, uint32_t center_freq1, uint32_t center_freq2, uint8_t ch_width);




/** me_set_sta_ht_vht_param
 */
bool me_set_sta_ht_vht_param(struct sta_info_tag *sta, struct mac_bss_info *bss)
{
	ASSER_ERR(FALSE);
	return false;
}

/** me_11ac_mcs_max
 */
uint8_t me_11ac_mcs_max(uint16_t mcs_map)
{
	ASSER_ERR(FALSE);
	return 0xff;
}

/** me_11ac_nss_max
 */
uint8_t me_11ac_nss_max(uint16_t mcs_map)
{
	ASSER_ERR(FALSE);
	return 0xff;
}

/** me_11n_nss_max
 */
uint8_t me_11n_nss_max(uint8_t *mcs_set)
{
	ASSER_ERR(FALSE);
	return 0xff;
}

/** me_legacy_ridx_min
 */
uint8_t me_legacy_ridx_min(uint16_t rate_map)
{
	ASSER_ERR(FALSE);
	return 0xff;
}

/** me_legacy_ridx_max
 */
uint8_t me_legacy_ridx_max(uint16_t rate_map)
{
	ASSER_ERR(FALSE);
	return 0xff;
}

/** me_rate_translate
 */
uint8_t me_rate_translate(uint8_t rate)
{
	ASSER_ERR(FALSE);
	return 0xff;
}

/** me_get_basic_rates
 */
void me_get_basic_rates(const struct mac_rateset *rateset, struct mac_rateset *basic_ratest)
{
	ASSER_ERR(FALSE);
	return;
}

/** me_legacy_rate_bitfield_build
 */
uint16_t me_legacy_rate_bitfield_build(const struct mac_rateset *rateset, bool basic_only)
{
	ASSER_ERR(FALSE);
	return 0xffff;
}

/** me_rate_bitfield_vht_build
 */
uint16_t me_rate_bitfield_vht_build(uint16_t mcs_map_1, uint16_t mcs_map_2)
{
	ASSER_ERR(FALSE);
	return 0xffff;
}

/** me_build_capability
 */
uint16_t me_build_capability(uint8_t vif_idx)
{
	ASSER_ERR(FALSE);
	return 0xffff;
}

/** me_init_rate
 */
void me_init_rate(struct sta_info_tag *sta_entry)
{
	ASSER_ERR(FALSE);
	return;
}

/** me_init_bcmc_rate
 */
void me_init_bcmc_rate(struct sta_info_tag *sta_entry)
{
	ASSER_ERR(FALSE);
	return;
}

/** me_tx_cfm_singleton
 */
void me_tx_cfm_singleton(struct txdesc *txdesc)
{
	ASSER_ERR(FALSE);
	return;
}

/** me_tx_cfm_ampdu
 */
void me_tx_cfm_ampdu(uint8_t sta_idx, uint32_t txed, uint32_t txok, bool retry_required)
{
	ASSER_ERR(FALSE);
	return;
}

/** me_check_rc
 */
void me_check_rc(uint8_t sta_idx, bool *tx_ampdu)
{
	ASSER_ERR(FALSE);
	return;
}

/** *me_update_buffer_control
 */
struct txl_buffer_control *me_update_buffer_control(struct sta_info_tag *sta_info)
{
	ASSER_ERR(FALSE);
	returnNULL;
}

/** me_bw_check
 */
void me_bw_check(uint32_t ht_op_addr, uint32_t vht_op_addr, struct mac_bss_info *bss)
{
	ASSER_ERR(FALSE);
	return;
}

/** me_beacon_check
 */
void me_beacon_check(uint8_t vif_idx, uint16_t length, uint32_t bcn_addr)
{
	ASSER_ERR(FALSE);
	return;
}

/** me_sta_bw_nss_max_upd
 */
void me_sta_bw_nss_max_upd(uint8_t sta_idx, uint8_t bw, uint8_t nss)
{
	ASSER_ERR(FALSE);
	return;
}

/** me_tx_cfm_amsdu
 */
uint16_t me_tx_cfm_amsdu(struct txdesc *txdesc)
{
	ASSER_ERR(FALSE);
	return 0xffff;
}

/** me_add_chan_ctx
 */
uint8_t me_add_chan_ctx(uint8_t *p_chan_idx, struct scan_chan_tag *p_chan, uint32_t center_freq1, uint32_t center_freq2, uint8_t ch_width)
{
	ASSER_ERR(FALSE);
	return 0xff;
}
#endf 0 //TODO EXISTS ALEADY
