#ifndef _CO_DLIST_H_
#define _CO_DLIST_H_

#include <stdbool.h>
#include <stdint.h>


struct co_dlist_hdr {
    struct co_dlist_hdr *next; // +0
    struct co_dlist_hdr *prev; // +4
};

struct co_dlist {
    struct co_dlist_hdr *first; // +0
    struct co_dlist_hdr *last; // +4
    uint32_t cnt; // +8
};


bool co_dlist_is_empty(const struct co_dlist *list);

#endif // _CO_DLIST_H_
