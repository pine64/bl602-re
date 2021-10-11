#ifndef __ME_MGMTFRAME_H__
#define __ME_MGMTFRAME_H__

#include <stdint.h>

#include <bam/bam.h>
#include <me/me.h>
#include <sm/sm.h>
#include <mac.h>


uint16_t me_build_authenticate(uint32_t frame, uint16_t algo_type, uint16_t seq_nbr, uint16_t status_code, uint32_t *challenge_array_ptr);
uint16_t me_build_deauthenticate(uint32_t frame, uint16_t reason_code);
uint16_t me_build_associate_req(uint32_t frame, struct mac_bss_info *bss, struct mac_addr *old_ap_addr_ptr, uint8_t vif_idx, uint32_t *ie_addr, uint16_t *ie_len, const struct sm_connect_req *con_par);
uint16_t me_build_beacon(uint32_t frame, uint8_t vif_idx, uint16_t *tim_oft, uint8_t *tim_len, uint8_t hidden_ssid);
uint16_t me_build_probe_rsp(uint32_t frame, uint8_t vif_idx);
uint16_t me_build_associate_rsp(uint32_t frame, uint8_t vif_idx, uint16_t status_code, struct me_sta_add_req *req);
void me_extract_rate_set(uint32_t buffer, uint16_t buflen, struct mac_rateset *mac_rate_set_ptr);
uint16_t me_build_add_ba_req(uint32_t frame, struct bam_env_tag *bam_env);
uint16_t me_build_add_ba_rsp(uint32_t frame, struct bam_env_tag *bam_env, uint16_t param, uint8_t dialog_token, uint16_t status_code);
uint16_t me_build_del_ba(uint32_t frame, struct bam_env_tag *bam_env, uint16_t reason_code);
void me_extract_power_constraint(uint32_t buffer, uint16_t buflen, struct mac_bss_info *bss);
void me_extract_country_reg(uint32_t buffer, uint16_t buflen, struct mac_bss_info *bss);
void me_extract_mobility_domain(uint32_t buffer, uint16_t buflen, struct mac_bss_info *bss);
int me_extract_csa(uint32_t buffer, uint16_t buflen, uint8_t *mode, struct mm_chan_ctxt_add_req *chan_desc);

#endif // __ME_MGMTFRAME_H__
