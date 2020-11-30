/**
* @file ke_task.h
* Header file for BL602
*/
#ifndef __KE_TASK_H__
#define __KE_TASK_H__

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

#endif // __KE_TASK_H__
