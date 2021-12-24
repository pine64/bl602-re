#include <modules/common/notifier.h>

#include <FreeRTOS.h>
#include <task.h>

int notifier_chain_regsiter(struct notifier_block **list, struct notifier_block *n) {
	vTaskEnterCritical();
	for (; *list && (n->priority <= (*list)->priority); list = &((*list)->next));
	n->next = *list;
	*list = n;
	vTaskExitCritical();
	return 0;
}

int notifier_chain_regsiter_fromCritical(struct notifier_block **list, struct notifier_block *n) {
	for (; *list && (n->priority <= (*list)->priority); list = &((*list)->next));
	n->next = *list;
	*list = n;
	return 0;
}

int notifier_chain_unregsiter(struct notifier_block **list, struct notifier_block *n) {
	vTaskEnterCritical();
	for (; *list && (*list != n); list = &((*list)->next));
	if (*list == n) {
		*list = n->next;
	}
	vTaskExitCritical();
	return 0;
}

int notifier_chain_unregsiter_fromCritical(struct notifier_block **list, struct notifier_block *n) {
	for (; *list && (*list != n); list = &((*list)->next));
	if (*list == n) {
		*list = n->next;
	}
	return 0;
}

int notifier_chain_call(struct notifier_block **list, int event, void *env) {
	
	vTaskEnterCritical();
	struct notifier_block *cur = *list; // reversed code do this before enter critical
	// this might be a problem
	for (; cur; cur = cur->next) {
		(*cur->cb)(cur, event, env);
	}
	vTaskExitCritical();
	return 0;
}

int notifier_chain_call_fromeCritical(struct notifier_block **list, int event, void *env) {
	for (struct notifier_block *cur = *list; cur; cur = cur->next) {
		(*cur->cb)(cur, event, env);
	}
	return 0;
}
