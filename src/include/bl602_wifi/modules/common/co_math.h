#ifndef _CO_MATH_H_
#define _CO_MATH_H_

#include <stdint.h>


uint32_t co_clz(uint32_t val);


static long unsigned int next;


int mini_rand(void);
uint16_t co_rand_hword(void);
uint32_t co_rand_word(void);
uint32_t co_min(uint32_t a, uint32_t b);
uint32_t co_max(uint32_t a, uint32_t b);
uint32_t co_crc32(uint32_t addr, uint32_t len, uint32_t crc);

#endif // _CO_MATH_H_
