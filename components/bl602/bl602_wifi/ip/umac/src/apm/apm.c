#include "apm.h"


struct apm apm_env;

void apm_bss_config_push(void* param)
{
	__builtin_trap();
}

void apm_init(void)
{
	__builtin_trap();
}

void apm_start_cfm(uint8_t status)
{
	__builtin_trap();
}

void apm_set_bss_param(void)
{
	__builtin_trap();
}

void apm_send_next_bss_param(void)
{
	__builtin_trap();
}

void apm_bcn_set(void)
{
	__builtin_trap();
}

void apm_stop(struct vif_info_tag *vif)
{
	__builtin_trap();
}

bool apm_tx_int_ps_check(struct txdesc *txdesc)
{
	__builtin_trap();
}

void apm_tx_int_ps_postpone(struct txdesc *txdesc, struct sta_info_tag *sta)
{
	__builtin_trap();
}

struct txdesc *apm_tx_int_ps_get_postpone(struct vif_info_tag *vif, struct sta_info_tag *sta, int *stop)
{
	__builtin_trap();
}

void apm_tx_int_ps_clear(struct vif_info_tag *vif, uint8_t sta_idx)
{
	__builtin_trap();
}

static int _aid_list_delete(uint8_t* mac)
{
	__builtin_trap();
}

int _aid_list_add(uint8_t* mac)
{
	__builtin_trap();
}

static void apm_sta_delete(uint8_t sta_idx, uint8_t* mac)
{
	__builtin_trap();
}

void apm_sta_fw_delete(uint8_t sta_idx)
{
	__builtin_trap();
}

void apm_sta_add(uint8_t sta_idx)
{
	__builtin_trap();
}

void apm_tx_cfm_handler(void* env, uint32_t status)
{
	__builtin_trap();
}

void apm_send_mlme(struct vif_info_tag* vif, uint16_t fctl, struct mac_addr const* ra, cfm_func_ptr cfm_func, void* env, uint16_t status_code)
{
	__builtin_trap();
}

bool apm_embedded_enabled(struct vif_info_tag* vif)
{
	__builtin_trap();
}

void apm_probe_req_handler(struct rxu_mgt_ind const* param)
{
	__builtin_trap();
}

void apm_auth_handler(struct rxu_mgt_ind const* param)
{
	__builtin_trap();
}

void apm_assoc_req_handler(struct rxu_mgt_ind const* param, bool is_reassoc)
{
	__builtin_trap();
}

void apm_deauth_handler(struct rxu_mgt_ind const* param)
{
	__builtin_trap();
}

void apm_disassoc_handler(struct rxu_mgt_ind const* param)
{
	__builtin_trap();
}

void apm_beacon_handler(struct rxu_mgt_ind const* param)
{
	__builtin_trap();
}

void apm_sta_remove(uint8_t vif_idx, uint8_t sta_idx)
{
	__builtin_trap();
}
