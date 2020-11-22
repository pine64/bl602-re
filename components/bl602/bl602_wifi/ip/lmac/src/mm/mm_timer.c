
_Bool cmp_abs_time(co_list_hdr * timerA, co_list_hdr * timerB);
void mm_timer_clear(mm_timer_tag * timer);
void mm_timer_hw_set(mm_timer_tag * timer);
void mm_timer_schedule(int dummy);
void mm_timer_set(mm_timer_tag * timer, uint32_t value);
