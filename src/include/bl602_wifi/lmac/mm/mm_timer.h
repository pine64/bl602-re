#ifndef _MM_TIMER_H_
#define _MM_TIMER_H_

#include <stdint.h>

#include <modules/common/co_list.h>


typedef void (*cb_timer_func_ptr)(void *);

struct mm_timer_tag {
    struct co_list_hdr list_hdr; // +0
    cb_timer_func_ptr cb; // +4
    void *env; // +8
    uint32_t time; // +12
};

struct mm_timer_env_tag {
    struct co_list prog; // +0
};

extern struct mm_timer_env_tag mm_timer_env;

void mm_timer_init(void);
void mm_timer_set(struct mm_timer_tag *timer, uint32_t value);
void mm_timer_clear(struct mm_timer_tag *timer);
void mm_timer_schedule(int dummy);

#endif 
