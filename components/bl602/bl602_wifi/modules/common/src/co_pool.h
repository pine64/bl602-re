/**
* @file co_pool.h
* Header file for BL602
*/
#ifndef __CO_POOL_H__
#define __CO_POOL_H__

struct co_pool_hdr {
    struct co_pool_hdr *next; // +0
    void *element; // +4
};
struct co_pool {
    struct co_pool_hdr *first_ptr; // +0
    uint32_t freecnt; // +4
};

#endif // __CO_POOL_H__
