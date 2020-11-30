/**
* @file ke_msg.c
* Source file for BL602
*/
#include "ke_msg.h"


uint32_t _patch_ble_ke_msg_alloc(void *pRet, const ke_msg_id_t id, const ke_task_id_t dest_id, const ke_task_id_t src_id, const uint16_t param_len);
void *ble_ke_msg_alloc(const ke_msg_id_t id, const ke_task_id_t dest_id, const ke_task_id_t src_id, const uint16_t param_len);
uint32_t _patch_ble_ke_msg_send(void *pRet, const void *param_ptr);
void ble_ke_msg_send(const void *param_ptr);
uint32_t _patch_ble_ke_msg_get_sent_num(void *pRet);
uint16_t ble_ke_msg_get_sent_num(void);
uint32_t _patch_ble_ke_msg_send_basic(void *pRet, const ke_msg_id_t id, const ke_task_id_t dest_id, const ke_task_id_t src_id);
void ble_ke_msg_send_basic(const ke_msg_id_t id, const ke_task_id_t dest_id, const ke_task_id_t src_id);
void ble_ke_msg_forward(const void *param_ptr, const ke_task_id_t dest_id, const ke_task_id_t src_id);
void ble_ke_msg_forward_new_id(const void *param_ptr, const ke_msg_id_t msg_id, const ke_task_id_t dest_id, const ke_task_id_t src_id);
uint32_t _patch_ble_ke_msg_free(void *pRet, const struct ke_msg *msg);
void ble_ke_msg_free(const struct ke_msg *msg);
ke_msg_id_t ble_ke_msg_dest_id_get(const void *param_ptr);
ke_msg_id_t ble_ke_msg_src_id_get(const void *param_ptr);
bool ble_ke_msg_in_queue(const void *param_ptr);




/** _patch_ble_ke_msg_alloc
 */
uint32_t _patch_ble_ke_msg_alloc(void *pRet, const ke_msg_id_t id, const ke_task_id_t dest_id, const ke_task_id_t src_id, const uint16_t param_len)
{
	ASSER_ERR(FALSE);
	return 0xffffffff;
}

/** *ble_ke_msg_alloc
 */
void *ble_ke_msg_alloc(const ke_msg_id_t id, const ke_task_id_t dest_id, const ke_task_id_t src_id, const uint16_t param_len)
{
	ASSER_ERR(FALSE);
	returnNULL;
}

/** _patch_ble_ke_msg_send
 */
uint32_t _patch_ble_ke_msg_send(void *pRet, const void *param_ptr)
{
	ASSER_ERR(FALSE);
	return 0xffffffff;
}

/** ble_ke_msg_send
 */
void ble_ke_msg_send(const void *param_ptr)
{
	ASSER_ERR(FALSE);
	return;
}

/** _patch_ble_ke_msg_get_sent_num
 */
uint32_t _patch_ble_ke_msg_get_sent_num(void *pRet)
{
	ASSER_ERR(FALSE);
	return 0xffffffff;
}

/** ble_ke_msg_get_sent_num
 */
uint16_t ble_ke_msg_get_sent_num(void)
{
	ASSER_ERR(FALSE);
	return 0xffff;
}

/** _patch_ble_ke_msg_send_basic
 */
uint32_t _patch_ble_ke_msg_send_basic(void *pRet, const ke_msg_id_t id, const ke_task_id_t dest_id, const ke_task_id_t src_id)
{
	ASSER_ERR(FALSE);
	return 0xffffffff;
}

/** ble_ke_msg_send_basic
 */
void ble_ke_msg_send_basic(const ke_msg_id_t id, const ke_task_id_t dest_id, const ke_task_id_t src_id)
{
	ASSER_ERR(FALSE);
	return;
}

/** ble_ke_msg_forward
 */
void ble_ke_msg_forward(const void *param_ptr, const ke_task_id_t dest_id, const ke_task_id_t src_id)
{
	ASSER_ERR(FALSE);
	return;
}

/** ble_ke_msg_forward_new_id
 */
void ble_ke_msg_forward_new_id(const void *param_ptr, const ke_msg_id_t msg_id, const ke_task_id_t dest_id, const ke_task_id_t src_id)
{
	ASSER_ERR(FALSE);
	return;
}

/** _patch_ble_ke_msg_free
 */
uint32_t _patch_ble_ke_msg_free(void *pRet, const struct ke_msg *msg)
{
	ASSER_ERR(FALSE);
	return 0xffffffff;
}

/** ble_ke_msg_free
 */
void ble_ke_msg_free(const struct ke_msg *msg)
{
	ASSER_ERR(FALSE);
	return;
}

/** ble_ke_msg_dest_id_get
 */
ke_msg_id_t ble_ke_msg_dest_id_get(const void *param_ptr)
{
	ASSER_ERR(FALSE);
	return 0xffff;
}

/** ble_ke_msg_src_id_get
 */
ke_msg_id_t ble_ke_msg_src_id_get(const void *param_ptr)
{
	ASSER_ERR(FALSE);
	return 0xffff;
}

/** ble_ke_msg_in_queue
 */
bool ble_ke_msg_in_queue(const void *param_ptr)
{
	ASSER_ERR(FALSE);
	return false;
}
