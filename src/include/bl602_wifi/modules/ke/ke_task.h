#ifndef _KE_TASK_H_
#define _KE_TASK_H_

#include <stdbool.h>
#include <stdint.h>

#include <modules/ke/ke_msg.h>
#include <assert.h>

// based on TASK_DESC
enum
{
    TASK_NONE = (uint8_t) -1,

    /// MAC Management task.
    TASK_MM = 0,
    TASK_DBG = 1,
    /// SCAN task
    TASK_SCAN = 2,
    /// TDLS task
    TASK_TDLS = 3, // maybe, not used anyway 
    /// SCAN task
    TASK_SCANU = 4,
    /// SCAN task
    TASK_ME = 5,
    /// SM task
    TASK_SM = 6,
    /// APM task
    TASK_APM = 7,
    /// BAM task
    TASK_BAM = 8,
    /// MESH task
    TASK_MESH = 9, // maybe, not used anyway
    TASK_HOSTAPD = 10,
    /// RXU task
    TASK_RXU = 11, // maybe, not used anyway 
    /// CFG task
    TASK_CFG = 12,
    // nX API task
    TASK_API = 13, // maybe, not used anyway
    TASK_MAX, // max == 14
};

#define DRV_TASK_ID                     100


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

static bool ke_task_local(const ke_task_id_t id) {
    ASSERT_ERR(id <= TASK_MAX);
    return id < TASK_API;
};
ke_state_t ke_state_get(const ke_task_id_t id);
void ke_state_set(const ke_task_id_t id, const ke_state_t state_id);

#endif // __KE_TASK_H__
