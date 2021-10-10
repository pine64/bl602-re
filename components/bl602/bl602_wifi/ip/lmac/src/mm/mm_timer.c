#include "mm_timer.h"


struct mm_timer_env_tag mm_timer_env;


void mm_timer_init(void)
{
	__builtin_trap();
}

static void mm_timer_hw_set(struct mm_timer_tag *timer)
{
	__builtin_trap();
}

static bool cmp_abs_time(const struct co_list_hdr *timerA, const struct co_list_hdr *timerB)
{
	__builtin_trap();
}

void mm_timer_set(struct mm_timer_tag *timer, uint32_t value)
{
	__builtin_trap();
}

void mm_timer_clear(struct mm_timer_tag *timer)
{
	__builtin_trap();
}

void mm_timer_schedule(int dummy)
{
	__builtin_trap();
}
