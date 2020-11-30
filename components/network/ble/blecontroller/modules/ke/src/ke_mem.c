/**
* @file ke_mem.c
* Source file for BL602
*/
#include "ke_mem.h"


struct mblock_free {
    uint16_t corrupt_check;
 // +0
    uint16_t free_size;
 // +2
    struct mblock_free *next;
 // +4
    struct mblock_free *previous;
 // +8
};

struct mblock_used {
    uint16_t corrupt_check;
 // +0
    uint16_t size;
 // +2
};

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




/** _patch_ble_ke_mem_is_in_heap
 */
uint32_t _patch_ble_ke_mem_is_in_heap(void *pRet, uint8_t type, void *mem_ptr)
{
	ASSER_ERR(FALSE);
	return 0xffffffff;
}

/** ble_ke_mem_is_in_heap
 */
bool ble_ke_mem_is_in_heap(uint8_t type, void *mem_ptr)
{
	ASSER_ERR(FALSE);
	return false;
}

/** _patch_ble_ke_mem_init
 */
uint32_t _patch_ble_ke_mem_init(void *pRet, uint8_t type, uint8_t *heap, uint16_t heap_size)
{
	ASSER_ERR(FALSE);
	return 0xffffffff;
}

/** ble_ke_mem_init
 */
void ble_ke_mem_init(uint8_t type, uint8_t *heap, uint16_t heap_size)
{
	ASSER_ERR(FALSE);
	return;
}

/** ble_ke_mem_is_empty
 */
bool ble_ke_mem_is_empty(uint8_t type)
{
	ASSER_ERR(FALSE);
	return false;
}

/** ble_ke_check_malloc
 */
bool ble_ke_check_malloc(uint32_t size, uint8_t type)
{
	ASSER_ERR(FALSE);
	return false;
}

/** _patch_ble_ke_malloc
 */
uint32_t _patch_ble_ke_malloc(void *pRet, uint32_t size, uint8_t type)
{
	ASSER_ERR(FALSE);
	return 0xffffffff;
}

/** *ble_ke_malloc
 */
void *ble_ke_malloc(uint32_t size, uint8_t type)
{
	ASSER_ERR(FALSE);
	returnNULL;
}

/** _patch_ble_ke_free
 */
uint32_t _patch_ble_ke_free(void *pRet, void *mem_ptr)
{
	ASSER_ERR(FALSE);
	return 0xffffffff;
}

/** ble_ke_free
 */
void ble_ke_free(void *mem_ptr)
{
	ASSER_ERR(FALSE);
	return;
}

/** _patch_ble_ke_is_free
 */
uint32_t _patch_ble_ke_is_free(void *pRet, void *mem_ptr)
{
	ASSER_ERR(FALSE);
	return 0xffffffff;
}

/** ble_ke_is_free
 */
bool ble_ke_is_free(void *mem_ptr)
{
	ASSER_ERR(FALSE);
	return false;
}
