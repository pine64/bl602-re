/**
* @file ke_timer.c
* Source file for BL602
*/
#include "ke_timer.h"


uint32_t _patch_ke_time(void *pRet);
uint32_t ble_ke_time(void);
uint32_t _patch_ble_ke_time_cmp(void *pRet, uint32_t newer, uint32_t older);
bool ble_ke_time_cmp(uint32_t newer, uint32_t older);
uint32_t _patch_ble_ke_time_past(void *pRet, uint32_t time);
bool ble_ke_time_past(uint32_t time);
uint32_t _patch_ble_ke_timer_hw_set(void *pRet, struct ke_timer *timer);
void ble_ke_timer_hw_set(struct ke_timer *timer);
uint32_t _patch_ble_cmp_abs_time(void *pRet, const struct co_list_hdr *timerA, const struct co_list_hdr *timerB);
bool ble_cmp_abs_time(const struct co_list_hdr *timerA, const struct co_list_hdr *timerB);
uint32_t _patch_ble_cmp_timer_id(void *pRet, const struct co_list_hdr *timer, uint32_t timer_task);
bool ble_cmp_timer_id(const struct co_list_hdr *timer, uint32_t timer_task);
uint32_t _patch_ble_ke_timer_schedule(void *pRet);
void ble_ke_timer_schedule(void);
uint32_t _patch_ble_ke_timer_init(void *pRet);
void ble_ke_timer_init(void);
uint32_t _patch_ble_ke_timer_set(void *pRet, const ke_msg_id_t timer_id, const ke_task_id_t task_id, uint32_t delay);
void ble_ke_timer_set(const ke_msg_id_t timer_id, const ke_task_id_t task_id, uint32_t delay);
uint32_t _patch_ble_ke_timer_clear(void *pRet, const ke_msg_id_t timer_id, const ke_task_id_t task_id);
void ble_ke_timer_clear(const ke_msg_id_t timer_id, const ke_task_id_t task_id);
uint32_t _patch_ble_ke_timer_active(void *pRet, const ke_msg_id_t timer_id, const ke_task_id_t task_id);
bool ble_ke_timer_active(const ke_msg_id_t timer_id, const ke_task_id_t task_id);
void ble_ke_timer_adjust_all(uint32_t delay);
uint32_t _patch_ble_ke_timer_target_get(void *pRet);
uint32_t ble_ke_timer_target_get(void);




/** _patch_ke_time
 */
uint32_t _patch_ke_time(void *pRet)
{
	ASSER_ERR(FALSE);
	return 0xffffffff;
}

/** ble_ke_time
 */
uint32_t ble_ke_time(void)
{
	ASSER_ERR(FALSE);
	return 0xffffffff;
}

/** _patch_ble_ke_time_cmp
 */
uint32_t _patch_ble_ke_time_cmp(void *pRet, uint32_t newer, uint32_t older)
{
	ASSER_ERR(FALSE);
	return 0xffffffff;
}

/** ble_ke_time_cmp
 */
bool ble_ke_time_cmp(uint32_t newer, uint32_t older)
{
	ASSER_ERR(FALSE);
	return false;
}

/** _patch_ble_ke_time_past
 */
uint32_t _patch_ble_ke_time_past(void *pRet, uint32_t time)
{
	ASSER_ERR(FALSE);
	return 0xffffffff;
}

/** ble_ke_time_past
 */
bool ble_ke_time_past(uint32_t time)
{
	ASSER_ERR(FALSE);
	return false;
}

/** _patch_ble_ke_timer_hw_set
 */
uint32_t _patch_ble_ke_timer_hw_set(void *pRet, struct ke_timer *timer)
{
	ASSER_ERR(FALSE);
	return 0xffffffff;
}

/** ble_ke_timer_hw_set
 */
void ble_ke_timer_hw_set(struct ke_timer *timer)
{
	ASSER_ERR(FALSE);
	return;
}

/** _patch_ble_cmp_abs_time
 */
uint32_t _patch_ble_cmp_abs_time(void *pRet, const struct co_list_hdr *timerA, const struct co_list_hdr *timerB)
{
	ASSER_ERR(FALSE);
	return 0xffffffff;
}

/** ble_cmp_abs_time
 */
bool ble_cmp_abs_time(const struct co_list_hdr *timerA, const struct co_list_hdr *timerB)
{
	ASSER_ERR(FALSE);
	return false;
}

/** _patch_ble_cmp_timer_id
 */
uint32_t _patch_ble_cmp_timer_id(void *pRet, const struct co_list_hdr *timer, uint32_t timer_task)
{
	ASSER_ERR(FALSE);
	return 0xffffffff;
}

/** ble_cmp_timer_id
 */
bool ble_cmp_timer_id(const struct co_list_hdr *timer, uint32_t timer_task)
{
	ASSER_ERR(FALSE);
	return false;
}

/** _patch_ble_ke_timer_schedule
 */
uint32_t _patch_ble_ke_timer_schedule(void *pRet)
{
	ASSER_ERR(FALSE);
	return 0xffffffff;
}

/** ble_ke_timer_schedule
 */
void ble_ke_timer_schedule(void)
{
	ASSER_ERR(FALSE);
	return;
}

/** _patch_ble_ke_timer_init
 */
uint32_t _patch_ble_ke_timer_init(void *pRet)
{
	ASSER_ERR(FALSE);
	return 0xffffffff;
}

/** ble_ke_timer_init
 */
void ble_ke_timer_init(void)
{
	ASSER_ERR(FALSE);
	return;
}

/** _patch_ble_ke_timer_set
 */
uint32_t _patch_ble_ke_timer_set(void *pRet, const ke_msg_id_t timer_id, const ke_task_id_t task_id, uint32_t delay)
{
	ASSER_ERR(FALSE);
	return 0xffffffff;
}

/** ble_ke_timer_set
 */
void ble_ke_timer_set(const ke_msg_id_t timer_id, const ke_task_id_t task_id, uint32_t delay)
{
	ASSER_ERR(FALSE);
	return;
}

/** _patch_ble_ke_timer_clear
 */
uint32_t _patch_ble_ke_timer_clear(void *pRet, const ke_msg_id_t timer_id, const ke_task_id_t task_id)
{
	ASSER_ERR(FALSE);
	return 0xffffffff;
}

/** ble_ke_timer_clear
 */
void ble_ke_timer_clear(const ke_msg_id_t timer_id, const ke_task_id_t task_id)
{
	ASSER_ERR(FALSE);
	return;
}

/** _patch_ble_ke_timer_active
 */
uint32_t _patch_ble_ke_timer_active(void *pRet, const ke_msg_id_t timer_id, const ke_task_id_t task_id)
{
	ASSER_ERR(FALSE);
	return 0xffffffff;
}

/** ble_ke_timer_active
 */
bool ble_ke_timer_active(const ke_msg_id_t timer_id, const ke_task_id_t task_id)
{
	ASSER_ERR(FALSE);
	return false;
}

/** ble_ke_timer_adjust_all
 */
void ble_ke_timer_adjust_all(uint32_t delay)
{
	ASSER_ERR(FALSE);
	return;
}

/** _patch_ble_ke_timer_target_get
 */
uint32_t _patch_ble_ke_timer_target_get(void *pRet)
{
	ASSER_ERR(FALSE);
	return 0xffffffff;
}

/** ble_ke_timer_target_get
 */
uint32_t ble_ke_timer_target_get(void)
{
	ASSER_ERR(FALSE);
	return 0xffffffff;
}
