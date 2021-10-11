#ifndef __CO_LIST_H__
#define __CO_LIST_H__

#include <stdbool.h>
#include <stdint.h>

struct co_list_hdr {
	struct co_list_hdr *next;
};

struct co_list {
	struct co_list_hdr *first;
	struct co_list_hdr *last;
};


void co_list_init(struct co_list *list);
void co_list_push_back(struct co_list *list, struct co_list_hdr *list_hdr);
struct co_list_hdr *co_list_pop_front(struct co_list *list);
void co_list_extract(struct co_list *list, struct co_list_hdr *list_hdr);
void co_list_insert(struct co_list *const list, struct co_list_hdr *const element, bool (*cmp)(const struct co_list_hdr*, const struct co_list_hdr*));
void co_list_insert_after(struct co_list *const list, struct co_list_hdr *const prev_element, struct co_list_hdr* const element);
void co_list_insert_before(struct co_list *const list, struct co_list_hdr *const next_element, struct co_list_hdr* const element);
void co_list_remove(struct co_list *list, struct co_list_hdr *prev_element, struct co_list_hdr *element);
void co_list_concat(struct co_list *list1, struct co_list *list2);
bool co_list_is_empty(const struct co_list *const list);
bool co_list_find(struct co_list *list, struct co_list_hdr *list_hdr);
uint32_t co_list_cnt(const struct co_list *const list);
struct co_list_hdr* co_list_pick(struct co_list const* const list);
struct co_list_hdr* co_list_next(struct co_list_hdr const* const list_hdr);

#endif // __CO_LIST_H__
