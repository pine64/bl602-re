#ifndef BLECONTROLLER_IP_BLE_LL_LLD_LLD_SLEEP_H
#define BLECONTROLLER_IP_BLE_LL_LLD_LLD_SLEEP_H

#include <stdbool.h>
#include <stdint.h>

void lld_sleep_init(void);
void lld_sleep_enter(uint32_t sleep_duration, bool ext_wakeup);
void lld_sleep_wakeup(void);
void lld_sleep_wakeup_end(void);
void lld_sleep_set_sw_wakeup(bool sw_wakeup);
bool lld_sleep_is_sw_wakeup(void);
void lld_sleep_set_last_sleep_dur(uint32_t sleep_dur);
uint32_t lld_sleep_get_last_sleep_dur(void);
void lld_sleep_set_pds_reset(bool pds_reset);
uint32_t lld_sleep_get_pds_reset(void);
void lld_sleep_set_current_time(void);

#endif /* BLECONTROLLER_IP_BLE_LL_LLD_LLD_SLEEP_H */
