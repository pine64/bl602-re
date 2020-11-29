
void supplicantFuncInit(void);
uint32_t bl_nap_calculate(void);
int bl_nap_call(uint32_t time);
int bl_nap_hook_call(int event, void * env);
int bl_nap_hook_call_fromCritical(int event, void * env);
int bl_nap_hook_register(notifier_block * nb);
int bl_nap_hook_register_fromCritical(notifier_block * nb);
int bl_nap_hook_unregister(notifier_block * nb);
int bl_nap_hook_unregister_fromCritical(notifier_block * nb);
void bl_reset_evt(int dummy);
int bl_sleep(void);
void bl_wakeup(void);
void supplicantFuncInit(void);
#if 0 //TODO EXISTS ALEADY
/**
* @file bl.c
* Source file for BL602
*/
#include "bl.h"


struct bl_env_tag bl_env;
static struct notifier_block *fw_nap_chain_ptr;
struct notifier_block fw_nap_chain;

void bl_init(void);
void bl_reset_evt(int dummy);
int bl_sleep(void);
void bl_wakeup(void);
uint32_t bl_nap_calculate(void);
int bl_nap_call(uint32_t time);
int bl_nap_hook_register(struct notifier_block *nb);
int bl_nap_hook_register_fromCritical(struct notifier_block *nb);
int bl_nap_hook_unregister(struct notifier_block *nb);
int bl_nap_hook_unregister_fromCritical(struct notifier_block *nb);
int bl_nap_hook_call(int event, void *env);
int bl_nap_hook_call_fromCritical(int event, void *env);




/** bl_init
 */
void bl_init(void)
{
	ASSER_ERR(FALSE);
	return;
}

/** bl_reset_evt
 */
void bl_reset_evt(int dummy)
{
	ASSER_ERR(FALSE);
	return;
}

/** bl_sleep
 */
int bl_sleep(void)
{
	ASSER_ERR(FALSE);
	return -1;
}

/** bl_wakeup
 */
void bl_wakeup(void)
{
	ASSER_ERR(FALSE);
	return;
}

/** bl_nap_calculate
 */
uint32_t bl_nap_calculate(void)
{
	ASSER_ERR(FALSE);
	return 0xffffffff;
}

/** bl_nap_call
 */
int bl_nap_call(uint32_t time)
{
	ASSER_ERR(FALSE);
	return -1;
}

/** bl_nap_hook_register
 */
int bl_nap_hook_register(struct notifier_block *nb)
{
	ASSER_ERR(FALSE);
	return -1;
}

/** bl_nap_hook_register_fromCritical
 */
int bl_nap_hook_register_fromCritical(struct notifier_block *nb)
{
	ASSER_ERR(FALSE);
	return -1;
}

/** bl_nap_hook_unregister
 */
int bl_nap_hook_unregister(struct notifier_block *nb)
{
	ASSER_ERR(FALSE);
	return -1;
}

/** bl_nap_hook_unregister_fromCritical
 */
int bl_nap_hook_unregister_fromCritical(struct notifier_block *nb)
{
	ASSER_ERR(FALSE);
	return -1;
}

/** bl_nap_hook_call
 */
int bl_nap_hook_call(int event, void *env)
{
	ASSER_ERR(FALSE);
	return -1;
}

/** bl_nap_hook_call_fromCritical
 */
int bl_nap_hook_call_fromCritical(int event, void *env)
{
	ASSER_ERR(FALSE);
	return -1;
}
#endf 0 //TODO EXISTS ALEADY
