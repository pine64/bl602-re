#include "co_list.h"

#include <stddef.h>


void co_list_init(struct co_list *list)
{
	__builtin_trap();
}

void co_list_pool_init(struct co_list *list, void *pool, size_t elmt_size, uint32_t elmt_cnt, void *default_value)
{
	__builtin_trap();
}

void co_list_push_back(struct co_list *list, struct co_list_hdr *list_hdr)
{
	__builtin_trap();
}

void co_list_push_front(struct co_list *list, struct co_list_hdr *list_hdr)
{
	__builtin_trap();
}

struct co_list_hdr *co_list_pop_front(struct co_list *list)
{
	__builtin_trap();
}

void co_list_extract(struct co_list *list, struct co_list_hdr *list_hdr)
{
	__builtin_trap();
}

bool co_list_find(struct co_list *list, struct co_list_hdr *list_hdr)
{
	__builtin_trap();
}

uint32_t co_list_cnt(const struct co_list* const list)
{
	__builtin_trap();
}

void co_list_insert(struct co_list* const list, struct co_list_hdr* const element, bool (*cmp)(const struct co_list_hdr*, const struct co_list_hdr*))
{
	__builtin_trap();
}

void co_list_insert_after(struct co_list* const list, struct co_list_hdr* const prev_element, struct co_list_hdr* const element)
{
	__builtin_trap();
}

void co_list_insert_before(struct co_list* const list, struct co_list_hdr* const next_element, struct co_list_hdr* const element)
{
	__builtin_trap();
}

void co_list_concat(struct co_list *list1, struct co_list *list2)
{
	__builtin_trap();
}

void co_list_remove(struct co_list *list, struct co_list_hdr *prev_element, struct co_list_hdr *element)
{
	__builtin_trap();
}
