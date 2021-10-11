#include "ke_timer.h"


static void ke_timer_hw_set(struct ke_timer *timer)
{
	__builtin_trap();
}

static bool cmp_abs_time(const struct co_list_hdr *timerA, const struct co_list_hdr *timerB)
{
	__builtin_trap();
}

static bool cmp_timer_id(const struct co_list_hdr *timer, uint32_t timer_task)
{
	__builtin_trap();
}

void ke_timer_set(const ke_msg_id_t timer_id, const ke_task_id_t task_id, const uint32_t delay)
{
	__builtin_trap();
}

void ke_timer_clear(const ke_msg_id_t timer_id, const ke_task_id_t task_id)
{
	__builtin_trap();
}

void ke_timer_schedule(int dummy)
{
	__builtin_trap();
}

bool ke_timer_active(const ke_msg_id_t timer_id, const ke_task_id_t task_id)
{
	__builtin_trap();
}
