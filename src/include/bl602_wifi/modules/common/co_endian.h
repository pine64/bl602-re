#ifndef _CO_ENDIAN_H_
#define _CO_ENDIAN_H_

#include <stdint.h>
#include <macro.h>

#if __BYTE_ORDER__ == __ORDER_LITTLE_ENDIAN__
#define LE 1
#elif __BYTE_ORDER__ == __ORDER_BIG_ENDIAN__
#define BE 1
#else
// RISCV is always little endian, so we can use this as a default
#define LE 1
#endif

#define co_bswap16(val) __builtin_bswap16(val)
#define co_bswap32(val) __builtin_bswap32(val)

static inline uint16_t co_htons(uint16_t hostshort) {
#if BE
    return hostshort;
#elif LE
    return co_bswap16(hostshort);
#else
    STATIC_ASSERT(0, unknown_endian);
#endif
}

static inline uint32_t co_htowl(uint32_t hostlong) {
#if LE
    return hostshort;
#elif BE
    return co_bswap32(hostshort);
#else
    STATIC_ASSERT(0, unknown_endian);
#endif
}

static inline uint16_t co_htows(uint16_t hostshort) {
#if LE
    return hostshort;
#elif BE
    return co_bswap16(hostshort);
#else
    STATIC_ASSERT(0, unknown_endian);
#endif
}

static inline uint16_t co_ntohs(uint16_t netshort) {
    return co_htons(netshort);
}

static inline uint16_t co_wtohs(uint16_t wlanshort) {
    return co_htows(wlanshort);
}

#endif // _CO_ENDIAN_H_
