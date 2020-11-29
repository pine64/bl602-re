/**
* @file ke_queue.c
* Source file for BL602
*/
#include "ke_queue.h"


uint32_t _patch_ble_ke_queue_extract(void *pRet, struct co_list *const queue, bool (*func)(const struct co_list_hdr *, uint32_t), uint32_t arg);
struct co_list_hdr *ble_ke_queue_extract(struct co_list *const queue, bool (*func)(const struct co_list_hdr *, uint32_t), uint32_t arg);
uint32_t _patch_ble_ke_queue_insert(void *pRet, struct co_list *const queue, struct co_list_hdr *const element, bool (*cmp)(const struct co_list_hdr *, const struct co_list_hdr *));
void ble_ke_queue_insert(struct co_list *const queue, struct co_list_hdr *const element, bool (*cmp)(const struct co_list_hdr *, const struct co_list_hdr *));



