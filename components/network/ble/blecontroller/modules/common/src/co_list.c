/**
* @file co_list.c
* Source file for BL602
*/
#include "co_list.h"


uint32_t _patch_ble_co_list_init(void *pRet, struct co_list *list);
void ble_co_list_init(struct co_list *list);
void ble_co_list_pool_init(struct co_list *list, void *pool, size_t elmt_size, uint32_t elmt_cnt, void *default_value, uint8_t list_type);
uint32_t _patch_ble_co_list_push_back(void *pRet, struct co_list *list, struct co_list_hdr *list_hdr);
void ble_co_list_push_back(struct co_list *list, struct co_list_hdr *list_hdr);
uint32_t _patch_ble_co_list_push_front(void *pRet, struct co_list *list, struct co_list_hdr *list_hdr);
void ble_co_list_push_front(struct co_list *list, struct co_list_hdr *list_hdr);
uint32_t _patch_ble_co_list_pop_front(void *pRet, struct co_list *list);
struct co_list_hdr *ble_co_list_pop_front(struct co_list *list);
uint32_t _patch_ble_co_list_extract(void *pRet, struct co_list *list, struct co_list_hdr *list_hdr, uint8_t nb_following);
bool ble_co_list_extract(struct co_list *list, struct co_list_hdr *list_hdr, uint8_t nb_following);
uint32_t _patch_ble_co_list_extract_after(void *pRet, struct co_list *list, struct co_list_hdr *elt_ref_hdr, struct co_list_hdr *elt_to_rem_hdr);
void ble_co_list_extract_after(struct co_list *list, struct co_list_hdr *elt_ref_hdr, struct co_list_hdr *elt_to_rem_hdr);
uint32_t _patch_ble_co_list_find(void *pRet, struct co_list *list, struct co_list_hdr *list_hdr);
bool ble_co_list_find(struct co_list *list, struct co_list_hdr *list_hdr);
uint32_t _patch_ble_co_list_merge(void *pRet, struct co_list *list1, struct co_list *list2);
void ble_co_list_merge(struct co_list *list1, struct co_list *list2);
uint32_t _patch_ble_co_list_insert_before(void *pRet, struct co_list *list, struct co_list_hdr *elt_ref_hdr, struct co_list_hdr *elt_to_add_hdr);
void ble_co_list_insert_before(struct co_list *list, struct co_list_hdr *elt_ref_hdr, struct co_list_hdr *elt_to_add_hdr);
uint32_t _patch_ble_co_list_insert_after(void *pRet, struct co_list *list, struct co_list_hdr *elt_ref_hdr, struct co_list_hdr *elt_to_add_hdr);
void ble_co_list_insert_after(struct co_list *list, struct co_list_hdr *elt_ref_hdr, struct co_list_hdr *elt_to_add_hdr);
uint32_t _patch_ble_co_list_size(void *pRet, struct co_list *list);
uint16_t ble_co_list_size(struct co_list *list);
uint32_t _patch_ble_co_list_check_size_available(void *pRet, struct co_list *list, uint8_t free_size_needed);
bool ble_co_list_check_size_available(struct co_list *list, uint8_t free_size_needed);




/** _patch_ble_co_list_init
 */
uint32_t _patch_ble_co_list_init(void *pRet, struct co_list *list)
{
	ASSER_ERR(FALSE);
	return 0xffffffff;
}

/** ble_co_list_init
 */
void ble_co_list_init(struct co_list *list)
{
	ASSER_ERR(FALSE);
	return;
}

/** ble_co_list_pool_init
 */
void ble_co_list_pool_init(struct co_list *list, void *pool, size_t elmt_size, uint32_t elmt_cnt, void *default_value, uint8_t list_type)
{
	ASSER_ERR(FALSE);
	return;
}

/** _patch_ble_co_list_push_back
 */
uint32_t _patch_ble_co_list_push_back(void *pRet, struct co_list *list, struct co_list_hdr *list_hdr)
{
	ASSER_ERR(FALSE);
	return 0xffffffff;
}

/** ble_co_list_push_back
 */
void ble_co_list_push_back(struct co_list *list, struct co_list_hdr *list_hdr)
{
	ASSER_ERR(FALSE);
	return;
}

/** _patch_ble_co_list_push_front
 */
uint32_t _patch_ble_co_list_push_front(void *pRet, struct co_list *list, struct co_list_hdr *list_hdr)
{
	ASSER_ERR(FALSE);
	return 0xffffffff;
}

/** ble_co_list_push_front
 */
void ble_co_list_push_front(struct co_list *list, struct co_list_hdr *list_hdr)
{
	ASSER_ERR(FALSE);
	return;
}

/** _patch_ble_co_list_pop_front
 */
uint32_t _patch_ble_co_list_pop_front(void *pRet, struct co_list *list)
{
	ASSER_ERR(FALSE);
	return 0xffffffff;
}

/** *ble_co_list_pop_front
 */
struct co_list_hdr *ble_co_list_pop_front(struct co_list *list)
{
	ASSER_ERR(FALSE);
	returnNULL;
}

/** _patch_ble_co_list_extract
 */
uint32_t _patch_ble_co_list_extract(void *pRet, struct co_list *list, struct co_list_hdr *list_hdr, uint8_t nb_following)
{
	ASSER_ERR(FALSE);
	return 0xffffffff;
}

/** ble_co_list_extract
 */
bool ble_co_list_extract(struct co_list *list, struct co_list_hdr *list_hdr, uint8_t nb_following)
{
	ASSER_ERR(FALSE);
	return false;
}

/** _patch_ble_co_list_extract_after
 */
uint32_t _patch_ble_co_list_extract_after(void *pRet, struct co_list *list, struct co_list_hdr *elt_ref_hdr, struct co_list_hdr *elt_to_rem_hdr)
{
	ASSER_ERR(FALSE);
	return 0xffffffff;
}

/** ble_co_list_extract_after
 */
void ble_co_list_extract_after(struct co_list *list, struct co_list_hdr *elt_ref_hdr, struct co_list_hdr *elt_to_rem_hdr)
{
	ASSER_ERR(FALSE);
	return;
}

/** _patch_ble_co_list_find
 */
uint32_t _patch_ble_co_list_find(void *pRet, struct co_list *list, struct co_list_hdr *list_hdr)
{
	ASSER_ERR(FALSE);
	return 0xffffffff;
}

/** ble_co_list_find
 */
bool ble_co_list_find(struct co_list *list, struct co_list_hdr *list_hdr)
{
	ASSER_ERR(FALSE);
	return false;
}

/** _patch_ble_co_list_merge
 */
uint32_t _patch_ble_co_list_merge(void *pRet, struct co_list *list1, struct co_list *list2)
{
	ASSER_ERR(FALSE);
	return 0xffffffff;
}

/** ble_co_list_merge
 */
void ble_co_list_merge(struct co_list *list1, struct co_list *list2)
{
	ASSER_ERR(FALSE);
	return;
}

/** _patch_ble_co_list_insert_before
 */
uint32_t _patch_ble_co_list_insert_before(void *pRet, struct co_list *list, struct co_list_hdr *elt_ref_hdr, struct co_list_hdr *elt_to_add_hdr)
{
	ASSER_ERR(FALSE);
	return 0xffffffff;
}

/** ble_co_list_insert_before
 */
void ble_co_list_insert_before(struct co_list *list, struct co_list_hdr *elt_ref_hdr, struct co_list_hdr *elt_to_add_hdr)
{
	ASSER_ERR(FALSE);
	return;
}

/** _patch_ble_co_list_insert_after
 */
uint32_t _patch_ble_co_list_insert_after(void *pRet, struct co_list *list, struct co_list_hdr *elt_ref_hdr, struct co_list_hdr *elt_to_add_hdr)
{
	ASSER_ERR(FALSE);
	return 0xffffffff;
}

/** ble_co_list_insert_after
 */
void ble_co_list_insert_after(struct co_list *list, struct co_list_hdr *elt_ref_hdr, struct co_list_hdr *elt_to_add_hdr)
{
	ASSER_ERR(FALSE);
	return;
}

/** _patch_ble_co_list_size
 */
uint32_t _patch_ble_co_list_size(void *pRet, struct co_list *list)
{
	ASSER_ERR(FALSE);
	return 0xffffffff;
}

/** ble_co_list_size
 */
uint16_t ble_co_list_size(struct co_list *list)
{
	ASSER_ERR(FALSE);
	return 0xffff;
}

/** _patch_ble_co_list_check_size_available
 */
uint32_t _patch_ble_co_list_check_size_available(void *pRet, struct co_list *list, uint8_t free_size_needed)
{
	ASSER_ERR(FALSE);
	return 0xffffffff;
}

/** ble_co_list_check_size_available
 */
bool ble_co_list_check_size_available(struct co_list *list, uint8_t free_size_needed)
{
	ASSER_ERR(FALSE);
	return false;
}
