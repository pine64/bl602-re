
_Bool cmp_timer_id(co_list_hdr * timer, uint32_t timer_task);
_Bool ke_timer_active(ke_msg_id_t timer_id, ke_task_id_t task_id);
void ke_timer_clear(ke_msg_id_t timer_id, ke_task_id_t task_id);
void ke_timer_hw_set(ke_timer * timer);
void ke_timer_schedule(int dummy);
void ke_timer_set(ke_msg_id_t timer_id, ke_task_id_t task_id, uint32_t delay);
#if 0 //TODO EXISTS ALEADY
/**
* @file ke_timer.c
* Source file for BL602
*/
#include "ke_timer.h"


static void ke_timer_hw_set(struct ke_timer *timer);
static bool cmp_abs_time(const struct co_list_hdr *timerA, const struct co_list_hdr *timerB);
static bool cmp_timer_id(const struct co_list_hdr *timer, uint32_t timer_task);
void ke_timer_set(const ke_msg_id_t timer_id, const ke_task_id_t task_id, const uint32_t delay);
void ke_timer_clear(const ke_msg_id_t timer_id, const ke_task_id_t task_id);
void ke_timer_schedule(int dummy);
bool ke_timer_active(const ke_msg_id_t timer_id, const ke_task_id_t task_id);




/** ke_timer_set
 */
void ke_timer_set(const ke_msg_id_t timer_id, const ke_task_id_t task_id, const uint32_t delay)
{
	ASSER_ERR(FALSE);
	return;
}

/** ke_timer_clear
 */
void ke_timer_clear(const ke_msg_id_t timer_id, const ke_task_id_t task_id)
{
	ASSER_ERR(FALSE);
	return;
}

/** ke_timer_schedule
 */
void ke_timer_schedule(int dummy)
{
	ASSER_ERR(FALSE);
	return;
}

/** ke_timer_active
 */
bool ke_timer_active(const ke_msg_id_t timer_id, const ke_task_id_t task_id)
{
	ASSER_ERR(FALSE);
	return false;
}

/** ke_timer_hw_set
 */
static void ke_timer_hw_set(struct ke_timer *timer)
{
	ASSER_ERR(FALSE);
	return;
}

/** cmp_abs_time
 */
static bool cmp_abs_time(const struct co_list_hdr *timerA, const struct co_list_hdr *timerB)
{
	ASSER_ERR(FALSE);
	return false;
}

/** cmp_timer_id
 */
static bool cmp_timer_id(const struct co_list_hdr *timer, uint32_t timer_task)
{
	ASSER_ERR(FALSE);
	return false;
}
#endf 0 //TODO EXISTS ALEADY
