#ifndef __UTILS_H_
#define ABS(x) (((x) > 0) ? (x) : (-(x)))
#define MIN(x,y) (((x) > (y)) ? (y) : (x))
#define MAX(x,y) (((x) < (y)) ? (y) : (x))
int puts(char *s);
int printf(const char *fmt,...);
void* memset(void *, int, unsigned int);
void* memcpy(void*, const void*, unsigned int);
int memcmp(const void *, const void *, unsigned int);
void BL602_Delay_US(uint32_t cnt);
void BL602_Delay_MS(uint32_t cnt);
unsigned int strlen(const char *__s);
#endif