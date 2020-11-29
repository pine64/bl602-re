/**
* @file co_list.h
* Header file for BL602
*/
#ifndef __CO_LIST_H__
#define __CO_LIST_H__

struct co_list_hdr {
    struct co_list_hdr *next; // +0
};
struct co_list {
    struct co_list_hdr *first; // +0
    struct co_list_hdr *last; // +4
};

#endif // __CO_LIST_H__
