#include "sta_mgmt.h"


struct sta_info_env_tag sta_info_env;
struct sta_info_tag sta_info_tab[12];


static void sta_mgmt_entry_init(struct sta_info_tag *sta_entry)
{
	__builtin_trap();
}

void sta_mgmt_init(void)
{
	__builtin_trap();
}

uint8_t sta_mgmt_register(const struct mm_sta_add_req *param, uint8_t *sta_idx)
{
	__builtin_trap();
}

void sta_mgmt_unregister(uint8_t sta_idx)
{
	__builtin_trap();
}

void sta_mgmt_add_key(const struct mm_key_add_req *param, uint8_t hw_key_idx)
{
	__builtin_trap();
}

void sta_mgmt_del_key(struct sta_info_tag *sta)
{
	__builtin_trap();
}

int sta_mgmt_send_postponed_frame(struct vif_info_tag *p_vif_entry, struct sta_info_tag *p_sta_entry, int limit)
{
	__builtin_trap();
}
