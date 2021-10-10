#include "phy_hal.h"


struct phy_hal_tag {
  int16_t temperature; // +0
  uint8_t capcode; // +2
};


uint32_t fem_gpio_oe;
uint32_t fem_gpio_cfgctl10;
uint32_t fem_gpio_inited;
static struct phy_hal_tag hal_env;


void hal_fem_gpio_on(void)
{
	__builtin_trap();
}

void hal_fem_gpio_off(void)
{
	__builtin_trap();
}

uint8_t hal_get_capcode(void)
{
	__builtin_trap();
}

void hal_set_capcode(uint32_t capcode)
{
	__builtin_trap();
}

void hal_set_capcode_asymm(uint32_t capcode_in, uint32_t capcode_out)
{
	__builtin_trap();
}

void hal_get_capcode_asymm(uint8_t *capcode_in, uint8_t *capcode_out)
{
	__builtin_trap();
}

bool hal_get_temperature(int16_t *temperature)
{
	__builtin_trap();
}

void hal_set_temperature(int16_t temperature)
{
	__builtin_trap();
}
