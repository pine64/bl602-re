#ifndef _CO_POOL_H_
#define _CO_POOL_H_

#include <stdint.h>


struct co_pool_hdr {
    struct co_pool_hdr *next; // +0
    void *element; // +4
};

struct co_pool {
    struct co_pool_hdr *first_ptr; // +0
    uint32_t freecnt; // +4
};

#endif // _CO_POOL_H_
