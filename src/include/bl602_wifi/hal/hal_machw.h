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
