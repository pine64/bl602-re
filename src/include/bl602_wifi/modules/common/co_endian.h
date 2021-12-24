#ifndef _CO_ENDIAN_H_
#define _CO_ENDIAN_H_

#include <stdint.h>


static inline uint16_t co_bswap16(uint16_t val16);
static inline uint16_t co_htons(uint16_t hostshort);
static inline uint32_t co_htowl(uint32_t hostlong);
static inline uint16_t co_htows(uint16_t hostshort);
static inline uint16_t co_ntohs(uint16_t netshort);
static inline uint16_t co_wtohs(uint16_t wlanshort);

#endif // _CO_ENDIAN_H_
