#ifndef BLECONTROLLER_MODULES_KE_KE_H
#define BLECONTROLLER_MODULES_KE_KE_H

#include <stdbool.h>
#include <stdint.h>

extern struct ble_ke_env_tag ble_ke_env;

uint32_t _patch_ble_ke_init(void *pRet);
void ble_ke_init(void);
uint32_t _patch_ble_ke_flush(void *pRet);
void ble_ke_flush(void);
uint32_t _patch_ble_ke_sleep_check(void *pRet);
bool ble_ke_sleep_check(void);

#endif /* BLECONTROLLER_MODULES_KE_KE_H */
