#include "vif_mgmt.h"


struct vif_mgmt_env_tag vif_mgmt_env;
struct vif_info_tag vif_info_tab[2];


static void vif_mgmt_bcn_to_evt(void *env)
{
	__builtin_trap();
}

void vif_mgmt_entry_init(struct vif_info_tag *vif_entry)
{
	__builtin_trap();
}

void vif_mgmt_init(void)
{
	__builtin_trap();
}

void vif_mgmt_reset(void)
{
	__builtin_trap();
}

uint8_t vif_mgmt_register(const struct mac_addr *mac_addr, uint8_t vif_type, bool p2p, uint8_t *vif_idx)
{
	__builtin_trap();
}

void vif_mgmt_unregister(uint8_t vif_idx)
{
	__builtin_trap();
}

void vif_mgmt_add_key(const struct mm_key_add_req *param, uint8_t hw_key_idx)
{
	__builtin_trap();
}

void vif_mgmt_del_key(struct vif_info_tag *vif, uint8_t keyid)
{
	__builtin_trap();
}

void vif_mgmt_send_postponed_frame(struct vif_info_tag *p_vif_entry)
{
	__builtin_trap();
}

void vif_mgmt_bcn_to_prog(struct vif_info_tag *p_vif_entry)
{
	__builtin_trap();
}

void vif_mgmt_bcn_recv(struct vif_info_tag *p_vif_entry)
{
	__builtin_trap();
}

void vif_mgmt_set_ap_bcn_int(struct vif_info_tag *p_vif_entry, uint16_t bcn_int)
{
	__builtin_trap();
}

void vif_mgmt_switch_channel(struct vif_info_tag *p_vif_entry)
{
	__builtin_trap();
}

struct vif_info_tag *vif_mgmt_get_first_ap_inf(void)
{
	__builtin_trap();
}
