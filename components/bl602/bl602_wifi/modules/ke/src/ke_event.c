#include "ke_event.h"


typedef void (*evt_ptr_t)(int);

struct ke_evt_tag {
  evt_ptr_t func; // +0
  int param; // +4
};


void bl_event_handle(int param)
{
	__builtin_trap();
}

void bl_main_event_handle(void)
{
	__builtin_trap();
}


static const struct ke_evt_tag ke_evt_hdlr[32];


void bl60x_fw_dump_statistic(int forced)
{
	__builtin_trap();
}

void bl_fw_statistic_dump(int param)
{
	__builtin_trap();
}

void bl_utils_dump(void)
{
	__builtin_trap();
}

void txl_frame_dump(void)
{
	__builtin_trap();
}

void ipc_emb_dump(void)
{
	__builtin_trap();
}

void txl_cntrl_env_dump(void)
{
	__builtin_trap();
}

void txl_cfm_dump(void)
{
	__builtin_trap();
}

void rxl_hwdesc_dump(void)
{
	__builtin_trap();
}

void rxl_cntrl_dump(void)
{
	__builtin_trap();
}

void hal_mib_dump(void)
{
	__builtin_trap();
}

void ke_evt_set(const evt_field_t event)
{
	__builtin_trap();
}

void ke_evt_clear(const evt_field_t event)
{
	__builtin_trap();
}

void ke_evt_schedule(void)
{
	__builtin_trap();
}

void ke_init(void)
{
	__builtin_trap();
}

void ke_flush(void)
{
	__builtin_trap();
}
