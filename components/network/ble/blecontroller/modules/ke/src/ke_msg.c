#include <ke_msg.h>

#include <stdint.h>

#include <arch/arch.h>
#include <co_string.h>
#include <ke_mem.h>

#define NO_NEXT ((void *) 0xFFFFFFFF)

/** _patch_ble_ke_msg_alloc
 */
uint32_t _patch_ble_ke_msg_alloc(void *pRet, const ke_msg_id_t id, const ke_task_id_t dest_id, const ke_task_id_t src_id, const uint16_t param_len)
{
	struct ke_msg *msg = ble_ke_malloc(sizeof(struct ke_msg) + param_len, 0);
	msg->hdr.next = NO_NEXT;
	msg->id = id;
	msg->dest_id = dest_id;
	msg->src_id = src_id;
	msg->param_len = param_len;
	*(void **) pRet = msg->param;
	(*ble_memset_ptr)(msg->param, 0, param_len);
	return 1;
}

/** *ble_ke_msg_alloc
 */
void *ble_ke_msg_alloc(const ke_msg_id_t id, const ke_task_id_t dest_id, const ke_task_id_t src_id, const uint16_t param_len)
{
#if 0
	void *res;
	if ((*_rom_patch_hook)(&res, id, dest_id, src_id, param_len) != 0)
	{
		return res;
	}
	struct ke_msg *msg = ble_ke_malloc(sizeof(struct ke_msg) + param_len, 0);
	msg->hdr.next = NO_NEXT;
	msg->id = id;
	msg->dest_id = dest_id;
	msg->src_id = src_id;
	msg->param_len = param_len;
	(*ble_memset_ptr)(msg->param, 0, param_len);
	return msg->param;
#endif
	__builtin_trap();
}

/** _patch_ble_ke_msg_send
 */
uint32_t _patch_ble_ke_msg_send(void *pRet, const void *param_ptr)
{
	__builtin_trap();
}

/** ble_ke_msg_send
 */
void ble_ke_msg_send(const void *param_ptr)
{
	__builtin_trap();
}

/** _patch_ble_ke_msg_get_sent_num
 */
uint32_t _patch_ble_ke_msg_get_sent_num(void *pRet)
{
	__builtin_trap();
}

/** ble_ke_msg_get_sent_num
 */
uint16_t ble_ke_msg_get_sent_num(void)
{
	__builtin_trap();
}

/** _patch_ble_ke_msg_send_basic
 */
uint32_t _patch_ble_ke_msg_send_basic(void *pRet, const ke_msg_id_t id, const ke_task_id_t dest_id, const ke_task_id_t src_id)
{
	__builtin_trap();
}

/** ble_ke_msg_send_basic
 */
void ble_ke_msg_send_basic(const ke_msg_id_t id, const ke_task_id_t dest_id, const ke_task_id_t src_id)
{
	__builtin_trap();
}

/** ble_ke_msg_forward
 */
void ble_ke_msg_forward(const void *param_ptr, const ke_task_id_t dest_id, const ke_task_id_t src_id)
{
	__builtin_trap();
}

/** ble_ke_msg_forward_new_id
 */
void ble_ke_msg_forward_new_id(const void *param_ptr, const ke_msg_id_t msg_id, const ke_task_id_t dest_id, const ke_task_id_t src_id)
{
	__builtin_trap();
}

/** _patch_ble_ke_msg_free
 */
uint32_t _patch_ble_ke_msg_free(void *pRet, const struct ke_msg *msg)
{
	__builtin_trap();
}

/** ble_ke_msg_free
 */
void ble_ke_msg_free(const struct ke_msg *msg)
{
	__builtin_trap();
}

/** ble_ke_msg_dest_id_get
 */
ke_msg_id_t ble_ke_msg_dest_id_get(const void *param_ptr)
{
	__builtin_trap();
}

/** ble_ke_msg_src_id_get
 */
ke_msg_id_t ble_ke_msg_src_id_get(const void *param_ptr)
{
	__builtin_trap();
}

/** ble_ke_msg_in_queue
 */
bool ble_ke_msg_in_queue(const void *param_ptr)
{
	return ((struct ke_msg *) param_ptr)[-1].hdr.next != NO_NEXT;
}
