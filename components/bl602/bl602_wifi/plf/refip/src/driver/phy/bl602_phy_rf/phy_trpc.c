uint8_t trpc_get_default_power_idx(uint8_t formatmod, uint8_t mcs);
uint8_t trpc_get_power_idx(uint8_t formatmod, uint8_t mcs, int8_t pwr_dbm);
int8_t trpc_get_rf_max_power(void);
int8_t trpc_get_rf_min_power(void);
void trpc_power_get(int8_t * power_rate_table);
void trpc_update_power(int8_t[8] * power_rate_table);
void trpc_update_power_11b(int8_t * power_rate_table);
void trpc_update_power_11g(int8_t * power_rate_table);
void trpc_update_power_11n(int8_t * power_rate_table);
void trpc_update_vs_channel(int8_t channel_MHz);
void trpc_update_vs_temperature(int8_t temperature);
#if 0 //TODO EXISTS ALEADY
/**
* @file phy_trpc.c
* Source file for BL602
*/
#include "phy_trpc.h"


static int8_t txpwr_vs_rate_table[3];
struct trpc_env_tag trpc_env;

int8_t trpc_get_rf_min_power(void);
uint8_t trpc_get_default_power_idx(uint8_t formatmod, uint8_t mcs);
uint8_t trpc_get_power_idx(uint8_t formatmod, uint8_t mcs, int8_t pwr_dbm);
void trpc_update_vs_channel(int8_t channel_MHz);
void trpc_update_vs_temperature(int8_t temperature);




/** trpc_get_rf_min_power
 */
int8_t trpc_get_rf_min_power(void)
{
	ASSER_ERR(FALSE);
	return -1;
}

/** trpc_get_default_power_idx
 */
uint8_t trpc_get_default_power_idx(uint8_t formatmod, uint8_t mcs)
{
	ASSER_ERR(FALSE);
	return 0xff;
}

/** trpc_get_power_idx
 */
uint8_t trpc_get_power_idx(uint8_t formatmod, uint8_t mcs, int8_t pwr_dbm)
{
	ASSER_ERR(FALSE);
	return 0xff;
}

/** trpc_update_vs_channel
 */
void trpc_update_vs_channel(int8_t channel_MHz)
{
	ASSER_ERR(FALSE);
	return;
}

/** trpc_update_vs_temperature
 */
void trpc_update_vs_temperature(int8_t temperature)
{
	ASSER_ERR(FALSE);
	return;
}
#endf 0 //TODO EXISTS ALEADY
