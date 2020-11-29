/**
* @file ke_timer.h
* Header file for BL602
*/
#ifndef __KE_TIMER_H__
#define __KE_TIMER_H__

struct ke_timer {
    struct ke_timer *next; // +0
    ke_msg_id_t id; // +4
    ke_task_id_t task; // +6
    uint32_t time; // +8
};

#endif // __KE_TIMER_H__
