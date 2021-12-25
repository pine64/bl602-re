#ifndef _HOSTAPD_TASK_H_
#define _HOSTAPD_TASK_H_

#include <modules/ke/ke_msg.h>

#define HOSTAPD_IDX_MAX 1

enum hostapd_state_tag {
    HOSTAPD_STATE_IDLE = 0,
    HOSTAPD_STATE_MAX = 1,
};


extern const struct ke_state_handler hostapd_default_handler;
extern ke_state_t hostapd_u_state[HOSTAPD_IDX_MAX];

#endif // _HOSTAPD_TASK_H_
