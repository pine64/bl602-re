
typedef struct co_list co_list, *co_list;

typedef struct co_list_hdr co_list_hdr, *co_list_hdr;

struct co_list_hdr {
    struct co_list_hdr * next;
};

struct co_list {
    struct co_list_hdr * first;
    struct co_list_hdr * last;
};

void co_list_cnt(void);
void co_list_extract(void);
void co_list_init(void);
void co_list_insert(void);
void co_list_insert_after(void);
_Bool co_list_is_empty(co_list * list);
co_list_hdr * co_list_next(co_list_hdr * list_hdr);
co_list_hdr * co_list_pick(co_list * list);
void co_list_pop_front(void);
void co_list_push_back(void);
void co_list_remove(void);
#if 0 //TODO EXISTS ALEADY
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
#endf 0 //TODO EXISTS ALEADY
