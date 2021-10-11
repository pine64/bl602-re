#include <ke_event.h>

#include <stdbool.h>
#include <stddef.h>

#include <arch/arch.h>
#include <co_string.h>

typedef void (*p_callback_t)(void);

struct ble_ke_event_env_tag {
    uint32_t event_field;
 // +0
    p_callback_t callback[10];
 // +4
    uint8_t state;
 // +44
};

struct ble_ke_event_env_tag ble_ke_event_env;

/** _patch_ble_ke_event_init
 */
uint32_t _patch_ble_ke_event_init(void *pRet)
{
	(*ble_memset_ptr)(&ble_ke_event_env, 0, sizeof(struct ble_ke_event_env_tag));
	return 1;
}

/** ble_ke_event_init
 */
void ble_ke_event_init(void)
{
	if ((*_rom_patch_hook)(0) == 0) {
		(*ble_memset_ptr)(&ble_ke_event_env, 0, sizeof(struct ble_ke_event_env_tag));
	}
}

/** _patch_ble_ke_event_callback_set
 */
uint32_t _patch_ble_ke_event_callback_set(void *pRet, uint8_t event_type, p_callback_t p_callback)
{
	*(uint8_t *) pRet = 3;
	if (event_type < 10)
	{
		ble_ke_event_env.callback[event_type] = p_callback;
		*(uint8_t *) pRet = 0;
	}
	return 1;
}

/** ble_ke_event_callback_set
 */
uint8_t ble_ke_event_callback_set(uint8_t event_type, p_callback_t p_callback)
{
	uint8_t status;
	if ((*_rom_patch_hook)(&status, event_type, p_callback) != 0)
	{
		return status;
	}
	status = 3;
	if (event_type < 10)
	{
		ble_ke_event_env.callback[event_type] = p_callback;
		status = 0;
	}
	return status;
}

/** _patch_ble_ke_event_set
 */
uint32_t _patch_ble_ke_event_set(void *pRet, uint8_t event_type)
{
	uint32_t mstatus, dummy;
	__asm__ volatile("csrr %0, mstatus" : "=r" (mstatus));
	__asm__ volatile("csrrci %0, mstatus, 8" : "=r" (dummy));
	if (event_type < 10)
	{
		ble_ke_event_env.event_field |= 1 << (event_type & 0x1f);
	}
	__asm__ volatile("csrw mstatus, %0" :: "r" (mstatus));
	if (ble_ke_event_env.state != 0)
	{
		return 1;
	}
	(*ble_post_task_ptr)();
	return 1;
}

/** ble_ke_event_set
 */
void ble_ke_event_set(uint8_t event_type)
{
	uint32_t mstatus, dummy;
	if ((*_rom_patch_hook)(0, event_type) == 0)
	{
		__asm__ volatile("csrr %0, mstatus" : "=r" (mstatus));
		__asm__ volatile("csrrci %0, mstatus, 8" : "=r" (dummy));
		if (event_type < 10)
		{
			ble_ke_event_env.event_field |= 1 << (event_type & 0x1f);
		}
		__asm__ volatile("csrw mstatus, %0" :: "r" (mstatus));
		if (ble_ke_event_env.state == 0)
		{
			(*ble_post_task_ptr)();
		}
	}
}

/** _patch_ble_ke_event_clear
 */
uint32_t _patch_ble_ke_event_clear(void *pRet, uint8_t event_type)
{
	uint32_t mstatus, dummy;
	__asm__ volatile("csrr %0, mstatus" : "=r" (mstatus));
	__asm__ volatile("csrrci %0, mstatus, 8" : "=r" (dummy));
	if (event_type < 10)
	{
		ble_ke_event_env.event_field &= ~(1 << (event_type & 0x1f));
	}
	__asm__ volatile("csrw mstatus, %0" :: "r" (mstatus));
	return 1;
}

/** ble_ke_event_clear
 */
void ble_ke_event_clear(uint8_t event_type)
{
	if ((*_rom_patch_hook)(0, event_type) == 0)
	{
		uint32_t mstatus, dummy;
		__asm__ volatile("csrr %0, mstatus" : "=r" (mstatus));
		__asm__ volatile("csrrci %0, mstatus, 8" : "=r" (dummy));
		if (event_type < 10)
		{
			ble_ke_event_env.event_field &= ~(1 << (event_type & 0x1f));
		}
		__asm__ volatile("csrw mstatus, %0" :: "r" (mstatus));
	}
}

/** ble_ke_event_get
 */
uint8_t ble_ke_event_get(uint8_t event_type)
{
	uint32_t mstatus, dummy;
	__asm__ volatile("csrr %0, mstatus" : "=r" (mstatus));
	__asm__ volatile("csrrci %0, mstatus, 8" : "=r" (dummy));
	bool hasEvent = 0;
	if (event_type < 10)
	{
		hasEvent = (ble_ke_event_env.event_field >> (event_type & 0x1f)) & 1;
	}
	__asm__ volatile("csrw mstatus, %0" :: "r" (mstatus));
	return hasEvent;
}

/** _patch_ble_ke_event_get_all
 */
uint32_t _patch_ble_ke_event_get_all(void *pRet)
{
	*(uint32_t *) pRet = ble_ke_event_env.event_field;
	return 1;
}

/** ble_ke_event_get_all
 */
uint32_t ble_ke_event_get_all(void)
{
	uint32_t all, retVal, patchRes;
	patchRes = (*_rom_patch_hook)(&all);
	if (patchRes != 0)
	{
		retVal = all;
	}
	else
	{
		retVal = ble_ke_event_env.event_field;
	}
	return retVal;
}

/** _patch_ble_ke_event_flush
 */
uint32_t _patch_ble_ke_event_flush(void *pRet)
{
	ble_ke_event_env.event_field = 0;
	return 1;
}

/** ble_ke_event_flush
 */
void ble_ke_event_flush(void)
{
	if ((*_rom_patch_hook)(0) == 0)
	{
		ble_ke_event_env.event_field = 0;
	}
}

/** _patch_ble_ke_event_schedule
 */
uint32_t _patch_ble_ke_event_schedule(void *pRet)
{
	(void) pRet;
	//do {
		if (ble_ke_event_env.event_field == 0)
		{
			ble_ke_event_env.state = 0;
			return 1;
		}
		ble_ke_event_env.state = 1;
		int i = 0;
		for (; i < 0x20; ++i)
		{
			if (((0x80000000U >> (i & 0x1f)) & ble_ke_event_env.event_field) != 0) break;
		}
		if (ble_ke_event_env.callback[0x1f - i & 0xff] != NULL)
		{
			(*ble_ke_event_env.callback[0x1f - i & 0xff])();
		}
	//} while (true);
}

/** ble_ke_event_schedule
 */
void ble_ke_event_schedule(void)
{
	if ((*_rom_patch_hook)(0) == 0)
	{
		while (ble_ke_event_env.event_field != 0)
		{
			ble_ke_event_env.state = 1;
			int uVar2 = 0;
			do
			{
				if (((0x80000000U >> (uVar2 & 0x1f)) & ble_ke_event_env.event_field) != 0) break;
				uVar2 = uVar2 + 1;
			} while (uVar2 != 0x20);
			if (ble_ke_event_env.callback[0x1f - uVar2 & 0xff] != NULL)
			{
				(*ble_ke_event_env.callback[0x1f - uVar2 & 0xff])();
			}
		}
		ble_ke_event_env.state = 0;
	}
}
