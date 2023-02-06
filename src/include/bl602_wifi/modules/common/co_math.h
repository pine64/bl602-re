#ifndef _CO_MATH_H_
#define _CO_MATH_H_

#include <stdint.h>


static inline uint32_t co_clz(uint32_t val) { return __builtin_clz(val); };

extern long unsigned int next;

static inline int mini_rand(void) {
    next = next * 0x41c64e6d + 0x3039;
    return next >> 0x10;
}

static inline uint16_t co_rand_hword(void) {
    return mini_rand() & 0xffff;
}

static inline uint32_t co_rand_word(void) {
    /// TODO: this is not a good random number generator
    /// as it only generate 16 bits of randomness
    /// and very insecure..
    /// but we will see..
    return mini_rand();
}

static inline uint32_t co_min(uint32_t a, uint32_t b) {
    return (a<b)?a:b;
}

static inline uint32_t co_max(uint32_t a, uint32_t b) {
    return (a>b)?a:b;
}

uint32_t co_crc32(uint32_t addr, uint32_t len, uint32_t crc);

#define CO_BIT(x) (1UL<<(x))
#define CO_ALIGN4_HI(x) (((x) + 3ul) & ~3ul)
#define CO_ALIGN4_LO(x) ((x) & ~3ul)
#define CO_ALIGN2_HI(x) (((x) + 1ul) & ~ 1ul)
#define CO_ALIGN2_LO(x) ((x) & ~1ul)

#endif // _CO_MATH_H_
