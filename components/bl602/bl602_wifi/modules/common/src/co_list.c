
uint32_t co_list_cnt(co_list * list);
void co_list_concat(co_list * list1, co_list * list2);
void co_list_extract(co_list * list, co_list_hdr * list_hdr);
_Bool co_list_find(co_list * list, co_list_hdr * list_hdr);
void co_list_init(co_list * list);
void co_list_insert(co_list * list, co_list_hdr * element, anon_subr__Bool_co_list_hdr_ptr_co_list_hdr_ptr * cmp);
void co_list_insert_after(co_list * list, co_list_hdr * prev_element, co_list_hdr * element);
void co_list_insert_before(co_list * list, co_list_hdr * next_element, co_list_hdr * element);
void co_list_pool_init(co_list * list, void * pool, size_t elmt_size, uint32_t elmt_cnt, void * default_value);
co_list_hdr * co_list_pop_front(co_list * list);
void co_list_push_back(co_list * list, co_list_hdr * list_hdr);
void co_list_push_front(co_list * list, co_list_hdr * list_hdr);
void co_list_remove(co_list * list, co_list_hdr * prev_element, co_list_hdr * element);
#if 0 //TODO EXISTS ALEADY
/**
* @file co_list.c
* Source file for BL602
*/
#include "co_list.h"


void co_list_init(struct co_list *list);
void co_list_pool_init(struct co_list *list, void *pool, size_t elmt_size, uint32_t elmt_cnt, void *default_value);
void co_list_push_back(struct co_list *list, struct co_list_hdr *list_hdr);
void co_list_push_front(struct co_list *list, struct co_list_hdr *list_hdr);
struct co_list_hdr *co_list_pop_front(struct co_list *list);
void co_list_extract(struct co_list *list, struct co_list_hdr *list_hdr);
bool co_list_find(struct co_list *list, struct co_list_hdr *list_hdr);
uint32_t co_list_cnt(const struct co_list *const list);
void co_list_insert(struct co_list *const list, struct co_list_hdr *const element, bool (*cmp)(const struct co_list_hdr *, const struct co_list_hdr *));
void co_list_insert_after(struct co_list *const list, struct co_list_hdr *const prev_element, struct co_list_hdr *const element);
void co_list_insert_before(struct co_list *const list, struct co_list_hdr *const next_element, struct co_list_hdr *const element);
void co_list_concat(struct co_list *list1, struct co_list *list2);
void co_list_remove(struct co_list *list, struct co_list_hdr *prev_element, struct co_list_hdr *element);




/** co_list_init
 */
void co_list_init(struct co_list *list)
{
	ASSER_ERR(FALSE);
	return;
}

/** co_list_pool_init
 */
void co_list_pool_init(struct co_list *list, void *pool, size_t elmt_size, uint32_t elmt_cnt, void *default_value)
{
	ASSER_ERR(FALSE);
	return;
}

/** co_list_push_back
 */
void co_list_push_back(struct co_list *list, struct co_list_hdr *list_hdr)
{
	ASSER_ERR(FALSE);
	return;
}

/** co_list_push_front
 */
void co_list_push_front(struct co_list *list, struct co_list_hdr *list_hdr)
{
	ASSER_ERR(FALSE);
	return;
}

/** *co_list_pop_front
 */
struct co_list_hdr *co_list_pop_front(struct co_list *list)
{
	ASSER_ERR(FALSE);
	returnNULL;
}

/** co_list_extract
 */
void co_list_extract(struct co_list *list, struct co_list_hdr *list_hdr)
{
	ASSER_ERR(FALSE);
	return;
}

/** co_list_find
 */
bool co_list_find(struct co_list *list, struct co_list_hdr *list_hdr)
{
	ASSER_ERR(FALSE);
	return false;
}

/** co_list_cnt
 */
uint32_t co_list_cnt(const struct co_list *const list)
{
	ASSER_ERR(FALSE);
	return 0xffffffff;
}

/** co_list_insert_after
 */
void co_list_insert_after(struct co_list *const list, struct co_list_hdr *const prev_element, struct co_list_hdr *const element)
{
	ASSER_ERR(FALSE);
	return;
}

/** co_list_insert_before
 */
void co_list_insert_before(struct co_list *const list, struct co_list_hdr *const next_element, struct co_list_hdr *const element)
{
	ASSER_ERR(FALSE);
	return;
}

/** co_list_concat
 */
void co_list_concat(struct co_list *list1, struct co_list *list2)
{
	ASSER_ERR(FALSE);
	return;
}

/** co_list_remove
 */
void co_list_remove(struct co_list *list, struct co_list_hdr *prev_element, struct co_list_hdr *element)
{
	ASSER_ERR(FALSE);
	return;
}
#endf 0 //TODO EXISTS ALEADY
