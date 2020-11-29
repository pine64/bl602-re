
int anon_subr_int_notifier_block_ptr_int_void_ptr_for_cb(notifier_block * , int , void * );
typedef struct notifier_block notifier_block, *notifier_block;

int anon_subr_int_notifier_block_ptr_int_void_ptr_for_cb(notifier_block * , int , void * );
struct notifier_block {
    int (* cb)(struct notifier_block *, int, void *);
    struct notifier_block * next;
    int priority;
};

void notifier_chain_call(void);
void notifier_chain_call_fromeCritical(void);
void notifier_chain_regsiter(void);
void notifier_chain_regsiter_fromCritical(void);
void notifier_chain_unregsiter(void);
void notifier_chain_unregsiter_fromCritical(void);
#if 0 //TODO EXISTS ALEADY
/**
* @file notifier.h
* Header file for BL602
*/
#ifndef __NOTIFIER_H__
#define __NOTIFIER_H__

struct notifier_block {
    int (*cb)(struct notifier_block *, int, void *); // +0
    struct notifier_block *next; // +4
    int priority; // +8
};

#endif // __NOTIFIER_H__
#endf 0 //TODO EXISTS ALEADY
