#include "dbg_task.h"

#include <ke_msg.h>
#include <ke_task.h>


static int dbg_mem_read_req_handler(const ke_msg_id_t msgid, const struct dbg_mem_read_req *param, const ke_task_id_t dest_id, const ke_task_id_t src_id)
{
	__builtin_trap();
}

static int dbg_mem_write_req_handler(const ke_msg_id_t msgid, const struct dbg_mem_write_req *param, const ke_task_id_t dest_id, const ke_task_id_t src_id)
{
	__builtin_trap();
}

static int dbg_set_mod_filter_req_handler(const ke_msg_id_t msgid, const struct dbg_set_mod_filter_req *param, const ke_task_id_t dest_id, const ke_task_id_t src_id)
{
	__builtin_trap();
}

static int dbg_set_sev_filter_req_handler(const ke_msg_id_t msgid, const struct dbg_set_sev_filter_req *param, const ke_task_id_t dest_id, const ke_task_id_t src_id)
{
	__builtin_trap();
}

static int dbg_get_sys_stat_req_handler(const ke_msg_id_t msgid, const void *param, const ke_task_id_t dest_id, const ke_task_id_t src_id)
{
	__builtin_trap();
}

extern const struct ke_msg_handler dbg_default_state[5];
const struct ke_state_handler dbg_default_handler;
