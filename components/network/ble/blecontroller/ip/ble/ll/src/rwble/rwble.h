#ifndef BLECONTROLLER_IP_BLE_LL_RWBLE_RWBLE_H
#define BLECONTROLLER_IP_BLE_LL_RWBLE_RWBLE_H

#include <stdbool.h>
#include <stdint.h>

void rwble_init(void);
void rwble_reset(void);
bool rwble_sleep_check(void);
bool rwble_activity_ongoing_check(void);
void rwble_version(uint8_t *fw_version, uint8_t *hw_version);
void rwble_isr_clear(void);
void rwble_isr(void);

#endif /* BLECONTROLLER_IP_BLE_LL_RWBLE_RWBLE_H */
