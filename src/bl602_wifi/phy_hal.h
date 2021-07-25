#ifndef _PHY_HAL_H_
#define _PHY_HAL_H_
#include <stdint.h>
struct phy_hal_tag {
    int16_t temperature; // +0
    uint8_t capcode; // +2
}; // :6:8

//static struct phy_hal_tag hal_env; // :15:27

uint8_t hal_get_capcode(void); // :43:9
void hal_set_capcode(uint32_t capcode); // :48:6
void hal_set_capcode_asymm(uint32_t capcode_in, uint32_t capcode_out); // :55:6
void hal_get_capcode_asymm(uint8_t *capcode_in, uint8_t *capcode_out); // :64:6
bool hal_get_temperature(int16_t *temperature); // :75:5
void hal_set_temperature(int16_t temperature); // :83:6
#endif