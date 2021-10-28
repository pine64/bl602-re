#ifndef _PHY_TCAL_H_
#define _PHY_TCAL_H_

#include <stdint.h>

void phy_tcal_reset(void);
void phy_tcal_start(void);

struct tcal_tag {
    int16_t prev_temperature; // +0
    uint32_t last_action_time[4]; // +4
    uint32_t last_action_temperature[4]; // +20
    int32_t last_action_out[4]; // +36
    bool enabled; // +52
}; // :29:8

void phy_tcal_stop(void); // :69:6
void phy_tcal_handle(void); // :74:6
void phy_tcal_callback(int16_t temperature); // :104:6
void phy_tcal_txpwr(int16_t curr_temperature); // :141:6
#endif