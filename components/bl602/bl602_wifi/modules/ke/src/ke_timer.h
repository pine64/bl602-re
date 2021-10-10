#ifndef __KE_TIMER_H__
#define __KE_TIMER_H__

#include <stdbool.h>
#include <stdint.h>

#include <ke_msg.h>
#include <ke_task.h>


struct ke_timer {
    struct ke_timer *next; // +0
    ke_msg_id_t id; // +4
    ke_task_id_t task; // +6
    uint32_t time; // +8
};


uint32_t ke_time(void);
bool ke_time_abs_cmp(uint32_t time1, uint32_t time2);
bool ke_time_past(uint32_t time);
void ke_timer_set(const ke_msg_id_t timer_id, const ke_task_id_t task_id, const uint32_t delay);
void ke_timer_clear(const ke_msg_id_t timer_id, const ke_task_id_t task_id);

#endif // __KE_TIMER_H__
