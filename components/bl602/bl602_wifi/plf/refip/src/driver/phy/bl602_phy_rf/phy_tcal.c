#include "phy_tcal.h"

#include <stdbool.h>
#include <stdint.h>


struct tcal_tag {
  int16_t prev_temperature; // +0
  uint32_t last_action_time[4]; // +4
  uint32_t last_action_temperature[4]; // +20
  int32_t last_action_out[4]; // +36
  bool enabled; // +52
};


static struct tcal_tag tcal_env;


void phy_tcal_reset(void);
void phy_tcal_start(void);
void phy_tcal_stop(void);
void phy_tcal_handle(void);
void phy_tcal_callback(int16_t temperature);
void phy_tcal_rxgain(int16_t curr_temperature);
void phy_tcal_txpwr(int16_t curr_temperature);
void phy_tcal_txiq(int16_t curr_temperature);
void phy_tcal_rxiq(int16_t curr_temperature);
