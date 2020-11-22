
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
