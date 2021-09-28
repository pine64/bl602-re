#ifndef BLECONTROLLER_MODULES_KE_MEM_H
#define BLECONTROLLER_MODULES_KE_MEM_H

#include <stdbool.h>
#include <stdint.h>

uint32_t _patch_ble_ke_mem_is_in_heap(void *pRet, uint8_t type, void *mem_ptr);
bool ble_ke_mem_is_in_heap(uint8_t type, void *mem_ptr);
uint32_t _patch_ble_ke_mem_init(void *pRet, uint8_t type, uint8_t *heap, uint16_t heap_size);
void ble_ke_mem_init(uint8_t type, uint8_t *heap, uint16_t heap_size);
bool ble_ke_mem_is_empty(uint8_t type);
bool ble_ke_check_malloc(uint32_t size, uint8_t type);
uint32_t _patch_ble_ke_malloc(void *pRet, uint32_t size, uint8_t type);
void *ble_ke_malloc(uint32_t size, uint8_t type);
uint32_t _patch_ble_ke_free(void *pRet, void *mem_ptr);
void ble_ke_free(void *mem_ptr);
uint32_t _patch_ble_ke_is_free(void *pRet, void *mem_ptr);
bool ble_ke_is_free(void *mem_ptr);

#endif /* BLECONTROLLER_MODULES_KE_MEM_H */
