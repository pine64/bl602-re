#ifndef _CO_LIST_H_
#define _CO_LIST_H_
struct co_list_hdr {
    struct co_list_hdr *next; // +0
}; // :47:8

struct co_list {
    struct co_list_hdr *first; // +0
    struct co_list_hdr *last; // +4
}; // :54:8

#endif // _CO_LIST_H_
