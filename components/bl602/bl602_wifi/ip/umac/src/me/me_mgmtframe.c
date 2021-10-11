#include "me_mgmtframe.h"


void me_add_baparamset_frame(uint32_t addr, struct bam_env_tag *bam_env)
{
	__builtin_trap();
}

void me_add_ba_ssc_frame(uint32_t addr, struct bam_env_tag *bam_env)
{
	__builtin_trap();
}

void me_del_baparamset_frame(uint32_t addr, struct bam_env_tag *bam_env)
{
	__builtin_trap();
}

uint32_t me_add_ie_ssid(uint32_t *frame_addr, uint8_t ssid_len, uint8_t *p_ssid)
{
	__builtin_trap();
}

uint32_t me_add_ie_supp_rates(uint32_t *frame_addr, struct mac_rateset *p_rateset)
{
	__builtin_trap();
}

uint32_t me_add_ie_ext_supp_rates(uint32_t *frame_addr, struct mac_rateset *p_rateset)
{
	__builtin_trap();
}

uint32_t me_add_ie_ds(uint32_t *frame_addr, uint8_t channel)
{
	__builtin_trap();
}

uint32_t me_add_ie_erp(uint32_t *frame_addr, uint8_t erp_info)
{
	__builtin_trap();
}

uint32_t me_add_ie_rsn(uint32_t *frame_addr, uint8_t enc_type)
{
	__builtin_trap();
}

uint32_t me_add_ie_wpa(uint32_t *frame_addr, uint8_t enc_type)
{
	__builtin_trap();
}

uint32_t me_add_ie_tim(uint32_t *frame_addr, uint8_t dtim_period)
{
	__builtin_trap();
}

uint32_t me_add_ie_ht_capa(uint32_t *frame_addr)
{
	__builtin_trap();
}

uint32_t me_add_ie_ht_oper(uint32_t *frame_addr, struct vif_info_tag *p_vif_entry)
{
	__builtin_trap();
}

uint16_t me_build_authenticate(uint32_t frame, uint16_t algo_type, uint16_t seq_nbr, uint16_t status_code, uint32_t *challenge_array_ptr)
{
	__builtin_trap();
}

uint16_t me_build_deauthenticate(uint32_t frame, uint16_t reason_code)
{
	__builtin_trap();
}

uint16_t me_build_associate_req(uint32_t frame, struct mac_bss_info *bss, struct mac_addr *old_ap_addr_ptr, uint8_t vif_idx, uint32_t *ie_addr, uint16_t *ie_len, const struct sm_connect_req *con_par)
{
	__builtin_trap();
}

uint16_t me_build_add_ba_req(uint32_t frame, struct bam_env_tag *bam_env)
{
	__builtin_trap();
}

uint16_t me_build_add_ba_rsp(uint32_t frame, struct bam_env_tag *bam_env, uint16_t param, uint8_t dialog_token, uint16_t status_code)
{
	__builtin_trap();
}

uint16_t me_build_del_ba(uint32_t frame, struct bam_env_tag *bam_env, uint16_t reason_code)
{
	__builtin_trap();
}

void me_extract_rate_set(uint32_t buffer, uint16_t buflen, struct mac_rateset *mac_rate_set_ptr)
{
	__builtin_trap();
}

void me_extract_power_constraint(uint32_t buffer, uint16_t buflen, struct mac_bss_info *bss)
{
	__builtin_trap();
}

void me_extract_country_reg(uint32_t buffer, uint16_t buflen, struct mac_bss_info *bss)
{
	__builtin_trap();
}

void me_extract_mobility_domain(uint32_t buffer, uint16_t buflen, struct mac_bss_info *bss)
{
	__builtin_trap();
}

int me_extract_csa(uint32_t buffer, uint16_t buflen, uint8_t *mode, struct mm_chan_ctxt_add_req *chan_desc)
{
	__builtin_trap();
}


extern uint8_t int_rsn_ie[];


uint16_t me_build_beacon(uint32_t frame, uint8_t vif_idx, uint16_t *tim_oft, uint8_t *tim_len, uint8_t hidden_ssid)
{
	__builtin_trap();
}

uint16_t me_build_probe_rsp(uint32_t frame, uint8_t vif_idx)
{
	__builtin_trap();
}

uint16_t me_build_associate_rsp(uint32_t frame, uint8_t vif_idx, uint16_t status_code, struct me_sta_add_req *req)
{
	__builtin_trap();
}
