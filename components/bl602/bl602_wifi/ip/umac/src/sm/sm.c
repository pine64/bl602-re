#include "sm.h"


struct sm_env_tag sm_env;


static void sm_frame_tx_cfm_handler(void *env, uint32_t status)
{
	__builtin_trap();
}

void sm_bss_config_push(void *param)
{
	__builtin_trap();
}

static void sm_deauth_cfm(void *env, uint32_t status)
{
	__builtin_trap();
}

static void sm_delete_resources(struct vif_info_tag *vif)
{
	__builtin_trap();
}

void sm_init(void)
{
	__builtin_trap();
}

void sm_get_bss_params(const struct mac_addr **bssid, const struct scan_chan_tag **chan)
{
	__builtin_trap();
}

void sm_scan_bss(const struct mac_addr *bssid, const struct scan_chan_tag *chan)
{
	__builtin_trap();
}

void sm_join_bss(const struct mac_addr *bssid, const struct scan_chan_tag *chan, bool passive)
{
	__builtin_trap();
}

uint8_t sm_add_chan_ctx(uint8_t *p_chan_idx)
{
	__builtin_trap();
}

void sm_set_bss_param(void)
{
	__builtin_trap();
}

void sm_send_next_bss_param(void)
{
	__builtin_trap();
}

void sm_disconnect(uint8_t vif_index, uint16_t reason_code)
{
	__builtin_trap();
}

void sm_disconnect_process(struct vif_info_tag *vif, uint16_t reason)
{
	__builtin_trap();
}

void sm_connect_ind(uint16_t status)
{
	__builtin_trap();
}

void sm_auth_send(uint16_t auth_seq, uint32_t *challenge)
{
	__builtin_trap();
}

void sm_assoc_req_send(void)
{
	__builtin_trap();
}

void sm_assoc_done(uint16_t aid)
{
	__builtin_trap();
}

void sm_auth_handler(const struct rxu_mgt_ind *param)
{
	__builtin_trap();
}

void sm_assoc_rsp_handler(const struct rxu_mgt_ind *param)
{
	__builtin_trap();
}

int sm_deauth_handler(const struct rxu_mgt_ind *param)
{
	__builtin_trap();
}

static void sm_supplicant_deauth_cfm(void *env, uint32_t status)
{
	__builtin_trap();
}

void sm_handle_supplicant_result(uint8_t sta_id, uint16_t reason_code)
{
	__builtin_trap();
}
