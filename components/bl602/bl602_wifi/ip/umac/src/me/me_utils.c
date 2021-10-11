#include "me_utils.h"

void me_chan_ctxt_update(struct vif_info_tag *vif)
{
	__builtin_trap();
}

bool me_set_sta_ht_vht_param(struct sta_info_tag *sta, struct mac_bss_info *bss)
{
	__builtin_trap();
}

uint8_t me_11ac_mcs_max(uint16_t mcs_map)
{
	__builtin_trap();
}

uint8_t me_11ac_nss_max(uint16_t mcs_map)
{
	__builtin_trap();
}

uint8_t me_11n_nss_max(uint8_t *mcs_set)
{
	__builtin_trap();
}

uint8_t me_legacy_ridx_min(uint16_t rate_map)
{
	__builtin_trap();
}

uint8_t me_legacy_ridx_max(uint16_t rate_map)
{
	__builtin_trap();
}

void me_erp_prot_check(uint32_t erp_addr, uint16_t *prot_status)
{
	__builtin_trap();
}

uint8_t me_rate_translate(uint8_t rate)
{
	__builtin_trap();
}

void me_get_basic_rates(const struct mac_rateset *rateset, struct mac_rateset *basic_ratest)
{
	__builtin_trap();
}

uint16_t me_legacy_rate_bitfield_build(const struct mac_rateset *rateset, bool basic_only)
{
	__builtin_trap();
}

uint16_t me_rate_bitfield_vht_build(uint16_t mcs_map_1, uint16_t mcs_map_2)
{
	__builtin_trap();
}

uint16_t me_build_capability(uint8_t vif_idx)
{
	__builtin_trap();
}

void me_init_rate(struct sta_info_tag *sta_entry)
{
	__builtin_trap();
}

void me_init_bcmc_rate(struct sta_info_tag *sta_entry)
{
	__builtin_trap();
}

void me_tx_cfm_singleton(struct txdesc *txdesc)
{
	__builtin_trap();
}

void me_tx_cfm_ampdu(uint8_t sta_idx, uint32_t txed, uint32_t txok, bool retry_required)
{
	__builtin_trap();
}

void me_check_rc(uint8_t sta_idx, bool *tx_ampdu)
{
	__builtin_trap();
}

struct txl_buffer_control *me_update_buffer_control(struct sta_info_tag *sta_info)
{
	__builtin_trap();
}

void me_bw_check(uint32_t ht_op_addr, uint32_t vht_op_addr, struct mac_bss_info *bss)
{
	__builtin_trap();
}

void me_beacon_check(uint8_t vif_idx, uint16_t length, uint32_t bcn_addr)
{
	__builtin_trap();
}

void me_sta_bw_nss_max_upd(uint8_t sta_idx, uint8_t bw, uint8_t nss)
{
	__builtin_trap();
}

uint16_t me_tx_cfm_amsdu(struct txdesc *txdesc)
{
	__builtin_trap();
}

uint8_t me_add_chan_ctx(uint8_t *p_chan_idx, struct scan_chan_tag *p_chan, uint32_t center_freq1, uint32_t center_freq2, uint8_t ch_width)
{
	__builtin_trap();
}
