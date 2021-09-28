#ifndef BLECONTROLLER_MODULES_KE_EVENT_H
#define BLECONTROLLER_MODULES_KE_EVENT_H

#include <stdint.h>

enum KE_EVENT_STATUS {
    KE_EVENT_OK = 0,
    KE_EVENT_FAIL = 1,
    KE_EVENT_UNKNOWN = 2,
    KE_EVENT_CAPA_EXCEEDED = 3,
    KE_EVENT_ALREADY_EXISTS = 4,
};

uint32_t _patch_ble_ke_event_init(void *pRet);
void ble_ke_event_init(void);
uint32_t _patch_ble_ke_event_callback_set(void *pRet, uint8_t event_type, void (*p_callback)(void));
uint8_t ble_ke_event_callback_set(uint8_t event_type, void (*p_callback)(void));
uint32_t _patch_ble_ke_event_set(void *pRet, uint8_t event_type);
void ble_ke_event_set(uint8_t event_type);
uint32_t _patch_ble_ke_event_clear(void *pRet, uint8_t event_type);
void ble_ke_event_clear(uint8_t event_type);
uint8_t ble_ke_event_get(uint8_t event_type);
uint32_t _patch_ble_ke_event_get_all(void *pRet);
uint32_t ble_ke_event_get_all(void);
uint32_t _patch_ble_ke_event_flush(void *pRet);
void ble_ke_event_flush(void);
uint32_t _patch_ble_ke_event_schedule(void *pRet);
void ble_ke_event_schedule(void);

#endif /* BLECONTROLLER_MODULES_KE_EVENT_H */
