
void me_add_ba_ssc_frame(uint32_t addr, bam_env_tag * bam_env);
void me_add_baparamset_frame(uint32_t addr, bam_env_tag * bam_env);
uint32_t me_add_ie_ds(uint32_t * frame_addr, uint8_t channel);
uint32_t me_add_ie_erp(uint32_t * frame_addr, uint8_t erp_info);
uint32_t me_add_ie_ext_supp_rates(uint32_t * frame_addr, mac_rateset * p_rateset);
uint32_t me_add_ie_ht_capa(uint32_t * frame_addr);
uint32_t me_add_ie_ht_oper(uint32_t * frame_addr, vif_info_tag * p_vif_entry);
uint32_t me_add_ie_rsn(uint32_t * frame_addr, uint8_t enc_type);
uint32_t me_add_ie_ssid(uint32_t * frame_addr, uint8_t ssid_len, uint8_t * p_ssid);
uint32_t me_add_ie_supp_rates(uint32_t * frame_addr, mac_rateset * p_rateset);
uint32_t me_add_ie_tim(uint32_t * frame_addr, uint8_t dtim_period);
uint32_t me_add_ie_wpa(uint32_t * frame_addr, uint8_t enc_type);
uint16_t me_build_add_ba_req(uint32_t frame, bam_env_tag * bam_env);
uint16_t me_build_add_ba_rsp(uint32_t frame, bam_env_tag * bam_env, uint16_t param, uint8_t dialog_token, uint16_t status_code);
uint16_t me_build_associate_req(uint32_t frame, mac_bss_info * bss, mac_addr * old_ap_addr_ptr, uint8_t vif_idx, uint32_t * ie_addr, uint16_t * ie_len, sm_connect_req * con_par);
uint16_t me_build_associate_rsp(uint32_t frame, uint8_t vif_idx, uint16_t status_code, me_sta_add_req * req);
uint16_t me_build_authenticate(uint32_t frame, uint16_t algo_type, uint16_t seq_nbr, uint16_t status_code, uint32_t * challenge_array_ptr);
uint16_t me_build_beacon(uint32_t frame, uint8_t vif_idx, uint16_t * tim_oft, uint8_t * tim_len, uint8_t hidden_ssid);
uint16_t me_build_deauthenticate(uint32_t frame, uint16_t reason_code);
uint16_t me_build_del_ba(uint32_t frame, bam_env_tag * bam_env, uint16_t reason_code);
uint16_t me_build_probe_rsp(uint32_t frame, uint8_t vif_idx);
void me_del_baparamset_frame(uint32_t addr, bam_env_tag * bam_env);
void me_extract_country_reg(uint32_t buffer, uint16_t buflen, mac_bss_info * bss);
int me_extract_csa(uint32_t buffer, uint16_t buflen, uint8_t * mode, mm_chan_ctxt_add_req * chan_desc);
void me_extract_mobility_domain(uint32_t buffer, uint16_t buflen, mac_bss_info * bss);
void me_extract_power_constraint(uint32_t buffer, uint16_t buflen, mac_bss_info * bss);
void me_extract_rate_set(uint32_t buffer, uint16_t buflen, mac_rateset * mac_rate_set_ptr);
#if 0 //TODO EXISTS ALEADY
/**
* @file me_mgmtframe.c
* Source file for BL602
*/
#include "me_mgmtframe.h"


uint32_t me_add_ie_ssid(uint32_t *frame_addr, uint8_t ssid_len, uint8_t *p_ssid);
uint32_t me_add_ie_supp_rates(uint32_t *frame_addr, struct mac_rateset *p_rateset);
uint32_t me_add_ie_ext_supp_rates(uint32_t *frame_addr, struct mac_rateset *p_rateset);
uint32_t me_add_ie_ds(uint32_t *frame_addr, uint8_t channel);
uint32_t me_add_ie_erp(uint32_t *frame_addr, uint8_t erp_info);
uint32_t me_add_ie_rsn(uint32_t *frame_addr, uint8_t enc_type);
uint32_t me_add_ie_wpa(uint32_t *frame_addr, uint8_t enc_type);
uint32_t me_add_ie_tim(uint32_t *frame_addr, uint8_t dtim_period);
uint32_t me_add_ie_ht_capa(uint32_t *frame_addr);
uint32_t me_add_ie_ht_oper(uint32_t *frame_addr, struct vif_info_tag *p_vif_entry);
uint16_t me_build_authenticate(uint32_t frame, uint16_t algo_type, uint16_t seq_nbr, uint16_t status_code, uint32_t *challenge_array_ptr);
uint16_t me_build_deauthenticate(uint32_t frame, uint16_t reason_code);
uint16_t me_build_associate_req(uint32_t frame, struct mac_bss_info *bss, struct mac_addr *old_ap_addr_ptr, uint8_t vif_idx, uint32_t *ie_addr, uint16_t *ie_len, const struct sm_connect_req *con_par);
uint16_t me_build_add_ba_req(uint32_t frame, struct bam_env_tag *bam_env);
uint16_t me_build_add_ba_rsp(uint32_t frame, struct bam_env_tag *bam_env, uint16_t param, uint8_t dialog_token, uint16_t status_code);
uint16_t me_build_del_ba(uint32_t frame, struct bam_env_tag *bam_env, uint16_t reason_code);
void me_extract_rate_set(uint32_t buffer, uint16_t buflen, struct mac_rateset *mac_rate_set_ptr);
void me_extract_power_constraint(uint32_t buffer, uint16_t buflen, struct mac_bss_info *bss);
void me_extract_country_reg(uint32_t buffer, uint16_t buflen, struct mac_bss_info *bss);
void me_extract_mobility_domain(uint32_t buffer, uint16_t buflen, struct mac_bss_info *bss);
int me_extract_csa(uint32_t buffer, uint16_t buflen, uint8_t *mode, struct mm_chan_ctxt_add_req *chan_desc);
uint16_t me_build_beacon(uint32_t frame, uint8_t vif_idx, uint16_t *tim_oft, uint8_t *tim_len, uint8_t hidden_ssid);
uint16_t me_build_probe_rsp(uint32_t frame, uint8_t vif_idx);
uint16_t me_build_associate_rsp(uint32_t frame, uint8_t vif_idx, uint16_t status_code, struct me_sta_add_req *req);




/** me_add_ie_ssid
 */
uint32_t me_add_ie_ssid(uint32_t *frame_addr, uint8_t ssid_len, uint8_t *p_ssid)
{
	ASSER_ERR(FALSE);
	return 0xffffffff;
}

/** me_add_ie_supp_rates
 */
uint32_t me_add_ie_supp_rates(uint32_t *frame_addr, struct mac_rateset *p_rateset)
{
	ASSER_ERR(FALSE);
	return 0xffffffff;
}

/** me_add_ie_ext_supp_rates
 */
uint32_t me_add_ie_ext_supp_rates(uint32_t *frame_addr, struct mac_rateset *p_rateset)
{
	ASSER_ERR(FALSE);
	return 0xffffffff;
}

/** me_add_ie_ds
 */
uint32_t me_add_ie_ds(uint32_t *frame_addr, uint8_t channel)
{
	ASSER_ERR(FALSE);
	return 0xffffffff;
}

/** me_add_ie_erp
 */
uint32_t me_add_ie_erp(uint32_t *frame_addr, uint8_t erp_info)
{
	ASSER_ERR(FALSE);
	return 0xffffffff;
}

/** me_add_ie_rsn
 */
uint32_t me_add_ie_rsn(uint32_t *frame_addr, uint8_t enc_type)
{
	ASSER_ERR(FALSE);
	return 0xffffffff;
}

/** me_add_ie_wpa
 */
uint32_t me_add_ie_wpa(uint32_t *frame_addr, uint8_t enc_type)
{
	ASSER_ERR(FALSE);
	return 0xffffffff;
}

/** me_add_ie_tim
 */
uint32_t me_add_ie_tim(uint32_t *frame_addr, uint8_t dtim_period)
{
	ASSER_ERR(FALSE);
	return 0xffffffff;
}

/** me_add_ie_ht_capa
 */
uint32_t me_add_ie_ht_capa(uint32_t *frame_addr)
{
	ASSER_ERR(FALSE);
	return 0xffffffff;
}

/** me_add_ie_ht_oper
 */
uint32_t me_add_ie_ht_oper(uint32_t *frame_addr, struct vif_info_tag *p_vif_entry)
{
	ASSER_ERR(FALSE);
	return 0xffffffff;
}

/** me_build_authenticate
 */
uint16_t me_build_authenticate(uint32_t frame, uint16_t algo_type, uint16_t seq_nbr, uint16_t status_code, uint32_t *challenge_array_ptr)
{
	ASSER_ERR(FALSE);
	return 0xffff;
}

/** me_build_deauthenticate
 */
uint16_t me_build_deauthenticate(uint32_t frame, uint16_t reason_code)
{
	ASSER_ERR(FALSE);
	return 0xffff;
}

/** me_build_associate_req
 */
uint16_t me_build_associate_req(uint32_t frame, struct mac_bss_info *bss, struct mac_addr *old_ap_addr_ptr, uint8_t vif_idx, uint32_t *ie_addr, uint16_t *ie_len, const struct sm_connect_req *con_par)
{
	ASSER_ERR(FALSE);
	return 0xffff;
}

/** me_build_add_ba_req
 */
uint16_t me_build_add_ba_req(uint32_t frame, struct bam_env_tag *bam_env)
{
	ASSER_ERR(FALSE);
	return 0xffff;
}

/** me_build_add_ba_rsp
 */
uint16_t me_build_add_ba_rsp(uint32_t frame, struct bam_env_tag *bam_env, uint16_t param, uint8_t dialog_token, uint16_t status_code)
{
	ASSER_ERR(FALSE);
	return 0xffff;
}

/** me_build_del_ba
 */
uint16_t me_build_del_ba(uint32_t frame, struct bam_env_tag *bam_env, uint16_t reason_code)
{
	ASSER_ERR(FALSE);
	return 0xffff;
}

/** me_extract_rate_set
 */
void me_extract_rate_set(uint32_t buffer, uint16_t buflen, struct mac_rateset *mac_rate_set_ptr)
{
	ASSER_ERR(FALSE);
	return;
}

/** me_extract_power_constraint
 */
void me_extract_power_constraint(uint32_t buffer, uint16_t buflen, struct mac_bss_info *bss)
{
	ASSER_ERR(FALSE);
	return;
}

/** me_extract_country_reg
 */
void me_extract_country_reg(uint32_t buffer, uint16_t buflen, struct mac_bss_info *bss)
{
	ASSER_ERR(FALSE);
	return;
}

/** me_extract_mobility_domain
 */
void me_extract_mobility_domain(uint32_t buffer, uint16_t buflen, struct mac_bss_info *bss)
{
	ASSER_ERR(FALSE);
	return;
}

/** me_extract_csa
 */
int me_extract_csa(uint32_t buffer, uint16_t buflen, uint8_t *mode, struct mm_chan_ctxt_add_req *chan_desc)
{
	ASSER_ERR(FALSE);
	return -1;
}

/** me_build_beacon
 */
uint16_t me_build_beacon(uint32_t frame, uint8_t vif_idx, uint16_t *tim_oft, uint8_t *tim_len, uint8_t hidden_ssid)
{
	ASSER_ERR(FALSE);
	return 0xffff;
}

/** me_build_probe_rsp
 */
uint16_t me_build_probe_rsp(uint32_t frame, uint8_t vif_idx)
{
	ASSER_ERR(FALSE);
	return 0xffff;
}

/** me_build_associate_rsp
 */
uint16_t me_build_associate_rsp(uint32_t frame, uint8_t vif_idx, uint16_t status_code, struct me_sta_add_req *req)
{
	ASSER_ERR(FALSE);
	return 0xffff;
}
#endf 0 //TODO EXISTS ALEADY
