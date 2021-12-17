#ifndef BLECONTROLLER_MODULES_KE_TIMER_H
#define BLECONTROLLER_MODULES_KE_TIMER_H

#include <stdint.h>

#include "ke_msg.h"
#include "ke_task.h"

struct ke_timer {
    struct ke_timer *next; // +0
    ke_msg_id_t id; // +4
    ke_task_id_t task; // +6
    uint32_t time; // +8
};

void ble_ke_timer_init(void);
void ble_ke_timer_set(const ke_msg_id_t timer_id, const ke_task_id_t task_id, uint32_t delay);
void ble_ke_timer_clear(const ke_msg_id_t timer_id, const ke_task_id_t task_id);
bool ble_ke_timer_active(const ke_msg_id_t timer_id, const ke_task_id_t task_id);
uint32_t ble_ke_timer_target_get(void);

#endif /* BLECONTROLLER_MODULES_KE_TIMER_H */
