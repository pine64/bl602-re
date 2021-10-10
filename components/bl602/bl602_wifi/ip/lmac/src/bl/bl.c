#include "bl.h"


struct bl_env_tag bl_env;
struct notifier_block *fw_nap_chain_ptr;
extern struct notifier_block fw_nap_chain;

void bl_init(void)
{
	__builtin_trap();
}

void supplicantFuncInit(void)
{
	__builtin_trap();
}

void bl_reset_evt(int dummy)
{
	__builtin_trap();
}

int bl_sleep(void)
{
	__builtin_trap();
}

void bl_wakeup(void)
{
	__builtin_trap();
}

uint32_t bl_nap_calculate(void)
{
	__builtin_trap();
}

int bl_nap_call(uint32_t time)
{
	__builtin_trap();
}

int bl_nap_hook_register(struct notifier_block *nb)
{
	__builtin_trap();
}

int bl_nap_hook_register_fromCritical(struct notifier_block *nb)
{
	__builtin_trap();
}

int bl_nap_hook_unregister(struct notifier_block *nb)
{
	__builtin_trap();
}

int bl_nap_hook_unregister_fromCritical(struct notifier_block *nb)
{
	__builtin_trap();
}

int bl_nap_hook_call(int event, void *env)
{
	__builtin_trap();
}

int bl_nap_hook_call_fromCritical(int event, void *env)
{
	__builtin_trap();
}
