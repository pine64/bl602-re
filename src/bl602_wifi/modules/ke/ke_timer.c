#include <modules/ke/ke_timer.h>
#include <modules/ke/ke_env.h>
#include <modules/ke/ke_mem.h>
#include <modules/ke/ke_queue.h>
#include <modules/ke/ke_event.h>

#include <phy/mac_pl.h>

#include <phy/mac_core.h>
#include <macro.h>

#include <arch/rv32i/ll.h>

#include <stddef.h>

static void ke_timer_hw_set(struct ke_timer *timer) {
    __disable_irq();
    if (!timer) {
        MAC_PL->TIMERS_INT_UN_MASK.maskabsTimers8 = 0;
    } else {
        STATIC_ASSERT(&(MAC_CORE->ABS_TIMER[8]) == (void*)0x44b00148, abs_timer_address);
        MAC_CORE->ABS_TIMER[8] = timer->time;
        if (MAC_PL->TIMERS_INT_UN_MASK.maskabsTimers8) {
            __enable_irq();
            return ;
        }
        MAC_PL->TIMERS_INT_EVENT_CLEAR.value = 0x100;
        MAC_PL->TIMERS_INT_UN_MASK.maskabsTimers8 = 1;
    }
    __enable_irq();
}

static bool cmp_abs_time(const struct co_list_hdr *timerA, const struct co_list_hdr *timerB) {
    uint32_t timeA = ((const struct ke_timer *)timerA)->time;
    uint32_t timeB = ((const struct ke_timer *)timerB)->time;
    return (((uint32_t)(timeA - timeB)) > KE_TIMER_DELAY_MAX);
}

static bool cmp_timer_id(const struct co_list_hdr *timer, uint32_t timer_task) {
    if (((const struct ke_timer*)timer)->id == timer_task >> 0x10) {
        return (((const struct ke_timer*)timer)->task == (timer_task & 0xffff));
    }
    return false;
}

void ke_timer_set(const ke_msg_id_t timer_id, const ke_task_id_t task_id, const uint32_t delay) {
    ASSERT_ERR(delay > 0);
    ASSERT_ERR(delay < KE_TIMER_DELAY_MAX);
    struct ke_timer *first = (struct ke_timer *)ke_env.queue_timer.first;
    bool isFirst = false;
    if (first && first->id == timer_id && first->task == task_id)
        isFirst = true;
    struct ke_timer *timer = (struct ke_timer *)ke_queue_extract(&ke_env.queue_timer, cmp_timer_id, ((uint32_t)timer_id << 0x10) | task_id);
    if (!timer) {
        timer = (struct ke_timer *)ke_malloc(sizeof(struct ke_timer));
        ASSERT_ERR(timer);
        timer->id = timer_id;
        timer->task = task_id;
    }
    int32_t trigger_time = ke_time() + delay;
    timer->time = trigger_time;
    
    co_list_insert(&ke_env.queue_timer, (struct co_list_hdr *)timer, cmp_abs_time);
    if (isFirst || (struct ke_timer*)ke_env.queue_timer.first == timer) {
        ke_timer_hw_set((struct ke_timer *)ke_env.queue_timer.first);
    }
    if (ke_time_past(trigger_time)) {
        ke_evt_set(KE_EVT_KE_TIMER_BIT);
    }
}

void ke_timer_clear(const ke_msg_id_t timer_id, const ke_task_id_t task_id) {
    struct ke_timer *timer = (struct ke_timer *) ke_env.queue_timer.first;
    if (timer) {
        if (timer->id == timer_id && timer->task == task_id) {
            ke_queue_pop(&ke_env.queue_timer);
            struct ke_timer *first = (struct ke_timer *) ke_env.queue_timer.first;
            ke_timer_hw_set(first);
            // shouldn't this be a ke_evt_set?
            ASSERT_ERR(!first || !ke_time_past(first->time));
        } else {
            timer = (struct ke_timer *)ke_queue_extract(&ke_env.queue_timer, cmp_timer_id, ((uint32_t)timer_id << 16) | task_id);
        }
        if (timer)
            ke_free(timer);
    }
}

void ke_timer_schedule(int dummy) {
    while (true) {
        ke_evt_clear(KE_EVT_KE_TIMER_BIT);
        struct ke_timer* timer = (struct ke_timer*)ke_env.queue_timer.first;
        if (!timer) {
            ke_timer_hw_set(NULL);
            return ;
        }
        // the first timer not about to time out?
        if (!ke_time_past(timer->time - 50)) {
            // make it the next timer
            ke_timer_hw_set(timer);
            // still not timeout? leave
            if (!ke_time_past(timer->time))
                break;
        }
        // timer has time out
        timer = (struct ke_timer*) ke_queue_pop(&ke_env.queue_timer);
        ke_msg_send_basic(timer->id, timer->task, TASK_NONE);
        ke_free(timer);
    }
}

bool ke_timer_active(const ke_msg_id_t timer_id, const ke_task_id_t task_id) {
    for (struct ke_timer* timer = (struct ke_timer*)ke_env.queue_timer.first; timer; timer = timer->next) {
        if (timer->id == timer_id && timer->task == task_id)
            return true;
    }
    return false;
}
