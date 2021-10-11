#include <ke_mem.h>

#include <arch/arch.h>

#include "ke_env.h"

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


/** _patch_ble_ke_mem_is_in_heap
 */
uint32_t _patch_ble_ke_mem_is_in_heap(void *pRet, uint8_t type, void *mem_ptr)
{
	*(bool *) pRet = false;
	uint8_t *heap_start = (uint8_t *) (ble_ke_env.heap[type]);
	if ((heap_start <= (uint8_t *) mem_ptr) &&
		((uint8_t *) mem_ptr <= heap_start + ble_ke_env.heap_size[type]))
	{
		*(bool *) pRet = true;
	}
	return 1;
}

/** ble_ke_mem_is_in_heap
 */
bool ble_ke_mem_is_in_heap(uint8_t type, void *mem_ptr)
{
	bool ret;
	if ((*_rom_patch_hook)(&ret, type, mem_ptr) != 0)
	{
		return ret;
	}
	uint8_t *heap_start = (uint8_t *) (ble_ke_env.heap[type]);
	ret = false;
	if ((heap_start <= (uint8_t *) mem_ptr) &&
		((uint8_t *) mem_ptr <= heap_start + ble_ke_env.heap_size[type]))
	{
		ret = true;
	}
	return ret;
}

/** _patch_ble_ke_mem_init
 */
uint32_t _patch_ble_ke_mem_init(void *pRet, uint8_t type, uint8_t *heap, uint16_t heap_size)
{
#if 0
	uint uVar1;
	int iVar2 = (type + 4) * 4;
	uVar1 = (uint)(heap + 3) & 0xfffffffc;
	//*(uint *)(iVar2 + 0x11008) = uVar1;
	//*(uint16_t *)(uVar1 + 2) = ((short)heap + heap_size & 0xfffc) - (short)uVar1;
	//**(undefined2 **)(iVar2 + 0x11008) = 0xa55a;
	*(undefined4 *)(*(int *)(iVar2 + 0x11008) + 4) = 0;
	*(undefined4 *)(*(int *)(iVar2 + 0x11008) + 8) = 0;
	*(uint16_t *)(&ble_ke_env + (type + 0x10) * 2) = heap_size;
	return 1;
#endif
	uint32_t mstatus, dummy;
	struct mblock_free *start = (void *) ((uintptr_t)(heap + 3) & 0xFFFFFFFC);
	uintptr_t aligned_end = (uintptr_t) (heap + heap_size) & 0xFFFFFFFC;
	uintptr_t aligned_size = aligned_end - (uintptr_t) start;
	ble_ke_env.heap[type] = start;
	__asm__ volatile("csrr %0, mstatus" : "=r" (mstatus));
	__asm__ volatile("csrrci %0, mstatus, 8" : "=r" (dummy));
	start->free_size = aligned_size;
	start->corrupt_check = 0xA55A;
	start->next = NULL;
	start->previous = NULL;
	ble_ke_env.heap_size[type] = aligned_size;
/*
	lw       a0, 8(a5)
	a2 = 0xffffa55a;
	sh       a2, 0(a0)
	lw       a2, 8(a5)
	addi     a1, a1, 16
	slli     a1, a1, 0x1
	sw       zero, 4(a2)
	lw       a5, 8(a5)
	add      a4, a4, a1
	sw       zero, 8(a5)
	sh       a3, 0(a4)*/
	__asm__ volatile("csrw mstatus, %0" :: "r" (mstatus));
	return 1;
}

/** ble_ke_mem_init
 */
void ble_ke_mem_init(uint8_t type, uint8_t *heap, uint16_t heap_size)
{
	__builtin_trap();
}

/** ble_ke_mem_is_empty
 */
bool ble_ke_mem_is_empty(uint8_t type)
{
	struct mblock_free *block = ble_ke_env.heap[type];
	uint32_t mstatus, dummy;
	__asm__ volatile("csrr %0, mstatus" : "=r" (mstatus));
	__asm__ volatile("csrrci %0, mstatus, 8" : "=r" (dummy));
	uintptr_t size = ((uintptr_t) block + ble_ke_env.heap_size[type]) & 0xFFFFFFFC - (uintptr_t) block;
	bool empty = size == block->free_size;
	__asm__ volatile("csrw mstatus, %0" :: "r" (mstatus));
	return empty;
}

/** ble_ke_check_malloc
 */
bool ble_ke_check_malloc(uint32_t size, uint8_t type)
{
	__builtin_trap();
}

/** _patch_ble_ke_malloc
 */
uint32_t _patch_ble_ke_malloc(void *pRet, uint32_t size, uint8_t type)
{
	__builtin_trap();
}

/** *ble_ke_malloc
 */
void *ble_ke_malloc(uint32_t size, uint8_t type)
{
	__builtin_trap();
}

/** _patch_ble_ke_free
 */
uint32_t _patch_ble_ke_free(void *pRet, void *mem_ptr)
{
	__builtin_trap();
}

/** ble_ke_free
 */
void ble_ke_free(void *mem_ptr)
{
	__builtin_trap();
}

/** _patch_ble_ke_is_free
 */
uint32_t _patch_ble_ke_is_free(void *pRet, void *mem_ptr)
{
	*(bool *) pRet = ((struct mblock_used *) mem_ptr)[-1].corrupt_check != 0x8338;
	return 1;
}

/** ble_ke_is_free
 */
bool ble_ke_is_free(void *mem_ptr)
{
	bool ret;
	if ((*_rom_patch_hook)(&ret, mem_ptr) != 0)
	{
		return ret;
	}
	return ((struct mblock_used *) mem_ptr)[-1].corrupt_check != 0x8338;
}
