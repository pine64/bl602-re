
void cb_timer_func_ptr(void * );
void mm_timer_clear(void);
typedef struct mm_timer_env_tag mm_timer_env_tag, *mm_timer_env_tag;

typedef struct co_list co_list, *co_list;

typedef struct co_list_hdr co_list_hdr, *co_list_hdr;

struct co_list_hdr {
    struct co_list_hdr * next;
};

struct co_list {
    struct co_list_hdr * first;
    struct co_list_hdr * last;
};

struct mm_timer_env_tag {
    struct co_list prog;
};

void mm_timer_init(void);
void mm_timer_set(void);
typedef struct mm_timer_tag mm_timer_tag, *mm_timer_tag;

void cb_timer_func_ptr(void * );
typedef ulong uint32_t;

struct mm_timer_tag {
    struct co_list_hdr list_hdr;
    void (* cb)(void *);
    void * env;
    uint32_t time;
};

#if 0 //TODO EXISTS ALEADY
/**
* @file mm_timer.h
* Header file for BL602
*/
#ifndef __MM_TIMER_H__
#define __MM_TIMER_H__

typedef void (*cb_timer_func_ptr)(void *);
struct mm_timer_tag {
    struct co_list_hdr list_hdr; // +0
    cb_timer_func_ptr cb; // +4
    void *env; // +8
    uint32_t time; // +12
};
struct mm_timer_env_tag {
    struct co_list prog; // +0
};
struct mm_timer_env_tag mm_timer_env;

#endif // __MM_TIMER_H__
#endf 0 //TODO EXISTS ALEADY
