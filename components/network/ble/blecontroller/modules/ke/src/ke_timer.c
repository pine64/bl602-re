#include "ke_timer.h"

#include <arch/arch.h>
#include <bl602.h>
#include <ke_event.h>
#include <ke_mem.h>

#include "ke_env.h"


uint32_t _patch_ke_time(void *pRet);
uint32_t ble_ke_time(void);
uint32_t _patch_ble_ke_time_cmp(void *pRet, uint32_t newer, uint32_t older);
bool ble_ke_time_cmp(uint32_t newer, uint32_t older);
uint32_t _patch_ble_ke_time_past(void *pRet, uint32_t time);
bool ble_ke_time_past(uint32_t time);
uint32_t _patch_ble_ke_timer_hw_set(void *pRet, struct ke_timer *timer);
void ble_ke_timer_hw_set(struct ke_timer *timer);
uint32_t _patch_ble_cmp_abs_time(void *pRet, const struct co_list_hdr *timerA, const struct co_list_hdr *timerB);
bool ble_cmp_abs_time(const struct co_list_hdr *timerA, const struct co_list_hdr *timerB);
uint32_t _patch_ble_cmp_timer_id(void *pRet, const struct co_list_hdr *timer, uint32_t timer_task);
bool ble_cmp_timer_id(const struct co_list_hdr *timer, uint32_t timer_task);
uint32_t _patch_ble_ke_timer_schedule(void *pRet);
void ble_ke_timer_schedule(void);
uint32_t _patch_ble_ke_timer_init(void *pRet);
void ble_ke_timer_init(void);
uint32_t _patch_ble_ke_timer_set(void *pRet, const ke_msg_id_t timer_id, const ke_task_id_t task_id, uint32_t delay);
void ble_ke_timer_set(const ke_msg_id_t timer_id, const ke_task_id_t task_id, uint32_t delay);
uint32_t _patch_ble_ke_timer_clear(void *pRet, const ke_msg_id_t timer_id, const ke_task_id_t task_id);
void ble_ke_timer_clear(const ke_msg_id_t timer_id, const ke_task_id_t task_id);
uint32_t _patch_ble_ke_timer_active(void *pRet, const ke_msg_id_t timer_id, const ke_task_id_t task_id);
bool ble_ke_timer_active(const ke_msg_id_t timer_id, const ke_task_id_t task_id);
void ble_ke_timer_adjust_all(uint32_t delay);
uint32_t _patch_ble_ke_timer_target_get(void *pRet);
uint32_t ble_ke_timer_target_get(void);




/** _patch_ke_time
 */
uint32_t _patch_ke_time(void *pRet)
{
	BL_WR_WORD(0x2800001c, 0x80000000);
	while (BL_RD_WORD(0x2800001c) & 0x80000000);
	*(uint32_t *) pRet = (BL_RD_WORD(0x2800001c) + (BL_RD_WORD(0x28000020) < 312U)) << 5 >> 9;
	return 1;
}

/** ble_ke_time
 */
uint32_t ble_ke_time(void)
{
	uint32_t res;
	if ((*_rom_patch_hook)(&res) != 0)
	{
		return res;
	}
	BL_WR_WORD(0x2800001c, 0x80000000);
	while (BL_RD_WORD(0x2800001c) & 0x80000000);
	return (BL_RD_WORD(0x2800001c) + (BL_RD_WORD(0x28000020) < 312U)) << 5 >> 9;
}

/** _patch_ble_ke_time_cmp
 */
uint32_t _patch_ble_ke_time_cmp(void *pRet, uint32_t newer, uint32_t older)
{
	*(bool *) pRet = (((newer - older) >> 22) ^ 1) & 1;
	return 1;
}

/** ble_ke_time_cmp
 */
bool ble_ke_time_cmp(uint32_t newer, uint32_t older)
{
	bool result;
	if ((*_rom_patch_hook)(&result, newer, older) != 0)
	{
		return result;
	}
	return (((newer - older) >> 22) ^ 1) & 1;
}

/** _patch_ble_ke_time_past
 */
uint32_t _patch_ble_ke_time_past(void *pRet, uint32_t time)
{
	uint32_t newer = ble_ke_time();
	*(bool *) pRet = ble_ke_time_cmp(newer, time);
	return 1;
}

/** ble_ke_time_past
 */
bool ble_ke_time_past(uint32_t time)
{
	uint32_t newer;
	bool result;
	if ((*_rom_patch_hook)(&result, time) != 0) {
		return result;
	}
	newer = ble_ke_time();
	return ble_ke_time_cmp(newer, time);
}

/** _patch_ble_ke_timer_hw_set
 */
uint32_t _patch_ble_ke_timer_hw_set(void *pRet, struct ke_timer *timer)
{
	if (timer != NULL)
	{
		BL_WR_WORD(0x280000f4, timer->time);
		if ((BL_RD_WORD(0x2800000c) >> 6 & 1) == 0)
		{
			BL_WR_WORD(0x28000018, 0x40);
			BL_WR_WORD(0x2800000c, BL_RD_WORD(0x2800000c) | 0x40);
		}
		return 1;
	}
	BL_WR_WORD(0x2800000c, BL_RD_WORD(0x2800000c) & 0xffffffbf);
	return 1;
}

/** ble_ke_timer_hw_set
 */
void ble_ke_timer_hw_set(struct ke_timer *timer)
{
	if ((*_rom_patch_hook)(0, timer) == 0)
	{
		if (timer != NULL)
		{
			BL_WR_WORD(0x280000f4, timer->time);
			if ((BL_RD_WORD(0x2800000c) >> 6 & 1) == 0)
			{
				BL_WR_WORD(0x28000018, 0x40);
				BL_WR_WORD(0x2800000c, BL_RD_WORD(0x2800000c) | 0x40);
			}
			return;
		}
		BL_WR_WORD(0x2800000c, BL_RD_WORD(0x2800000c) & 0xffffffbf);
	}
}

/** _patch_ble_cmp_abs_time
 */
uint32_t _patch_ble_cmp_abs_time(void *pRet, const struct co_list_hdr *timerA, const struct co_list_hdr *timerB)
{
	*(bool *) pRet = ((((const struct ke_timer*) timerA)->time - ((const struct ke_timer*) timerB)->time) >> 0x16) & 1;
	return 1;
}

/** ble_cmp_abs_time
 */
bool ble_cmp_abs_time(const struct co_list_hdr *timerA, const struct co_list_hdr *timerB)
{
	bool result;
	if ((*_rom_patch_hook)(&result, timerA, timerB) != 0)
	{
		return result;
	}
	return ((((const struct ke_timer*) timerA)->time - ((const struct ke_timer*) timerB)->time) >> 0x16) & 1;
}

/** _patch_ble_cmp_timer_id
 */
uint32_t _patch_ble_cmp_timer_id(void *pRet, const struct co_list_hdr *timer, uint32_t timer_task)
{
	bool result = false;
	if (((const struct ke_timer*) timer)->id == timer_task >> 0x10)
	{
		result = ((const struct ke_timer*) timer)->task == (timer_task & 0xffff);
	}
	*(bool *) pRet = result;
	return 1;
}

/** ble_cmp_timer_id
 */
bool ble_cmp_timer_id(const struct co_list_hdr *timer, uint32_t timer_task)
{
	bool result;
	if ((*_rom_patch_hook)(&result, timer, timer_task) != 0)
	{
		return result;
	}
	if (((const struct ke_timer*) timer)->id == timer_task >> 0x10)
	{
		return ((const struct ke_timer*) timer)->task == (timer_task & 0xffff);
	}
	return false;
}

/** _patch_ble_ke_timer_schedule
 */
uint32_t _patch_ble_ke_timer_schedule(void *pRet)
{
	__builtin_trap();
}

/** ble_ke_timer_schedule
 */
void ble_ke_timer_schedule(void)
{
	__builtin_trap();
}

/** _patch_ble_ke_timer_init
 */
uint32_t _patch_ble_ke_timer_init(void *pRet)
{
	ble_ke_event_callback_set(3, ble_ke_timer_schedule);
	return 1;
}

/** ble_ke_timer_init
 */
void ble_ke_timer_init(void)
{
	if ((*_rom_patch_hook)(0) == 0)
	{
		ble_ke_event_callback_set(3, ble_ke_timer_schedule);
	}
}

/** _patch_ble_ke_timer_set
 */
uint32_t _patch_ble_ke_timer_set(void *pRet, const ke_msg_id_t timer_id, const ke_task_id_t task_id, uint32_t delay)
{
	__builtin_trap();
}

/** ble_ke_timer_set
 */
void ble_ke_timer_set(const ke_msg_id_t timer_id, const ke_task_id_t task_id, uint32_t delay)
{
	__builtin_trap();
}

/** _patch_ble_ke_timer_clear
 */
uint32_t _patch_ble_ke_timer_clear(void *pRet, const ke_msg_id_t timer_id, const ke_task_id_t task_id)
{
	__builtin_trap();
}

/** ble_ke_timer_clear
 */
void ble_ke_timer_clear(const ke_msg_id_t timer_id, const ke_task_id_t task_id)
{
	__builtin_trap();
}

/** _patch_ble_ke_timer_active
 */
uint32_t _patch_ble_ke_timer_active(void *pRet, const ke_msg_id_t timer_id, const ke_task_id_t task_id)
{
	__builtin_trap();
}

/** ble_ke_timer_active
 */
bool ble_ke_timer_active(const ke_msg_id_t timer_id, const ke_task_id_t task_id)
{
	struct ke_timer *timer;
	bool result;
	if ((*_rom_patch_hook)(&result, timer_id, task_id) == 0)
	{
		return result;
	}
	for (timer = (struct ke_timer *) ble_ke_env.queue_timer.first; timer != NULL; timer = timer->next)
	{
		if ((timer->id == timer_id) && (timer->task == task_id))
		{
			return true;
		}
	}
	return false;
}

/** ble_ke_timer_adjust_all
 */
void ble_ke_timer_adjust_all(uint32_t delay)
{
	struct ke_timer *timer;
	for (timer = (struct ke_timer *) ble_ke_env.queue_timer.first; timer != NULL; timer = timer->next)
	{
		timer->time += delay;
	}
}

/** _patch_ble_ke_timer_target_get
 */
uint32_t _patch_ble_ke_timer_target_get(void *pRet)
{
	*(int32_t *) pRet = -1;
	if (ble_ke_env.queue_timer.first != 0)
	{
		*(int32_t *) pRet = (int32_t) ble_ke_env.queue_saved.first << 4;
	}
	return 1;
}

/** ble_ke_timer_target_get
 */
uint32_t ble_ke_timer_target_get(void)
{
	uint32_t uStack20;
	uint32_t res;
	if ((*_rom_patch_hook)(&res,_rom_patch_hook) != 0)
	{
		return res;
	}
	res = 0xffffffff;
	if ((struct ke_timer *) ble_ke_env.queue_timer.first != NULL)
	{
		res = ble_ke_env.heap_size[0] << 4;// (int32_t) ble_ke_env.queue_saved.first << 4;
	}
	return res;
}
