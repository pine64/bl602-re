#include "ke_task.h"


static const struct ke_task_desc TASK_DESC[14];


static bool cmp_dest_id(const struct co_list_hdr *msg, uint32_t dest_id)
{
	__builtin_trap();
}

void ke_task_saved_update(const ke_task_id_t ke_task_id)
{
	__builtin_trap();
}

void ke_state_set(const ke_task_id_t id, const ke_state_t state_id)
{
	__builtin_trap();
}

ke_state_t ke_state_get(const ke_task_id_t id)
{
	__builtin_trap();
}

static ke_msg_func_t ke_handler_search(const ke_msg_id_t msg_id, const struct ke_state_handler *state_handler)
{
	__builtin_trap();
}

ke_msg_func_t ke_task_handler_get(const ke_msg_id_t msg_id, const ke_task_id_t task_id)
{
	__builtin_trap();
}

void ke_task_schedule(int dummy)
{
	__builtin_trap();
}

int ke_msg_discard(const ke_msg_id_t msgid, const void *param, const ke_task_id_t dest_id, const ke_task_id_t src_id)
{
	__builtin_trap();
}

int ke_msg_save(const ke_msg_id_t msgid, const void *param, const ke_task_id_t dest_id, const ke_task_id_t src_id)
{
	__builtin_trap();
}
