#ifndef BLECONTROLLER_MODULES_COMMON_CO_UTILS_H
#define BLECONTROLLER_MODULES_COMMON_CO_UTILS_H

#include <stdbool.h>
#include <stdint.h>

extern const unsigned char one_bits[16];
extern const uint16_t co_sca2ppm[];
extern const struct bd_addr co_null_bdaddr;
extern struct bd_addr co_default_bdaddr;

void co_bdaddr_set(uint8_t *bdaddr);
bool co_bdaddr_compare(const struct bd_addr *bd_address1, const struct bd_addr *bd_address2);

#endif /* BLECONTROLLER_MODULES_COMMON_CO_UTILS_H */
