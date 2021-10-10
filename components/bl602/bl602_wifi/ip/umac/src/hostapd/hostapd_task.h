#ifndef __HOSTAPD_TASK_H__
#define __HOSTAPD_TASK_H__

#include <ke_msg.h>


enum hostapd_state_tag {
    HOSTAPD_STATE_IDLE = 0,
    HOSTAPD_STATE_MAX = 1,
};


extern const struct ke_state_handler hostapd_default_handler;
extern ke_state_t hostapd_u_state[1];

#endif // __HOSTAPD_TASK_H__
