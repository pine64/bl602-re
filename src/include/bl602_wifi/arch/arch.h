#ifndef _ARCH_H_
#define _ARCH_H_

void assert_rec(const char *condition, const char *file, int line); // :66:6
void assert_err(const char *condition, const char *file, int line); // :132:6
void assert_warn(const char *condition, const char *file, int line); // :163:6
void force_trigger(const char *msg); // :178:6
void wifi_main(void *param); // :355:6
void coex_dump_pta(void); // :527:6
void coex_dump_wifi(void); // :640:6
void coex_wifi_rf_forece_enable(int enable); // :650:6
void coex_wifi_pti_forece_enable(int enable); // :659:6

#endif // _ARCH_H_
