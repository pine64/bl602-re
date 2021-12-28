#ifndef _CO_UTILS_H_
#define _CO_UTILS_H_

#include <stdbool.h>
#include <stdint.h>


static inline uint16_t co_read16(const void *ptr16) {
    return *((uint16_t*)ptr16);
}

static inline void co_write16(const void *ptr16, uint32_t value) {
    *((uint16_t*)ptr16) = value;
}

static inline void co_copy32(uint32_t *dst, uint32_t *src, uint32_t len) {
    for (int i = 0; i < len; i += 4) {
        *(dst + (i/4)) = *(src + (i/4));
    }
}

static inline uint8_t co_read8p(uint32_t addr) {
    return *((uint8_t*)addr);
}

static inline void co_write8p(uint32_t addr, uint8_t value) {
    *((uint8_t*)addr) = value;
}

static inline uint16_t co_read16p(uint32_t addr) {
    return *((uint16_t*)addr);
}

static inline void co_write16p(uint32_t addr, uint32_t value) {
    *((uint16_t*)addr) = value;
}

static inline uint32_t co_read32p(uint32_t addr) {
    return *((uint32_t*)addr);
}

static inline void co_write32p(uint32_t addr, uint32_t value){
    *((uint32_t*)addr) = value;
}

static inline bool co_cmp8p(uint32_t pkd, const uint8_t *ptr, uint32_t len) {
    for (int i = 0; i < len; i++) {
        if (co_read8p(pkd + i) != ((*(ptr+i)) & 0xff)) {
            return false;
        }
    }
    return true;
}

static inline void co_pack8p(uint32_t dst, const uint8_t *src, uint32_t len) {
    for (int i = 0; i < len; i++) {
        co_write8p(dst + i, *(src +  i));
    }
}

static inline void co_unpack8p(uint8_t *dst, uint32_t src, uint32_t len) {
    for (int i = 0; i < len; i++) {
        *(dst + i) = co_read8p(src + i);
    }
}

static inline void co_copy8p(uint32_t dst, uint32_t src, uint32_t len) {
    for (int i = 0; i < len; i++) {
        co_write8p(dst + i, co_read8p(src + i));
    }
}

/**
 ****************************************************************************************
 * @brief Get the index of an element in an array.
 * @param[in] __element_ptr Pointer to the element
 * @param[in] __array_ptr Pointer to the array
 * @return The index of the element
 ****************************************************************************************
 */
#define CO_GET_INDEX(__element_ptr, __array_ptr) ((__element_ptr) - (__array_ptr))

#endif // _CO_UTILS_H_
