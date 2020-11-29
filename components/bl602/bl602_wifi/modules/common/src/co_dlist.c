/**
* @file co_dlist.c
* Source file for BL602
*/
#include "co_dlist.h"


void co_dlist_init(struct co_dlist *list);
void co_dlist_push_back(struct co_dlist *list, struct co_dlist_hdr *list_hdr);
void co_dlist_push_front(struct co_dlist *list, struct co_dlist_hdr *list_hdr);
struct co_dlist_hdr *co_dlist_pop_front(struct co_dlist *list);
void co_dlist_extract(struct co_dlist *list, const struct co_dlist_hdr *list_hdr);




/** co_dlist_init
 */
void co_dlist_init(struct co_dlist *list)
{
	ASSER_ERR(FALSE);
	return;
}

/** co_dlist_push_back
 */
void co_dlist_push_back(struct co_dlist *list, struct co_dlist_hdr *list_hdr)
{
	ASSER_ERR(FALSE);
	return;
}

/** co_dlist_push_front
 */
void co_dlist_push_front(struct co_dlist *list, struct co_dlist_hdr *list_hdr)
{
	ASSER_ERR(FALSE);
	return;
}

/** *co_dlist_pop_front
 */
struct co_dlist_hdr *co_dlist_pop_front(struct co_dlist *list)
{
	ASSER_ERR(FALSE);
	returnNULL;
}

/** co_dlist_extract
 */
void co_dlist_extract(struct co_dlist *list, const struct co_dlist_hdr *list_hdr)
{
	ASSER_ERR(FALSE);
	return;
}
