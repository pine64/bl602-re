#ifndef _HAL_MACHW_H_
#define _HAL_MACHW_H_

#include <stdbool.h>
#include <stdint.h>

#include <hal/hal_desc.h>
#include <modules/mac/mac.h>

#include <phy/mac_core.h>
#include <phy/mac_pl.h>

#include <phy_rf/phy_adapt.h>

#include <assert.h>
#include <macro.h>

/// For MAC HW States.
enum {
    /// MAC HW IDLE State.
    HW_IDLE = 0,
    /// MAC HW RESERVED State.
    HW_RESERVED,
    /// MAC HW DOZE State.
    HW_DOZE,
    /// MAC HW ACTIVE State.
    HW_ACTIVE
};


/// Mapping of HW timers
enum
{
    /// AC0 TX timeout
    HAL_AC0_TIMER = 0,
    /// AC1 TX timeout
    HAL_AC1_TIMER,
    /// AC2 TX timeout
    HAL_AC2_TIMER,
    /// AC3 TX timeout
    HAL_AC3_TIMER,
    /// BCN TX timeout
    HAL_BCN_TIMER,
    /// Go to IDLE timeout
    HAL_IDLE_TIMER,
    /// RX interrupt mitigation timeout
    HAL_RX_TIMER,
    #if NX_MM_TIMER
    /// MM timeout
    HAL_MM_TIMER,
    #endif
    /// Kernel timer
    HAL_KE_TIMER,

    /// Number of HW timers used
    HAL_TIMER_MAX,
};

/// Bits associated to HW timers
enum
{
    /// AC0 TX timeout bit
    HAL_AC0_TIMER_BIT = CO_BIT(HAL_AC0_TIMER),
    /// AC1 TX timeout bit
    HAL_AC1_TIMER_BIT = CO_BIT(HAL_AC1_TIMER),
    /// AC2 TX timeout bit
    HAL_AC2_TIMER_BIT = CO_BIT(HAL_AC2_TIMER),
    /// AC3 TX timeout bit
    HAL_AC3_TIMER_BIT = CO_BIT(HAL_AC3_TIMER),
    /// BCN TX timeout bit
    HAL_BCN_TIMER_BIT = CO_BIT(HAL_BCN_TIMER),
    /// Go to IDLE timeout bit
    HAL_IDLE_TIMER_BIT = CO_BIT(HAL_IDLE_TIMER),
    /// RX interrupt mitigation timeout bit
    HAL_RX_TIMER_BIT = CO_BIT(HAL_RX_TIMER),
    #if NX_MM_TIMER
    /// MM timeout bit
    HAL_MM_TIMER_BIT = CO_BIT(HAL_MM_TIMER),
    #endif
    /// Kernel timer bit
    HAL_KE_TIMER_BIT = CO_BIT(HAL_KE_TIMER),
};

static inline uint32_t hal_machw_time(void) {
    return MAC_CORE->MONOTONIC_COUNTER_2_LO.value;
}

static inline bool hal_machw_time_cmp(uint32_t time1, uint32_t time2) {
    uint32_t diff = time1 - time2;
    return (((int32_t)diff) < 0);
}

static inline bool hal_machw_time_past(uint32_t time) {
    return (hal_machw_time_cmp(time, hal_machw_time()));
}

extern const uint8_t rxv2macrate[];

uint32_t hal_machw_rx_duration(struct rx_hd *rhd, uint16_t len) {
    rvec_t *recv = (rvec_t *) &(rhd->recvec1a);
    uint8_t mcs_index = recv->leg_rate;
    MAC_PL->TIME_ON_AIR_PARAM_2.value = mcs_index;
    uint8_t pre_type = recv->pre_type;
    PACK(MAC_PL->TIME_ON_AIR_PARAM_1, time_on_air_param_1) {
        time_on_air_param_1.value = 0;
        time_on_air_param_1.ppduLength = len;
        time_on_air_param_1.ppduPreType = pre_type;
    }
    PACK(MAC_PL->TIME_ON_AIR_VALUE, time_on_air_value) {
        time_on_air_value.value = 0;
        time_on_air_value.computeDuration = 1;
    }
    for (;!MAC_PL->TIME_ON_AIR_VALUE.timeOnAirValid;);
    ASSERT_REC_VAL(MAC_PL->TIME_ON_AIR_VALUE.timeOnAirValid != 0, 500);
    return MAC_PL->TIME_ON_AIR_VALUE.timeOnAir;
}

void hal_machw_init(void);
void hal_machw_reset(void);
uint8_t hal_machw_search_addr(struct mac_addr *addr);
void hal_machw_disable_int(void);
void hal_machw_stop(void);
void hal_machw_monitor_mode(void);
bool hal_machw_sleep_check(void);
void hal_machw_idle_req(void);
extern void hal_machw_gen_handler(void);

#endif // _HAL_MACHW_H_
