#include <blconfig.h>

#include <stdbool.h>

#include <lmac/mm/mm_timer.h>
#include <lmac/mm/mm.h>

#include <modules/ke/ke_event.h>

#include <modules/common/co_list.h>

#include <hal/hal_machw.h>

#include <phy/mac_pl.h>
#include <phy/mac_core.h>

#include <arch/rv32i/ll.h>

#include <utils.h>

struct mm_timer_env_tag mm_timer_env;

void mm_timer_init(void) {
    co_list_init(&mm_timer_env.prog);
}

static void mm_timer_hw_set(struct mm_timer_tag *timer) {
    __disable_irq();
    if (!timer) {
        MAC_PL->TIMERS_INT_UN_MASK.maskabsTimers7 = 0;
    } else {
        MAC_CORE->ABS_TIMER[7] = timer->time;
        if (MAC_PL->TIMERS_INT_UN_MASK.maskabsTimers7 == 0) {
            MAC_PL->TIMERS_INT_EVENT_CLEAR.value = 0x80;
            MAC_PL->TIMERS_INT_UN_MASK.maskabsTimers7 = 1;
        }
    }
    __enable_irq();
}

static bool cmp_abs_time(const struct co_list_hdr *timerA, const struct co_list_hdr *timerB) {
    uint32_t timeA = ((struct mm_timer_tag*)timerA)->time;
    uint32_t timeB = ((struct mm_timer_tag*)timerB)->time;

    return (hal_machw_time_cmp(timeA, timeB));
}

// this 3 functions have no irq disable

void mm_timer_set(struct mm_timer_tag *timer, uint32_t value) {
    bool hw_prog = false;
    if (hal_machw_time_past(value)) {
        puts("\r\n-------------------[FW] Timer is past due to flash operation. Try to fix\r\n");
        value = hal_machw_time() + 3000;
    }
    if (co_list_pick(&mm_timer_env.prog) == (struct co_list_hdr*) timer) {
        // pop the timer from the list
        co_list_pop_front(&mm_timer_env.prog);
        // force the HW timer to be reprogrammed
        hw_prog = true;
    } else {
        co_list_extract(&mm_timer_env.prog, &timer->list_hdr);
    }
    timer->time = value;
    co_list_insert(&mm_timer_env.prog, &timer->list_hdr, cmp_abs_time);
    if (hw_prog || (co_list_pick(&mm_timer_env.prog) == &timer->list_hdr)) {
        mm_timer_hw_set((struct mm_timer_tag *)co_list_pick(&mm_timer_env.prog));
    }
    if (hal_machw_time_past(value)) {
        ke_evt_set(KE_EVT_MM_TIMER_BIT);
    }
}

void mm_timer_clear(struct mm_timer_tag *timer) {
    if (co_list_pick(&mm_timer_env.prog) == &timer->list_hdr) {
        co_list_pop_front(&mm_timer_env.prog);
        mm_timer_hw_set((struct mm_timer_tag *)co_list_pick(&mm_timer_env.prog));
    } else {
        co_list_extract(&mm_timer_env.prog, &timer->list_hdr);
    }
}

void mm_timer_schedule(int dummy) {
    while (true) {
        ke_evt_clear(KE_EVT_MM_TIMER_BIT);
        struct mm_timer_tag *timer = (struct mm_timer_tag *)co_list_pick(&mm_timer_env.prog);
        if (!timer) {
            mm_timer_hw_set((struct mm_timer_tag *)NULL);
            break ;
        }
        
        if (!hal_machw_time_past(timer->time - 50)) {
            mm_timer_hw_set(timer);
            if (!hal_machw_time_past(timer->time))
                break ;
        }

        co_list_pop_front(&mm_timer_env.prog);
        ASSERT_ERR(timer->cb);
        timer->cb(timer->env);
    }
}
