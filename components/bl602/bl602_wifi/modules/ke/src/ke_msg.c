#include "ke_msg.h"


void *ke_msg_alloc(const ke_msg_id_t id, const ke_task_id_t dest_id, const ke_task_id_t src_id, const uint16_t param_len)
{
	__builtin_trap();
}

void ke_msg_send(const void *param_ptr)
{
	__builtin_trap();
}

void bl_rx_e2a_handler(void)
{
	__builtin_trap();
}

void ke_msg_send_basic(const ke_msg_id_t id, const ke_task_id_t dest_id, const ke_task_id_t src_id)
{
	__builtin_trap();
}

void ke_msg_forward(const void *param_ptr, const ke_task_id_t dest_id, const ke_task_id_t src_id)
{
	__builtin_trap();
}

void ke_msg_forward_and_change_id(const void *param_ptr, const ke_msg_id_t msg_id, const ke_task_id_t dest_id, const ke_task_id_t src_id)
{
	__builtin_trap();
}

void ke_msg_free(const struct ke_msg *msg)
{
	__builtin_trap();
}
