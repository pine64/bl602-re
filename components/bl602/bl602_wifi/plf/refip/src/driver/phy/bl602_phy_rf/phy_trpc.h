#ifndef __PHY_TRPC_H__
#define __PHY_TRPC_H__

#include <stdint.h>


struct trpc_env_tag {
    int8_t power_dbm_max_rf; // +0
    int8_t power_dbm_min_rf; // +1
    int8_t power_dbm_lim_reg; // +2
    int16_t channel_freq; // +4
    int8_t temperature; // +6
    int8_t temperature_compensate; // +7
};


extern struct trpc_env_tag trpc_env;


void trpc_init(void);
void trpc_update_power(int8_t *power_rate_table[8]);
void trpc_power_get(int8_t *power_rate_table);
void trpc_update_power_11b(int8_t *power_rate_table);
void trpc_update_power_11g(int8_t *power_rate_table);
void trpc_update_power_11n(int8_t *power_rate_table);
int8_t trpc_get_rf_max_power(void);
int8_t trpc_get_rf_min_power(void);
uint8_t trpc_get_default_power_idx(uint8_t formatmod, uint8_t mcs);
uint8_t trpc_get_power_idx(uint8_t formatmod, uint8_t mcs, int8_t pwr_dbm);
void trpc_update_vs_channel(int8_t channel_MHz);
void trpc_update_vs_temperature(int8_t temperature);

#endif // __PHY_TRPC_H__
