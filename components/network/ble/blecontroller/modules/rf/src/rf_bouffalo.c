/**
* @file rf_bouffalo.c
* Source file for BL602
*/
#include "rf_bouffalo.h"


static int8_t g_txpower_dbm;
static int8_t g_txpower_offset;

void ble_rf_set_pwr_offset(int8_t offset);
static void rf_txpwr_max_set(int8_t txpwr_dbm);
void ble_controller_set_tx_pwr(int ble_tx_power);
static void rf_reset(void);
static void rf_force_agc_enable(bool en);
static bool rf_txpwr_dec(uint8_t dec);
static bool rf_txpwr_inc(uint8_t inc);
static uint8_t rf_txpwr_dbm_get(uint8_t txpwr_idx, uint8_t modulation);
static int8_t rf_rssi_convert(uint8_t rssi_reg);
static uint32_t rf_reg_rd(uint16_t addr);
static void rf_reg_wr(uint16_t addr, uint32_t value);
static void rf_sleep(void);
void ble_rf_init(struct rwip_rf_api *api);




/** ble_rf_set_pwr_offset
 */
void ble_rf_set_pwr_offset(int8_t offset)
{
	ASSER_ERR(FALSE);
	return;
}

/** ble_controller_set_tx_pwr
 */
void ble_controller_set_tx_pwr(int ble_tx_power)
{
	ASSER_ERR(FALSE);
	return;
}

/** ble_rf_init
 */
void ble_rf_init(struct rwip_rf_api *api)
{
	ASSER_ERR(FALSE);
	return;
}

/** rf_txpwr_max_set
 */
static void rf_txpwr_max_set(int8_t txpwr_dbm)
{
	ASSER_ERR(FALSE);
	return;
}

/** rf_reset
 */
static void rf_reset(void)
{
	ASSER_ERR(FALSE);
	return;
}

/** rf_force_agc_enable
 */
static void rf_force_agc_enable(bool en)
{
	ASSER_ERR(FALSE);
	return;
}

/** rf_txpwr_dec
 */
static bool rf_txpwr_dec(uint8_t dec)
{
	ASSER_ERR(FALSE);
	return false;
}

/** rf_txpwr_inc
 */
static bool rf_txpwr_inc(uint8_t inc)
{
	ASSER_ERR(FALSE);
	return false;
}

/** rf_txpwr_dbm_get
 */
static uint8_t rf_txpwr_dbm_get(uint8_t txpwr_idx, uint8_t modulation)
{
	ASSER_ERR(FALSE);
	return 0xff;
}

/** rf_rssi_convert
 */
static int8_t rf_rssi_convert(uint8_t rssi_reg)
{
	ASSER_ERR(FALSE);
	return -1;
}

/** rf_reg_rd
 */
static uint32_t rf_reg_rd(uint16_t addr)
{
	ASSER_ERR(FALSE);
	return 0xffffffff;
}

/** rf_reg_wr
 */
static void rf_reg_wr(uint16_t addr, uint32_t value)
{
	ASSER_ERR(FALSE);
	return;
}

/** rf_sleep
 */
static void rf_sleep(void)
{
	ASSER_ERR(FALSE);
	return;
}
