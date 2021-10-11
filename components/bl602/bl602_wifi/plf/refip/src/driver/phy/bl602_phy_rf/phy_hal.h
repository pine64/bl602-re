#ifndef __PHY_HAL_H__
#define __PHY_HAL_H__

#include <stdbool.h>
#include <stdint.h>


uint8_t hal_get_capcode(void);
void hal_set_capcode(uint32_t capcode);
bool hal_get_temperature(int16_t *temperature);
void hal_set_temperature(int16_t temperature);

#endif // __PHY_HAL_H__
