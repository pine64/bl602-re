#ifndef __CO_UTILS_H__
#define __CO_UTILS_H__

#include <stdbool.h>
#include <stdint.h>


uint16_t co_read16(const void *ptr16);
void co_write16(const void *ptr16, uint32_t value);
void co_copy32(uint32_t *dst, uint32_t *src, uint32_t len);
uint8_t co_read8p(uint32_t addr);
void co_write8p(uint32_t addr, uint8_t value);
uint16_t co_read16p(uint32_t addr);
void co_write16p(uint32_t addr, uint32_t value);
uint32_t co_read32p(uint32_t addr);
void co_write32p(uint32_t addr, uint32_t value);
bool co_cmp8p(uint32_t pkd, const uint8_t *ptr, uint32_t len);
void co_pack8p(uint32_t dst, const uint8_t *src, uint32_t len);
void co_unpack8p(uint8_t *dst, uint32_t src, uint32_t len);
void co_copy8p(uint32_t dst, uint32_t src, uint32_t len);

#endif // __CO_UTILS_H__
