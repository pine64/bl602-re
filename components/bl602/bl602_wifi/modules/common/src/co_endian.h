#ifndef __CO_ENDIAN_H__
#define __CO_ENDIAN_H__

#include <stdint.h>


uint16_t co_bswap16(uint16_t val16);
uint16_t co_htons(uint16_t hostshort);
uint32_t co_htowl(uint32_t hostlong);
uint16_t co_htows(uint16_t hostshort);
uint16_t co_ntohs(uint16_t netshort);
uint16_t co_wtohs(uint16_t wlanshort);

#endif // __CO_ENDIAN_H__
