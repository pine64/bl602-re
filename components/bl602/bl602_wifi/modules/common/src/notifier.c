/**
* @file notifier.c
* Source file for BL602
*/
#include "notifier.h"


int notifier_chain_regsiter(struct notifier_block **list, struct notifier_block *n);
int notifier_chain_regsiter_fromCritical(struct notifier_block **list, struct notifier_block *n);
int notifier_chain_unregsiter(struct notifier_block **list, struct notifier_block *n);
int notifier_chain_unregsiter_fromCritical(struct notifier_block **list, struct notifier_block *n);
int notifier_chain_call(struct notifier_block **list, int event, void *env);
int notifier_chain_call_fromeCritical(struct notifier_block **list, int event, void *env);




/** notifier_chain_regsiter
 */
int notifier_chain_regsiter(struct notifier_block **list, struct notifier_block *n)
{
	ASSER_ERR(FALSE);
	return -1;
}

/** notifier_chain_regsiter_fromCritical
 */
int notifier_chain_regsiter_fromCritical(struct notifier_block **list, struct notifier_block *n)
{
	ASSER_ERR(FALSE);
	return -1;
}

/** notifier_chain_unregsiter
 */
int notifier_chain_unregsiter(struct notifier_block **list, struct notifier_block *n)
{
	ASSER_ERR(FALSE);
	return -1;
}

/** notifier_chain_unregsiter_fromCritical
 */
int notifier_chain_unregsiter_fromCritical(struct notifier_block **list, struct notifier_block *n)
{
	ASSER_ERR(FALSE);
	return -1;
}

/** notifier_chain_call
 */
int notifier_chain_call(struct notifier_block **list, int event, void *env)
{
	ASSER_ERR(FALSE);
	return -1;
}

/** notifier_chain_call_fromeCritical
 */
int notifier_chain_call_fromeCritical(struct notifier_block **list, int event, void *env)
{
	ASSER_ERR(FALSE);
	return -1;
}
