#include <stdbool.h>
#include <stdint.h>

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
	__builtin_trap();
}

/** ble_controller_set_tx_pwr
 */
void ble_controller_set_tx_pwr(int ble_tx_power)
{
	__builtin_trap();
}

/** ble_rf_init
 */
void ble_rf_init(struct rwip_rf_api *api)
{
	__builtin_trap();
}

/** rf_txpwr_max_set
 */
static void rf_txpwr_max_set(int8_t txpwr_dbm)
{
	__builtin_trap();
}

/** rf_reset
 */
static void rf_reset(void)
{
	__builtin_trap();
}

/** rf_force_agc_enable
 */
static void rf_force_agc_enable(bool en)
{
	__builtin_trap();
}

/** rf_txpwr_dec
 */
static bool rf_txpwr_dec(uint8_t dec)
{
	__builtin_trap();
}

/** rf_txpwr_inc
 */
static bool rf_txpwr_inc(uint8_t inc)
{
	__builtin_trap();
}

/** rf_txpwr_dbm_get
 */
static uint8_t rf_txpwr_dbm_get(uint8_t txpwr_idx, uint8_t modulation)
{
	__builtin_trap();
}

/** rf_rssi_convert
 */
static int8_t rf_rssi_convert(uint8_t rssi_reg)
{
	__builtin_trap();
}

/** rf_reg_rd
 */
static uint32_t rf_reg_rd(uint16_t addr)
{
	__builtin_trap();
}

/** rf_reg_wr
 */
static void rf_reg_wr(uint16_t addr, uint32_t value)
{
	__builtin_trap();
}

/** rf_sleep
 */
static void rf_sleep(void)
{
	__builtin_trap();
}
