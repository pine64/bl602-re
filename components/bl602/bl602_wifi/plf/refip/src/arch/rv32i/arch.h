#ifndef __ARCH_H__
#define __ARCH_H__

void assert_rec(const char *condition, const char *file, int line);
void assert_err(const char *condition, const char *file, int line);
void assert_warn(const char *condition, const char *file, int line);

#endif // __ARCH_H__
