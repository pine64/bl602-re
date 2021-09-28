#include <ke_msg.h>

/** _patch_ble_ke_msg_alloc
 */
uint32_t _patch_ble_ke_msg_alloc(void *pRet, const ke_msg_id_t id, const ke_task_id_t dest_id, const ke_task_id_t src_id, const uint16_t param_len)
{
	__builtin_trap();
}

/** *ble_ke_msg_alloc
 */
void *ble_ke_msg_alloc(const ke_msg_id_t id, const ke_task_id_t dest_id, const ke_task_id_t src_id, const uint16_t param_len)
{
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
	__builtin_trap();
}
