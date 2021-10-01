#include "ke_queue.h"

#include <arch/arch.h>

uint32_t _patch_ble_ke_queue_extract(void *pRet, struct co_list *const queue, bool (*func)(const struct co_list_hdr *, uint32_t), uint32_t arg)
{
	__builtin_trap();
}

struct co_list_hdr *ble_ke_queue_extract(struct co_list *const queue, bool (*func)(const struct co_list_hdr *, uint32_t), uint32_t arg)
{
	__builtin_trap();
}

uint32_t _patch_ble_ke_queue_insert(void *pRet, struct co_list *const queue, struct co_list_hdr *const element, bool (*cmp)(const struct co_list_hdr *, const struct co_list_hdr *))
{
	struct co_list_hdr *hdr = NULL;
	struct co_list_hdr *next = queue->first;
	for (; next != NULL; hdr = next, next = next->next)
	{
		if ((*cmp)(element, next))
		{
			queue->last = element;
			break;
		}
	}
	element->next = next;
	if (hdr == NULL)
	{
		queue->first = element;
	}
	else
	{
		hdr->next = element;
	}
	return 1;
}

void ble_ke_queue_insert(struct co_list *const queue, struct co_list_hdr *const element, bool (*cmp)(const struct co_list_hdr *, const struct co_list_hdr *))
{
	struct co_list_hdr *hdr = NULL;
	struct co_list_hdr *next = queue->first;
	if ((*_rom_patch_hook)(0, queue, element, cmp) == 0)
	{
		return;
	}
	for (; next != NULL; hdr = next, next = next->next)
	{
		if ((*cmp)(element, next))
		{
			queue->last = element;
			break;
		}
	}
	element->next = next;
	if (hdr == NULL)
	{
		queue->first = element;
	}
	else
	{
		hdr->next = element;
	}
}
