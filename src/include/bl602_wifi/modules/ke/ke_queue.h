#ifndef _KE_QUEUE_H_
#define _KE_QUEUE_H_

#include <modules/common/co_list.h>


void ke_queue_push(struct co_list* const queue, struct co_list_hdr* const element);
struct co_list_hdr *ke_queue_pop(struct co_list* const queue);
struct co_list_hdr *ke_queue_extract(struct co_list* const queue, bool (*func)(const struct co_list_hdr*, uint32_t), uint32_t arg);

#endif // _KE_QUEUE_H_
