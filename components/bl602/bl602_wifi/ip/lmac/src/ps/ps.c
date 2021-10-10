#include "ps.h"


struct ps_env_tag ps_env;


static uint8_t ps_send_pspoll(struct vif_info_tag *vif_entry)
{
	__builtin_trap();
}

bool ps_check_tx_status(struct vif_info_tag *p_vif_entry, uint32_t status, cfm_func_ptr cfm)
{
	__builtin_trap();
}

static void ps_enable_cfm(void *env, uint32_t status)
{
	__builtin_trap();
}

static void ps_disable_cfm(void *env, uint32_t status)
{
	__builtin_trap();
}

static void ps_dpsm_update(bool pause)
{
	__builtin_trap();
}

static void ps_uapsd_timer_handle(void *env)
{
	__builtin_trap();
}

void ps_init(void)
{
	__builtin_trap();
}

void ps_set_mode(uint8_t mode, ke_task_id_t taskid)
{
	__builtin_trap();
}

bool ps_check_tim(uint32_t a_tim, uint16_t aid)
{
	__builtin_trap();
}

void ps_polling_frame(struct vif_info_tag *vif_entry)
{
	__builtin_trap();
}

void ps_check_beacon(uint32_t tim, uint16_t len, struct vif_info_tag *vif_entry)
{
	__builtin_trap();
}

void ps_check_frame(uint8_t *frame, uint32_t statinfo, struct vif_info_tag *vif_entry)
{
	__builtin_trap();
}

void ps_check_tx_frame(uint8_t staid, uint8_t tid)
{
	__builtin_trap();
}

void ps_uapsd_set(struct vif_info_tag *vif_entry, uint8_t hw_queue, bool uapsd)
{
	__builtin_trap();
}

void ps_traffic_status_update(uint8_t vif_index, uint8_t new_status)
{
	__builtin_trap();
}
