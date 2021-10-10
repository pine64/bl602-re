#ifndef __NOTIFIER_H__
#define __NOTIFIER_H__

struct notifier_block {
    int (*cb)(struct notifier_block *, int, void *); // +0
    struct notifier_block *next; // +4
    int priority; // +8
};


int notifier_chain_regsiter(struct notifier_block **list, struct notifier_block *n);
int notifier_chain_regsiter_fromCritical(struct notifier_block **list, struct notifier_block *n);
int notifier_chain_unregsiter(struct notifier_block **list, struct notifier_block *n);
int notifier_chain_unregsiter_fromCritical(struct notifier_block **list, struct notifier_block *n);
int notifier_chain_call(struct notifier_block **list, int event, void *env);
int notifier_chain_call_fromeCritical(struct notifier_block **list, int event, void *env);

#endif // __NOTIFIER_H__
