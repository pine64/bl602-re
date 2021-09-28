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

#endif /* BLECONTROLLER_MODULES_KE_TIMER_H */
