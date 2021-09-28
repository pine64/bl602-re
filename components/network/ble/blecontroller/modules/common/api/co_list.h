#ifndef BLECONTROLLER_MODULES_COMMON_CO_LIST_H
#define BLECONTROLLER_MODULES_COMMON_CO_LIST_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

struct co_list_hdr {
    struct co_list_hdr *next; // +0
};
struct co_list {
    struct co_list_hdr *first; // +0
    struct co_list_hdr *last; // +4
};

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

#endif /* BLECONTROLLER_MODULES_COMMON_CO_LIST_H */
