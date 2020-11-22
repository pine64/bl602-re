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

