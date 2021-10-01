#include <co_list.h>

#include <arch/arch.h>
#include <co_string.h>

/** _patch_ble_co_list_init
 */
uint32_t _patch_ble_co_list_init(void *pRet, struct co_list *list)
{
	list->first = NULL;
	list->last = NULL;
	return 1;
}

/** ble_co_list_init
 */
void ble_co_list_init(struct co_list *list)
{
	if ((*_rom_patch_hook)(NULL, list) == 0)
	{
		list->first = NULL;
		list->last = NULL;
	}
}

/** ble_co_list_pool_init
 */
void ble_co_list_pool_init(struct co_list *list, void *pool, size_t elmt_size, uint32_t elmt_cnt, void *default_value, uint8_t list_type)
{
	ble_co_list_init(list);
	for (uint32_t i = 0; i != elmt_cnt; ++i)
	{
		if (default_value != NULL)
		{
			(*ble_memcpy_ptr)(pool, default_value, elmt_size);
		}
		if ((elmt_cnt - 1 == i) && (list_type != 0)) {
			if (list->first == NULL)
			{
				list->first = (struct co_list_hdr *) pool;
			}
			else
			{
				list->last->next = (struct co_list_hdr *) pool;
			}
			list->last = (struct co_list_hdr *)pool;
			*(struct co_list_hdr **) pool = NULL;
		}
		else
		{
			ble_co_list_push_back(list, (struct co_list_hdr *) pool);
		}
		pool = (void *)((uintptr_t) pool + elmt_size);
	}
	return;
}

/** _patch_ble_co_list_push_back
 */
uint32_t _patch_ble_co_list_push_back(void *pRet, struct co_list *list, struct co_list_hdr *list_hdr)
{
	if (list->first == NULL)
	{
		list->first = list_hdr;
	}
	else {
		list->last->next = list_hdr;
	}
	list->last = list_hdr;
	list_hdr->next = NULL;
	return 1;
}

/** ble_co_list_push_back
 */
void ble_co_list_push_back(struct co_list *list, struct co_list_hdr *list_hdr)
{
	if ((*_rom_patch_hook)(NULL, list, list_hdr) == 0)
	{
		if (list->first == NULL)
		{
			list->first = list_hdr;
		}
		else
		{
			list->last->next = list_hdr;
		}
		list->last = list_hdr;
		list_hdr->next = NULL;
	}
}

/** _patch_ble_co_list_push_front
 */
uint32_t _patch_ble_co_list_push_front(void *pRet, struct co_list *list, struct co_list_hdr *list_hdr)
{
	if (list->first == NULL)
	{
		list->last = list_hdr;
	}
	list_hdr->next = list->first;
	list->first = list_hdr;
	return 1;
}

/** ble_co_list_push_front
 */
void ble_co_list_push_front(struct co_list *list, struct co_list_hdr *list_hdr)
{
	if ((*_rom_patch_hook)(NULL, list, list_hdr) == 0)
	{
		if (list->first == NULL)
		{
			list->last = list_hdr;
		}
		list_hdr->next = list->first;
		list->first = list_hdr;
	}
}

/** _patch_ble_co_list_pop_front
 */
uint32_t _patch_ble_co_list_pop_front(void *pRet, struct co_list *list)
{
	struct co_list_hdr *hdr = list->first;
	*(struct co_list_hdr **) pRet = hdr;
	if (hdr != NULL)
	{
		hdr = hdr->next;
		list->first = hdr;
		if (hdr == NULL)
		{
			list->last = NULL;
		}
	}
	return 1;
}

/** *ble_co_list_pop_front
 */
struct co_list_hdr *ble_co_list_pop_front(struct co_list *list)
{
	struct co_list_hdr *head, *element;
	if ((*_rom_patch_hook)(&head, list, _rom_patch_hook) == 0)
	{
		head = list->first;
		if (head != NULL)
		{
			element = head->next;
			list->first = element;
			if (element == NULL)
			{
				list->last = NULL;
			}
		}
	}
	return head;
}

/** _patch_ble_co_list_extract
 */
uint32_t _patch_ble_co_list_extract(void *pRet, struct co_list *list, struct co_list_hdr *list_hdr, uint8_t nb_following)
{
	struct co_list_hdr *cVar1;
	int iVar2 = nb_following;
	struct co_list_hdr *prev = NULL;
	struct co_list_hdr *elem = list->first;
	do
	{
		if (elem == NULL)
		{
			if (*(uint8_t *) pRet != 0)
			{
L0:
				for (; cVar1 = elem->next, iVar2 != 0; --iVar2)
				{
					elem = cVar1;
				}
				if (prev == NULL)
				{
					list->first = cVar1;
				}
				else
				{
					prev->next = cVar1;
				}
				if (list->last->next == elem)
				{
					list->last->next = prev;
				}
			}
			return 1;
		}
		if (elem == list_hdr)
		{
			*(uint8_t *) pRet = 1;
			goto L0;
		}
		prev = elem;
		elem = elem->next;
	} while (true);
}

/** ble_co_list_extract
 */
bool ble_co_list_extract(struct co_list *list, struct co_list_hdr *list_hdr, uint8_t nb_following)
{
	__builtin_trap();
}

/** _patch_ble_co_list_extract_after
 */
uint32_t _patch_ble_co_list_extract_after(void *pRet, struct co_list *list, struct co_list_hdr *elt_ref_hdr, struct co_list_hdr *elt_to_rem_hdr)
{
	__builtin_trap();
}

/** ble_co_list_extract_after
 */
void ble_co_list_extract_after(struct co_list *list, struct co_list_hdr *elt_ref_hdr, struct co_list_hdr *elt_to_rem_hdr)
{
	__builtin_trap();
}

/** _patch_ble_co_list_find
 */
uint32_t _patch_ble_co_list_find(void *pRet, struct co_list *list, struct co_list_hdr *list_hdr)
{
	__builtin_trap();
}

/** ble_co_list_find
 */
bool ble_co_list_find(struct co_list *list, struct co_list_hdr *list_hdr)
{
	__builtin_trap();
}

/** _patch_ble_co_list_merge
 */
uint32_t _patch_ble_co_list_merge(void *pRet, struct co_list *list1, struct co_list *list2)
{
	__builtin_trap();
}

/** ble_co_list_merge
 */
void ble_co_list_merge(struct co_list *list1, struct co_list *list2)
{
	__builtin_trap();
}

/** _patch_ble_co_list_insert_before
 */
uint32_t _patch_ble_co_list_insert_before(void *pRet, struct co_list *list, struct co_list_hdr *elt_ref_hdr, struct co_list_hdr *elt_to_add_hdr)
{
	__builtin_trap();
}

/** ble_co_list_insert_before
 */
void ble_co_list_insert_before(struct co_list *list, struct co_list_hdr *elt_ref_hdr, struct co_list_hdr *elt_to_add_hdr)
{
	__builtin_trap();
}

/** _patch_ble_co_list_insert_after
 */
uint32_t _patch_ble_co_list_insert_after(void *pRet, struct co_list *list, struct co_list_hdr *elt_ref_hdr, struct co_list_hdr *elt_to_add_hdr)
{
	__builtin_trap();
}

/** ble_co_list_insert_after
 */
void ble_co_list_insert_after(struct co_list *list, struct co_list_hdr *elt_ref_hdr, struct co_list_hdr *elt_to_add_hdr)
{
	__builtin_trap();
}

/** _patch_ble_co_list_size
 */
uint32_t _patch_ble_co_list_size(void *pRet, struct co_list *list)
{
	__builtin_trap();
}

/** ble_co_list_size
 */
uint16_t ble_co_list_size(struct co_list *list)
{
	__builtin_trap();
}
/** _patch_ble_co_list_check_size_available
 */
uint32_t _patch_ble_co_list_check_size_available(void *pRet, struct co_list *list, uint8_t free_size_needed)
{
	__builtin_trap();
}

/** ble_co_list_check_size_available
 */
bool ble_co_list_check_size_available(struct co_list *list, uint8_t free_size_needed)
{
	__builtin_trap();
}
