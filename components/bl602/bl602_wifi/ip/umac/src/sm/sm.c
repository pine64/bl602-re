
uint8_t sm_add_chan_ctx(uint8_t * p_chan_idx);
void sm_assoc_done(uint16_t aid);
void sm_assoc_req_send(void);
void sm_assoc_rsp_handler(rxu_mgt_ind * param);
void sm_auth_handler(rxu_mgt_ind * param);
void sm_auth_send(uint16_t auth_seq, uint32_t * challenge);
void sm_bss_config_push(void * param);
void sm_connect_ind(uint16_t status);
void sm_deauth_cfm(void * env, uint32_t status);
int sm_deauth_handler(rxu_mgt_ind * param);
void sm_delete_resources(vif_info_tag * vif);
void sm_disconnect(uint8_t vif_index, uint16_t reason_code);
void sm_disconnect_process(vif_info_tag * vif, uint16_t reason);
void sm_frame_tx_cfm_handler(void * env, uint32_t status);
void sm_get_bss_params(mac_addr * * bssid, scan_chan_tag * * chan);
void sm_handle_supplicant_result(uint8_t sta_id, uint16_t reason_code);
void sm_join_bss(mac_addr * bssid, scan_chan_tag * chan, _Bool passive);
void sm_scan_bss(mac_addr * bssid, scan_chan_tag * chan);
void sm_send_next_bss_param(void);
void sm_set_bss_param(void);
void sm_supplicant_deauth_cfm(void * env, uint32_t status);
#if 0 //TODO EXISTS ALEADY
/**
* @file sm.c
* Source file for BL602
*/
#include "sm.h"


struct sm_env_tag sm_env;

static void sm_frame_tx_cfm_handler(void *env, uint32_t status);
static void sm_deauth_cfm(void *env, uint32_t status);
static void sm_delete_resources(struct vif_info_tag *vif);
void sm_init(void);
void sm_get_bss_params(const struct mac_addr **bssid, const struct scan_chan_tag **chan);
void sm_scan_bss(const struct mac_addr *bssid, const struct scan_chan_tag *chan);
void sm_join_bss(const struct mac_addr *bssid, const struct scan_chan_tag *chan, bool passive);
uint8_t sm_add_chan_ctx(uint8_t *p_chan_idx);
void sm_set_bss_param(void);
void sm_send_next_bss_param(void);
void sm_disconnect(uint8_t vif_index, uint16_t reason_code);
void sm_disconnect_process(struct vif_info_tag *vif, uint16_t reason);
void sm_connect_ind(uint16_t status);
void sm_auth_send(uint16_t auth_seq, uint32_t *challenge);
void sm_assoc_req_send(void);
void sm_assoc_done(uint16_t aid);
void sm_auth_handler(const struct rxu_mgt_ind *param);
void sm_assoc_rsp_handler(const struct rxu_mgt_ind *param);
int sm_deauth_handler(const struct rxu_mgt_ind *param);
static void sm_supplicant_deauth_cfm(void *env, uint32_t status);
void sm_handle_supplicant_result(uint8_t sta_id, uint16_t reason_code);




/** sm_init
 */
void sm_init(void)
{
	ASSER_ERR(FALSE);
	return;
}

/** sm_get_bss_params
 */
void sm_get_bss_params(const struct mac_addr **bssid, const struct scan_chan_tag **chan)
{
	ASSER_ERR(FALSE);
	return;
}

/** sm_scan_bss
 */
void sm_scan_bss(const struct mac_addr *bssid, const struct scan_chan_tag *chan)
{
	ASSER_ERR(FALSE);
	return;
}

/** sm_join_bss
 */
void sm_join_bss(const struct mac_addr *bssid, const struct scan_chan_tag *chan, bool passive)
{
	ASSER_ERR(FALSE);
	return;
}

/** sm_add_chan_ctx
 */
uint8_t sm_add_chan_ctx(uint8_t *p_chan_idx)
{
	ASSER_ERR(FALSE);
	return 0xff;
}

/** sm_set_bss_param
 */
void sm_set_bss_param(void)
{
	ASSER_ERR(FALSE);
	return;
}

/** sm_send_next_bss_param
 */
void sm_send_next_bss_param(void)
{
	ASSER_ERR(FALSE);
	return;
}

/** sm_disconnect
 */
void sm_disconnect(uint8_t vif_index, uint16_t reason_code)
{
	ASSER_ERR(FALSE);
	return;
}

/** sm_disconnect_process
 */
void sm_disconnect_process(struct vif_info_tag *vif, uint16_t reason)
{
	ASSER_ERR(FALSE);
	return;
}

/** sm_connect_ind
 */
void sm_connect_ind(uint16_t status)
{
	ASSER_ERR(FALSE);
	return;
}

/** sm_auth_send
 */
void sm_auth_send(uint16_t auth_seq, uint32_t *challenge)
{
	ASSER_ERR(FALSE);
	return;
}

/** sm_assoc_req_send
 */
void sm_assoc_req_send(void)
{
	ASSER_ERR(FALSE);
	return;
}

/** sm_assoc_done
 */
void sm_assoc_done(uint16_t aid)
{
	ASSER_ERR(FALSE);
	return;
}

/** sm_auth_handler
 */
void sm_auth_handler(const struct rxu_mgt_ind *param)
{
	ASSER_ERR(FALSE);
	return;
}

/** sm_assoc_rsp_handler
 */
void sm_assoc_rsp_handler(const struct rxu_mgt_ind *param)
{
	ASSER_ERR(FALSE);
	return;
}

/** sm_deauth_handler
 */
int sm_deauth_handler(const struct rxu_mgt_ind *param)
{
	ASSER_ERR(FALSE);
	return -1;
}

/** sm_handle_supplicant_result
 */
void sm_handle_supplicant_result(uint8_t sta_id, uint16_t reason_code)
{
	ASSER_ERR(FALSE);
	return;
}

/** sm_frame_tx_cfm_handler
 */
static void sm_frame_tx_cfm_handler(void *env, uint32_t status)
{
	ASSER_ERR(FALSE);
	return;
}

/** sm_deauth_cfm
 */
static void sm_deauth_cfm(void *env, uint32_t status)
{
	ASSER_ERR(FALSE);
	return;
}

/** sm_delete_resources
 */
static void sm_delete_resources(struct vif_info_tag *vif)
{
	ASSER_ERR(FALSE);
	return;
}

/** sm_supplicant_deauth_cfm
 */
static void sm_supplicant_deauth_cfm(void *env, uint32_t status)
{
	ASSER_ERR(FALSE);
	return;
}
#endf 0 //TODO EXISTS ALEADY
