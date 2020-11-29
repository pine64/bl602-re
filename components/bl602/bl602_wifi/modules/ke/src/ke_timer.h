
uint32_t ke_time(void);
_Bool ke_time_abs_cmp(uint32_t time1, uint32_t time2);
_Bool ke_time_past(uint32_t time);
typedef struct ke_timer ke_timer, *ke_timer;

typedef ushort uint16_t;

typedef uint16_t ke_msg_id_t;

typedef uint16_t ke_task_id_t;

typedef ulong uint32_t;

struct ke_timer {
    struct ke_timer * next;
    ke_msg_id_t id;
    ke_task_id_t task;
    uint32_t time;
};

void ke_timer_clear(void);
void ke_timer_set(void);
#if 0 //TODO EXISTS ALEADY
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
#endf 0 //TODO EXISTS ALEADY
