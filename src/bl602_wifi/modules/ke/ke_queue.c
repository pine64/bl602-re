#include <modules/ke/ke_queue.h>

#include <stddef.h>

struct co_list_hdr *ke_queue_extract(struct co_list* const queue, bool (*func)(const struct co_list_hdr*, uint32_t), uint32_t arg) {
    struct co_list_hdr *prev = NULL;
    struct co_list_hdr *cur = queue->first;
    for (; cur && !func(cur, arg); prev = cur, cur = cur->next);
    if (!cur)
        return NULL; // cannot find the target
    if (prev) {
        prev->next = cur->next;
    } else {
        queue->first = cur->next;
    }
    if (cur->next) {
        cur->next = NULL;
    } else {
        queue->last = prev;
    }
    return cur;
}
