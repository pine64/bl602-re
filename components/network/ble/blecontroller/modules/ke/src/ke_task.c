/**
* @file ke_task.c
* Source file for BL602
*/
#include "ke_task.h"


struct ke_task_elem {
    const struct ke_task_desc *p_desc;
 // +0
};

struct ble_ke_task_env_tag {
    struct ke_task_elem task_list[5];
 // +0
};

struct ble_ke_task_env_tag ble_ke_task_env;

uint32_t _patch_ble_cmp_dest_id(void *pRet, const struct co_list_hdr *msg, uint32_t dest_id);
bool ble_cmp_dest_id(const struct co_list_hdr *msg, uint32_t dest_id);
uint32_t _patch_ble_ke_task_saved_update(void *pRet, const ke_task_id_t ke_task_id);
void ble_ke_task_saved_update(const ke_task_id_t ke_task_id);
uint32_t _patch_ble_ke_handler_search(void *pRet, const ke_msg_id_t msg_id, const struct ke_state_handler *state_handler);
ke_msg_func_t ble_ke_handler_search(const ke_msg_id_t msg_id, const struct ke_state_handler *state_handler);
uint32_t _patch_ble_ke_task_handler_get(void *pRet, const ke_msg_id_t msg_id, const ke_task_id_t task_id);
ke_msg_func_t ble_ke_task_handler_get(const ke_msg_id_t msg_id, const ke_task_id_t task_id);
uint32_t _patch_ble_ke_task_schedule(void *pRet);
void ble_ke_task_schedule(void);
uint32_t _patch_ble_ke_task_init(void *pRet);
void ble_ke_task_init(void);
uint32_t _patch_ble_ke_task_create(void *pRet, uint8_t task_type, const struct ke_task_desc *p_task_desc);
uint8_t ble_ke_task_create(uint8_t task_type, const struct ke_task_desc *p_task_desc);
uint8_t ble_ke_task_delete(uint8_t task_type);
uint32_t _patch_ble_ke_state_set(void *pRet, const ke_task_id_t id, const ke_state_t state_id);
void ble_ke_state_set(const ke_task_id_t id, const ke_state_t state_id);
uint32_t _patch_ble_ke_state_get(void *pRet, const ke_task_id_t id);
ke_state_t ble_ke_state_get(const ke_task_id_t id);
int ble_ke_msg_discard(const ke_msg_id_t msgid, const void *param, const ke_task_id_t dest_id, const ke_task_id_t src_id);
int ble_ke_msg_save(const ke_msg_id_t msgid, const void *param, const ke_task_id_t dest_id, const ke_task_id_t src_id);
void ble_ke_task_msg_flush(ke_task_id_t task);
ke_task_id_t ble_ke_task_check(ke_task_id_t task);




/** _patch_ble_cmp_dest_id
 */
uint32_t _patch_ble_cmp_dest_id(void *pRet, const struct co_list_hdr *msg, uint32_t dest_id)
{
	ASSER_ERR(FALSE);
	return 0xffffffff;
}

/** ble_cmp_dest_id
 */
bool ble_cmp_dest_id(const struct co_list_hdr *msg, uint32_t dest_id)
{
	ASSER_ERR(FALSE);
	return false;
}

/** _patch_ble_ke_task_saved_update
 */
uint32_t _patch_ble_ke_task_saved_update(void *pRet, const ke_task_id_t ke_task_id)
{
	ASSER_ERR(FALSE);
	return 0xffffffff;
}

/** ble_ke_task_saved_update
 */
void ble_ke_task_saved_update(const ke_task_id_t ke_task_id)
{
	ASSER_ERR(FALSE);
	return;
}

/** _patch_ble_ke_handler_search
 */
uint32_t _patch_ble_ke_handler_search(void *pRet, const ke_msg_id_t msg_id, const struct ke_state_handler *state_handler)
{
	ASSER_ERR(FALSE);
	return 0xffffffff;
}

/** ble_ke_handler_search
 */
ke_msg_func_t ble_ke_handler_search(const ke_msg_id_t msg_id, const struct ke_state_handler *state_handler)
{
	ASSER_ERR(FALSE);
	return NULL;
}

/** _patch_ble_ke_task_handler_get
 */
uint32_t _patch_ble_ke_task_handler_get(void *pRet, const ke_msg_id_t msg_id, const ke_task_id_t task_id)
{
	ASSER_ERR(FALSE);
	return 0xffffffff;
}

/** ble_ke_task_handler_get
 */
ke_msg_func_t ble_ke_task_handler_get(const ke_msg_id_t msg_id, const ke_task_id_t task_id)
{
	ASSER_ERR(FALSE);
	return NULL;
}

/** _patch_ble_ke_task_schedule
 */
uint32_t _patch_ble_ke_task_schedule(void *pRet)
{
	ASSER_ERR(FALSE);
	return 0xffffffff;
}

/** ble_ke_task_schedule
 */
void ble_ke_task_schedule(void)
{
	ASSER_ERR(FALSE);
	return;
}

/** _patch_ble_ke_task_init
 */
uint32_t _patch_ble_ke_task_init(void *pRet)
{
	ASSER_ERR(FALSE);
	return 0xffffffff;
}

/** ble_ke_task_init
 */
void ble_ke_task_init(void)
{
	ASSER_ERR(FALSE);
	return;
}

/** _patch_ble_ke_task_create
 */
uint32_t _patch_ble_ke_task_create(void *pRet, uint8_t task_type, const struct ke_task_desc *p_task_desc)
{
	ASSER_ERR(FALSE);
	return 0xffffffff;
}

/** ble_ke_task_create
 */
uint8_t ble_ke_task_create(uint8_t task_type, const struct ke_task_desc *p_task_desc)
{
	ASSER_ERR(FALSE);
	return 0xff;
}

/** ble_ke_task_delete
 */
uint8_t ble_ke_task_delete(uint8_t task_type)
{
	ASSER_ERR(FALSE);
	return 0xff;
}

/** _patch_ble_ke_state_set
 */
uint32_t _patch_ble_ke_state_set(void *pRet, const ke_task_id_t id, const ke_state_t state_id)
{
	ASSER_ERR(FALSE);
	return 0xffffffff;
}

/** ble_ke_state_set
 */
void ble_ke_state_set(const ke_task_id_t id, const ke_state_t state_id)
{
	ASSER_ERR(FALSE);
	return;
}

/** _patch_ble_ke_state_get
 */
uint32_t _patch_ble_ke_state_get(void *pRet, const ke_task_id_t id)
{
	ASSER_ERR(FALSE);
	return 0xffffffff;
}

/** ble_ke_state_get
 */
ke_state_t ble_ke_state_get(const ke_task_id_t id)
{
	ASSER_ERR(FALSE);
	return 0xff;
}

/** ble_ke_msg_discard
 */
int ble_ke_msg_discard(const ke_msg_id_t msgid, const void *param, const ke_task_id_t dest_id, const ke_task_id_t src_id)
{
	ASSER_ERR(FALSE);
	return -1;
}

/** ble_ke_msg_save
 */
int ble_ke_msg_save(const ke_msg_id_t msgid, const void *param, const ke_task_id_t dest_id, const ke_task_id_t src_id)
{
	ASSER_ERR(FALSE);
	return -1;
}

/** ble_ke_task_msg_flush
 */
void ble_ke_task_msg_flush(ke_task_id_t task)
{
	ASSER_ERR(FALSE);
	return;
}

/** ble_ke_task_check
 */
ke_task_id_t ble_ke_task_check(ke_task_id_t task)
{
	ASSER_ERR(FALSE);
	return 0xffff;
}
