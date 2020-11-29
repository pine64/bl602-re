/**
* @file co_dlist.h
* Header file for BL602
*/
#ifndef __CO_DLIST_H__
#define __CO_DLIST_H__

struct co_dlist_hdr {
    struct co_dlist_hdr *next; // +0
    struct co_dlist_hdr *prev; // +4
};
struct co_dlist {
    struct co_dlist_hdr *first; // +0
    struct co_dlist_hdr *last; // +4
    uint32_t cnt; // +8
};

#endif // __CO_DLIST_H__
