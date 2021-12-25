#ifndef _KE_TIMER_H_
#define _KE_TIMER_H_

#include <stdbool.h>
#include <stdint.h>

#include <modules/ke/ke_msg.h>
#include <modules/ke/ke_task.h>

#include <hal/hal_machw.h>

struct ke_timer {
    struct ke_timer *next; // +0
    ke_msg_id_t id; // +4
    ke_task_id_t task; // +6
    uint32_t time; // +8
};


void ke_timer_set(const ke_msg_id_t timer_id, const ke_task_id_t task_id, const uint32_t delay);
void ke_timer_clear(const ke_msg_id_t timer_id, const ke_task_id_t task_id);

void ke_timer_schedule(int dummy);

#define KE_TIMER_DELAY_MAX 300000000

static inline bool ke_time_abs_cmp(uint32_t time1, uint32_t time2) {
    uint32_t diff = time1 - time2;
    return (((int32_t)diff) < 0);
}

static inline uint32_t ke_time() {
    return hal_machw_time();
}

static inline bool ke_time_past(uint32_t time) {
    return ke_time_abs_cmp(time, ke_time());
}

#endif // _KE_TIMER_H_
