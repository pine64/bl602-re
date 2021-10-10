#include "mm_bcn.h"


struct mm_bcn_env_tag mm_bcn_env;


static void mm_tim_update_proceed(const struct mm_tim_update_req *param)
{
	__builtin_trap();
}

void mm_bcn_desc_prep(struct vif_info_tag *vif_entry, const struct mm_bcn_change_req *param)
{
	__builtin_trap();
}

void mm_bcn_csa_init(struct vif_info_tag *vif_entry, const struct mm_bcn_change_req *param)
{
	__builtin_trap();
}

void mm_bcn_send_csa_counter_ind(uint8_t vif_index, uint8_t csa_count)
{
	__builtin_trap();
}

uint8_t mm_bcn_build(struct vif_info_tag *vif_entry)
{
	__builtin_trap();
}

static void mm_bcn_updated(void *env, int dma_queue)
{
	__builtin_trap();
}

static void mm_bcn_update(const struct mm_bcn_change_req *param)
{
	__builtin_trap();
}

static void mm_bcn_transmitted(void *env, uint32_t status)
{
	__builtin_trap();
}

void mm_bcn_init_tim(struct vif_info_tag *vif_entry)
{
	__builtin_trap();
}

void mm_bcn_init(void)
{
	__builtin_trap();
}

void mm_bcn_init_vif(struct vif_info_tag *vif_entry)
{
	__builtin_trap();
}

void mm_bcn_change(const struct mm_bcn_change_req *param)
{
	__builtin_trap();
}

void mm_tim_update(const struct mm_tim_update_req *param)
{
	__builtin_trap();
}

void mm_bcn_transmit(void)
{
	__builtin_trap();
}
