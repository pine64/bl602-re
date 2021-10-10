#include "notifier.h"


int notifier_chain_regsiter(struct notifier_block **list, struct notifier_block *n)
{
	__builtin_trap();
}

int notifier_chain_regsiter_fromCritical(struct notifier_block **list, struct notifier_block *n)
{
	__builtin_trap();
}

int notifier_chain_unregsiter(struct notifier_block **list, struct notifier_block *n)
{
	__builtin_trap();
}

int notifier_chain_unregsiter_fromCritical(struct notifier_block **list, struct notifier_block *n)
{
	__builtin_trap();
}

int notifier_chain_call(struct notifier_block **list, int event, void *env)
{
	__builtin_trap();
}

int notifier_chain_call_fromeCritical(struct notifier_block **list, int event, void *env)
{
	__builtin_trap();
}
