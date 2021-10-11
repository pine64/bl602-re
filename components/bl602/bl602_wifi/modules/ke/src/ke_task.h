#ifndef __KE_TASK_H__
#define __KE_TASK_H__

#include <stdbool.h>
#include <stdint.h>

#include <ke_msg.h>


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

static bool ke_task_local(const ke_task_id_t id);
ke_state_t ke_state_get(const ke_task_id_t id);
void ke_state_set(const ke_task_id_t id, const ke_state_t state_id);

#endif // __KE_TASK_H__
