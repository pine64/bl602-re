#include <modules/common/co_list.h>

#include <stddef.h>
#include <assert.h>
#include <stdint.h>
#include <stdbool.h>
#include <utils.h>

void co_list_init(struct co_list *list) {
	list->first = list->last = NULL;
}

void co_list_pool_init(struct co_list *list, void *pool, size_t elmt_size, uint32_t elmt_cnt, void *default_value) {
	co_list_init(list);
	for (uint32_t i = 0; i < elmt_cnt; i++) {
		if (default_value) {
			memcpy(pool, default_value, elmt_size);
		}
		co_list_push_back(list, (struct co_list_hdr*) pool);
		pool = (void *)((uint8_t *)pool + (uint32_t)elmt_size);
	}
}

void co_list_push_back(struct co_list *list, struct co_list_hdr *list_hdr) {
	ASSERT_ERR(list_hdr != NULL);
	if (!list->first) {
		list->first = list_hdr;
	} else {
		list->last->next = list_hdr;
	}
	list->last = list_hdr;
	list_hdr->next = NULL;
}

void co_list_push_front(struct co_list *list, struct co_list_hdr *list_hdr) {
	ASSERT_ERR(list_hdr != NULL);
	if (!list->first) {
		list->last = list_hdr;
	}
	list_hdr->next = list->first;
	list->first = list_hdr;
}

struct co_list_hdr *co_list_pop_front(struct co_list *list) {
	struct co_list_hdr* elm = list->first;
	if (elm) {
		list->first = elm->next;
	}
	return elm;
}

// I think the original impl of this function is buggy
// when the list->first == list->last == list_hdr
// it only set list->first = NULL and leaving list->last still list_hdr
void co_list_extract(struct co_list *list, struct co_list_hdr *list_hdr) {
	ASSERT_ERR(list != NULL);
	struct co_list_hdr *cur = list->first;
	if (!cur)
		return;
	if (cur == list_hdr) {
		if (list->last == cur) list->last = NULL; // added this to remove the last
		list->first = cur->next;
		return ;
	}
	for (; cur && cur->next != list_hdr; cur = cur->next);
	if (!cur) return ; // cannot find the element in list
	cur->next = list_hdr->next;
	if (list_hdr == list->last)
		list->last = cur;
}

bool co_list_find(struct co_list *list, struct co_list_hdr *list_hdr) {
	if (!list_hdr) return true; // the original impl will return true when list_hdr == NULL
	for (struct co_list_hdr * cur = list->first; cur; cur = cur->next)
		if (cur == list_hdr)
			return true;
	return false;
}

uint32_t co_list_cnt(const struct co_list* const list) {
	uint32_t count = 0;
	for (struct co_list_hdr * cur = list->first; cur; cur = cur->next)
		count++;
	return count;
}

void co_list_insert(struct co_list* const list, struct co_list_hdr* const element, bool (*cmp)(const struct co_list_hdr*, const struct co_list_hdr*)) {
	struct co_list_hdr *prev = NULL;
    struct co_list_hdr *cur = list->first;
	for (; cur && !cmp(element, cur); prev = cur, cur = cur->next);
	if (!cur) 
		list->last = element;
	element->next = cur;
	if (prev)
		prev->next = element;
	else
		list->first = element;
}

void co_list_insert_after(struct co_list* const list, struct co_list_hdr* const prev_element, struct co_list_hdr* const element) {
	if (!prev_element) {
		co_list_push_front(list, element);
	} else {
		if (co_list_find(list, prev_element)) {
			element->next = prev_element->next;
			prev_element->next = element;
			if (element->next == NULL)
				list->last = element;
		}
	}
}

void co_list_insert_before(struct co_list* const list, struct co_list_hdr* const next_element, struct co_list_hdr* const element) {
	if (!next_element) {
		co_list_push_back(list, element);
		return ;
	} 
	if (next_element == list->first) {
		co_list_push_front(list, element);
		return ;
	}
    struct co_list_hdr *cur = list->first;
	for (; cur && cur->next != next_element; cur = cur->next);
	if (! cur) return; 
	cur->next = element;
	element->next = next_element;
}

void co_list_concat(struct co_list *list1, struct co_list *list2) {
	if (!(list2->first))
		return ;
	if (!(list1->first))
		*list1 = *list2;
	list1->last->next = list2->first;
	list1->last = list2->last;
	list2->first = list2->last = NULL;
}

void co_list_remove(struct co_list *list, struct co_list_hdr *prev_element, struct co_list_hdr *element) {
	ASSERT_ERR(list != NULL);
	ASSERT_ERR((prev_element == NULL) || (prev_element->next == element));
	if (prev_element) {
		prev_element->next = element->next;
	} else {
		list->first = element->next;
	}
	if (list->last == element)
		list->last = prev_element;
	element->next = NULL;
}
