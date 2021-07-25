#include "phy_hal.h"
#include <soc/AON.h>

static struct phy_hal_tag hal_env;

uint8_t hal_get_capcode(void) {
    return AON->xtal_cfg.xtal_capcode_in_aon;
}

void hal_set_capcode(uint32_t capcode) {
    /*
    AON->xtal_cfg.xtal_capcode_out_aon = capcode;
    AON->xtal_cfg.xtal_capcode_in_aon = capcode;
    */
   AON->xtal_cfg.value = (capcode & 0x3f) << 0x10 | (capcode & 0x3f) << 0x16 | AON->xtal_cfg.value & 0xf000ffff;
}

void hal_set_capcode_asymm(uint32_t capcode_in, uint32_t capcode_out) {
    /*
    AON->xtal_cfg.xtal_capcode_out_aon = capcode_out;
    AON->xtal_cfg.xtal_capcode_in_aon = capcode_in;
    */

   AON->xtal_cfg.value = (capcode_out & 0x3f) << 0x10 | (capcode_in & 0x3f) << 0x16 | AON->xtal_cfg.value & 0xf000ffff;
}

void hal_get_capcode_asymm(uint8_t *capcode_in, uint8_t *capcode_out) {
    if (capcode_in) {
        *capcode_in = AON->xtal_cfg.xtal_capcode_in_aon;
    }
    if (capcode_out) {
        *capcode_out = AON->xtal_cfg.xtal_capcode_out_aon;
    }
}

bool hal_get_temperature(int16_t *temperature) {
    *temperature = hal_env.temperature;
    return 1;
}

void hal_set_temperature(int16_t temperature) {
    hal_env.temperature = temperature;
}

