#ifndef BLECONTROLLER_MODULES_KE_TASK_H
#define BLECONTROLLER_MODULES_KE_TASK_H

#include <stdint.h>

#include "ke_msg.h"

enum KE_TASK_STATUS {
    KE_TASK_OK = 0,
    KE_TASK_FAIL = 1,
    KE_TASK_UNKNOWN = 2,
    KE_TASK_CAPA_EXCEEDED = 3,
    KE_TASK_ALREADY_EXISTS = 4,
};

typedef int (*ke_msg_func_t)(const ke_msg_id_t, const void *, const ke_task_id_t, const ke_task_id_t);

struct ke_msg_handler {
    ke_msg_id_t id; // +0
    ke_msg_func_t func; // +4
};

struct ke_state_handler {
    const struct ke_msg_handler *msg_table; // +0
    uint16_t msg_cnt; // +4
};

struct ke_task_desc {
    const struct ke_state_handler *state_handler; // +0
    const struct ke_state_handler *default_handler; // +4
    ke_state_t *state; // +8
    uint16_t state_max; // +12
    uint16_t idx_max; // +14
};

void ble_ke_task_init(void);
uint8_t ble_ke_task_create(uint8_t task_type, const struct ke_task_desc *p_task_desc);
ke_state_t ble_ke_state_get(const ke_task_id_t id);
void ble_ke_state_set(const ke_task_id_t id, const ke_state_t state_id);

#endif /* BLECONTROLLER_MODULES_KE_TASK_H */
