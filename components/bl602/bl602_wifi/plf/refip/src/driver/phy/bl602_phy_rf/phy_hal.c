void hal_fem_gpio_off(void);
void hal_fem_gpio_on(void);
uint8_t hal_get_capcode(void);
void hal_get_capcode_asymm(uint8_t * capcode_in, uint8_t * capcode_out);
_Bool hal_get_temperature(int16_t * temperature);
void hal_set_capcode(uint32_t capcode);
void hal_set_capcode_asymm(uint32_t capcode_in, uint32_t capcode_out);
void hal_set_temperature(int16_t temperature);
typedef struct phy_hal_tag phy_hal_tag, *phy_hal_tag;

struct phy_hal_tag {
    int16_t temperature;
    uint8_t capcode;
    undefined field_0x3;
};

#if 0 //TODO EXISTS ALEADY
/**
* @file phy_hal.c
* Source file for BL602
*/
#include "phy_hal.h"


struct phy_hal_tag {
    int16_t temperature;
 // +0
    uint8_t capcode;
 // +2
};

static struct phy_hal_tag hal_env;

uint8_t hal_get_capcode(void);
void hal_set_capcode(uint32_t capcode);
void hal_set_capcode_asymm(uint32_t capcode_in, uint32_t capcode_out);
void hal_get_capcode_asymm(uint8_t *capcode_in, uint8_t *capcode_out);
bool hal_get_temperature(int16_t *temperature);
void hal_set_temperature(int16_t temperature);




/** hal_get_capcode
 */
uint8_t hal_get_capcode(void)
{
	ASSER_ERR(FALSE);
	return 0xff;
}

/** hal_set_capcode
 */
void hal_set_capcode(uint32_t capcode)
{
	ASSER_ERR(FALSE);
	return;
}

/** hal_set_capcode_asymm
 */
void hal_set_capcode_asymm(uint32_t capcode_in, uint32_t capcode_out)
{
	ASSER_ERR(FALSE);
	return;
}

/** hal_get_capcode_asymm
 */
void hal_get_capcode_asymm(uint8_t *capcode_in, uint8_t *capcode_out)
{
	ASSER_ERR(FALSE);
	return;
}

/** hal_get_temperature
 */
bool hal_get_temperature(int16_t *temperature)
{
	ASSER_ERR(FALSE);
	return false;
}

/** hal_set_temperature
 */
void hal_set_temperature(int16_t temperature)
{
	ASSER_ERR(FALSE);
	return;
}
#endf 0 //TODO EXISTS ALEADY
