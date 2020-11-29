
_Bool cmp_abs_time(co_list_hdr * timerA, co_list_hdr * timerB);
void mm_timer_clear(mm_timer_tag * timer);
void mm_timer_hw_set(mm_timer_tag * timer);
void mm_timer_schedule(int dummy);
void mm_timer_set(mm_timer_tag * timer, uint32_t value);
#if 0 //TODO EXISTS ALEADY
/**
* @file mm_timer.c
* Source file for BL602
*/
#include "mm_timer.h"


struct mm_timer_env_tag mm_timer_env;

void mm_timer_init(void);
static void mm_timer_hw_set(struct mm_timer_tag *timer);
static bool cmp_abs_time(const struct co_list_hdr *timerA, const struct co_list_hdr *timerB);
void mm_timer_set(struct mm_timer_tag *timer, uint32_t value);
void mm_timer_clear(struct mm_timer_tag *timer);
void mm_timer_schedule(int dummy);




/** mm_timer_init
 */
void mm_timer_init(void)
{
	ASSER_ERR(FALSE);
	return;
}

/** mm_timer_set
 */
void mm_timer_set(struct mm_timer_tag *timer, uint32_t value)
{
	ASSER_ERR(FALSE);
	return;
}

/** mm_timer_clear
 */
void mm_timer_clear(struct mm_timer_tag *timer)
{
	ASSER_ERR(FALSE);
	return;
}

/** mm_timer_schedule
 */
void mm_timer_schedule(int dummy)
{
	ASSER_ERR(FALSE);
	return;
}

/** mm_timer_hw_set
 */
static void mm_timer_hw_set(struct mm_timer_tag *timer)
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
#endf 0 //TODO EXISTS ALEADY
