#ifndef __UTILS_H_
#define ABS(x) (((x) > 0) ? (x) : (-(x)))
#define MIN(x,y) (((x) > (y)) ? (y) : (x))
#define MAX(x,y) (((x) < (y)) ? (y) : (x))
int puts(char *s);
int printf(char *fmt,...);
void* memset(void *, int,  long unsigned int);
void* memcpy(void*, const void*, unsigned int);
void wait_us(uint32_t us);
void BL602_Delay_US(uint32_t cnt);
#endif