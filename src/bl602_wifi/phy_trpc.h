#ifndef _PHY_TRPC_H_
#define _PHY_TRPC_H_
#include <stdint.h>
void trpc_init(void);
int8_t trpc_get_rf_max_power(void);
int8_t trpc_get_rf_min_power(void);
uint8_t trpc_get_power_idx(uint8_t formatmod, uint8_t mcs, int8_t pwr_dbm);
void trpc_update_vs_channel(int8_t channel_MHz); // :171:6
#endif