void _calc_sdm_cw(uint32_t xtalfreq, float freq_MHz, uint32_t * sdm_cw);
void _calc_sdm_params(uint32_t xtalfreq, uint32_t * lo_center_freq_mhz, uint32_t * lo_sdmin_center, uint32_t * lo_sdmin_1m, uint32_t * lo_sdmin_if);
void _check_config(void);
void _print_channel_info(void);
void _set_mdm(void);
void _set_rf_channel_hw(uint32_t channel_freq);
void _set_rf_channel_sw(uint32_t channel_freq);
void _set_rfc(uint32_t xtalfreq_hz);
void _set_rfc_powercontrol(uint32_t pc_mode);
void rfc_apply_tx_dvga(int8_t * dvga_qdb);
void rfc_apply_tx_dvga_offset(int8_t offset_qdb);
void rfc_apply_tx_power_offset(uint8_t channel, int8_t * power_offset);
void rfc_coex_force_to(uint32_t force_enable, uint32_t bbmode);
void rfc_config_bandwidth(uint32_t mode);
void rfc_config_channel(uint32_t channel_freq);
void rfc_config_channel_sw(uint32_t channel_freq);
void rfc_config_power(uint32_t mode, uint32_t tbb_boost, uint32_t tbb, uint32_t tmx);
_Bool rfc_config_power_ble(int32_t pwr_dbm);
void rfc_dump(void);
void rfc_fsm_force(uint8_t state);
uint32_t rfc_get_power_level(uint32_t formatmod, int32_t power);
void rfc_hwctrl_calparam(uint8_t hwctrl_on);
void rfc_hwctrl_rxgain(uint8_t hwctrl_on);
void rfc_hwctrl_txdvga(uint8_t hwctrl_on);
void rfc_hwctrl_txrfgain(uint8_t hwctrl_on);
void rfc_init(uint32_t xtalfreq_hz);
uint32_t rfc_pm_start(uint32_t insel, int32_t freq_cw, uint32_t acclen, uint32_t rshift, int32_t * raw_acc_i, int32_t * raw_acc_q);
void rfc_pm_stop(void);
void rfc_rc_fsm_force(uint8_t state);
uint32_t rfc_read_reg(uint32_t addr);
void rfc_reset(void);
void rfc_rxdfe_set_dccomp(int16_t dcc_i, int16_t dcc_q);
void rfc_rxdfe_set_iqgaincomp(uint8_t en, uint16_t coeff);
void rfc_rxdfe_set_iqphasecomp(uint8_t en, int16_t coeff);
void rfc_rxdfe_set_iqswap(uint8_t swap_on);
void rfc_rxdfe_set_notch0(uint8_t en, uint8_t alpha, int8_t nrmfc);
void rfc_rxdfe_set_notch1(uint8_t en, uint8_t alpha, int8_t nrmfc);
void rfc_rxdfe_start(void);
void rfc_rxdfe_stop(void);
void rfc_sg_start(uint32_t inc_step, uint32_t gain_i, uint32_t gain_q, uint32_t addr_i, uint32_t addr_q);
void rfc_sg_stop(void);
void rfc_txdfe_mux(int8_t signal_source);
void rfc_txdfe_set_dccomp(int16_t dcc_i, int16_t dcc_q);
void rfc_txdfe_set_dvga(int8_t dvga_qdb);
void rfc_txdfe_set_iqgaincomp(uint8_t en, uint16_t coeff);
void rfc_txdfe_set_iqphasecomp(uint8_t en, int16_t coeff);
void rfc_txdfe_set_iqswap(uint8_t swap_on);
void rfc_txdfe_start(void);
void rfc_txdfe_stop(void);
void rfc_ver_set(uint8_t ver);
void rfc_wlan_mode_force(uint32_t force_mode);
void rfc_write_reg(uint32_t addr, uint32_t value);
void rfc_write_reg_bits(uint32_t addr, uint8_t high_bit, uint8_t low_bit, uint32_t wdata);
void wait_ms(uint32_t ms);
void wait_us(uint32_t us);
#if 0 //TODO EXISTS ALEADY
/**
* @file rfc_bl602.c
* Source file for BL602
*/
#include "rfc_bl602.h"


static uint8_t inited;
static double xtalfreq_MHz;

void rfc_reset(void);
void rfc_ver_set(uint8_t ver);
void rfc_txdfe_start(void);
void rfc_txdfe_stop(void);
void rfc_txdfe_mux(int8_t signal_source);
void rfc_txdfe_set_dvga(int8_t dvga_qdb);
void rfc_txdfe_set_iqgaincomp(uint8_t en, uint16_t coeff);
void rfc_txdfe_set_iqphasecomp(uint8_t en, int16_t coeff);
void rfc_txdfe_set_dccomp(int16_t dcc_i, int16_t dcc_q);
void rfc_txdfe_set_iqswap(uint8_t swap_on);
void rfc_rxdfe_start(void);
void rfc_rxdfe_stop(void);
void rfc_rxdfe_set_iqgaincomp(uint8_t en, uint16_t coeff);
void rfc_rxdfe_set_iqphasecomp(uint8_t en, int16_t coeff);
void rfc_rxdfe_set_dccomp(int16_t dcc_i, int16_t dcc_q);
void rfc_rxdfe_set_iqswap(uint8_t swap_on);
void rfc_rxdfe_set_notch0(uint8_t en, uint8_t alpha, int8_t nrmfc);
void rfc_rxdfe_set_notch1(uint8_t en, uint8_t alpha, int8_t nrmfc);
void rfc_sg_start(uint32_t inc_step, uint32_t gain_i, uint32_t gain_q, uint32_t addr_i, uint32_t addr_q);
void rfc_sg_stop(void);
uint32_t rfc_pm_start(uint32_t insel, int32_t freq_cw, uint32_t acclen, uint32_t rshift, int32_t *raw_acc_i, int32_t *raw_acc_q);
void rfc_pm_stop(void);
void rfc_hwctrl_txrfgain(uint8_t hwctrl_on);
void rfc_hwctrl_rxgain(uint8_t hwctrl_on);
void rfc_hwctrl_txdvga(uint8_t hwctrl_on);
void rfc_hwctrl_calparam(uint8_t hwctrl_on);
void rfc_fsm_force(uint8_t state);
void rfc_rc_fsm_force(uint8_t state);
void rfc_coex_force_to(uint32_t force_enable, uint32_t bbmode);
void rfc_config_power(uint32_t mode, uint32_t tbb_boost, uint32_t tbb, uint32_t tmx);
bool rfc_config_power_ble(int32_t pwr_dbm);
void rfc_config_bandwidth(uint32_t mode);
uint32_t rfc_get_power_level(uint32_t formatmod, int32_t power);
void rfc_wlan_mode_force(uint32_t force_mode);
void rfc_apply_tx_dvga_offset(int8_t offset_qdb);
void rfc_apply_tx_dvga(int8_t *dvga_qdb);
void rfc_dump(void);
void rfc_apply_tx_power_offset(uint8_t channel, int8_t *power_offset);




/** rfc_reset
 */
void rfc_reset(void)
{
	ASSER_ERR(FALSE);
	return;
}

/** rfc_ver_set
 */
void rfc_ver_set(uint8_t ver)
{
	ASSER_ERR(FALSE);
	return;
}

/** rfc_txdfe_start
 */
void rfc_txdfe_start(void)
{
	ASSER_ERR(FALSE);
	return;
}

/** rfc_txdfe_stop
 */
void rfc_txdfe_stop(void)
{
	ASSER_ERR(FALSE);
	return;
}

/** rfc_txdfe_mux
 */
void rfc_txdfe_mux(int8_t signal_source)
{
	ASSER_ERR(FALSE);
	return;
}

/** rfc_txdfe_set_dvga
 */
void rfc_txdfe_set_dvga(int8_t dvga_qdb)
{
	ASSER_ERR(FALSE);
	return;
}

/** rfc_txdfe_set_iqgaincomp
 */
void rfc_txdfe_set_iqgaincomp(uint8_t en, uint16_t coeff)
{
	ASSER_ERR(FALSE);
	return;
}

/** rfc_txdfe_set_iqphasecomp
 */
void rfc_txdfe_set_iqphasecomp(uint8_t en, int16_t coeff)
{
	ASSER_ERR(FALSE);
	return;
}

/** rfc_txdfe_set_dccomp
 */
void rfc_txdfe_set_dccomp(int16_t dcc_i, int16_t dcc_q)
{
	ASSER_ERR(FALSE);
	return;
}

/** rfc_txdfe_set_iqswap
 */
void rfc_txdfe_set_iqswap(uint8_t swap_on)
{
	ASSER_ERR(FALSE);
	return;
}

/** rfc_rxdfe_start
 */
void rfc_rxdfe_start(void)
{
	ASSER_ERR(FALSE);
	return;
}

/** rfc_rxdfe_stop
 */
void rfc_rxdfe_stop(void)
{
	ASSER_ERR(FALSE);
	return;
}

/** rfc_rxdfe_set_iqgaincomp
 */
void rfc_rxdfe_set_iqgaincomp(uint8_t en, uint16_t coeff)
{
	ASSER_ERR(FALSE);
	return;
}

/** rfc_rxdfe_set_iqphasecomp
 */
void rfc_rxdfe_set_iqphasecomp(uint8_t en, int16_t coeff)
{
	ASSER_ERR(FALSE);
	return;
}

/** rfc_rxdfe_set_dccomp
 */
void rfc_rxdfe_set_dccomp(int16_t dcc_i, int16_t dcc_q)
{
	ASSER_ERR(FALSE);
	return;
}

/** rfc_rxdfe_set_iqswap
 */
void rfc_rxdfe_set_iqswap(uint8_t swap_on)
{
	ASSER_ERR(FALSE);
	return;
}

/** rfc_rxdfe_set_notch0
 */
void rfc_rxdfe_set_notch0(uint8_t en, uint8_t alpha, int8_t nrmfc)
{
	ASSER_ERR(FALSE);
	return;
}

/** rfc_rxdfe_set_notch1
 */
void rfc_rxdfe_set_notch1(uint8_t en, uint8_t alpha, int8_t nrmfc)
{
	ASSER_ERR(FALSE);
	return;
}

/** rfc_sg_start
 */
void rfc_sg_start(uint32_t inc_step, uint32_t gain_i, uint32_t gain_q, uint32_t addr_i, uint32_t addr_q)
{
	ASSER_ERR(FALSE);
	return;
}

/** rfc_sg_stop
 */
void rfc_sg_stop(void)
{
	ASSER_ERR(FALSE);
	return;
}

/** rfc_pm_start
 */
uint32_t rfc_pm_start(uint32_t insel, int32_t freq_cw, uint32_t acclen, uint32_t rshift, int32_t *raw_acc_i, int32_t *raw_acc_q)
{
	ASSER_ERR(FALSE);
	return 0xffffffff;
}

/** rfc_pm_stop
 */
void rfc_pm_stop(void)
{
	ASSER_ERR(FALSE);
	return;
}

/** rfc_hwctrl_txrfgain
 */
void rfc_hwctrl_txrfgain(uint8_t hwctrl_on)
{
	ASSER_ERR(FALSE);
	return;
}

/** rfc_hwctrl_rxgain
 */
void rfc_hwctrl_rxgain(uint8_t hwctrl_on)
{
	ASSER_ERR(FALSE);
	return;
}

/** rfc_hwctrl_txdvga
 */
void rfc_hwctrl_txdvga(uint8_t hwctrl_on)
{
	ASSER_ERR(FALSE);
	return;
}

/** rfc_hwctrl_calparam
 */
void rfc_hwctrl_calparam(uint8_t hwctrl_on)
{
	ASSER_ERR(FALSE);
	return;
}

/** rfc_fsm_force
 */
void rfc_fsm_force(uint8_t state)
{
	ASSER_ERR(FALSE);
	return;
}

/** rfc_rc_fsm_force
 */
void rfc_rc_fsm_force(uint8_t state)
{
	ASSER_ERR(FALSE);
	return;
}

/** rfc_coex_force_to
 */
void rfc_coex_force_to(uint32_t force_enable, uint32_t bbmode)
{
	ASSER_ERR(FALSE);
	return;
}

/** rfc_config_power
 */
void rfc_config_power(uint32_t mode, uint32_t tbb_boost, uint32_t tbb, uint32_t tmx)
{
	ASSER_ERR(FALSE);
	return;
}

/** rfc_config_power_ble
 */
bool rfc_config_power_ble(int32_t pwr_dbm)
{
	ASSER_ERR(FALSE);
	return false;
}

/** rfc_config_bandwidth
 */
void rfc_config_bandwidth(uint32_t mode)
{
	ASSER_ERR(FALSE);
	return;
}

/** rfc_get_power_level
 */
uint32_t rfc_get_power_level(uint32_t formatmod, int32_t power)
{
	ASSER_ERR(FALSE);
	return 0xffffffff;
}

/** rfc_wlan_mode_force
 */
void rfc_wlan_mode_force(uint32_t force_mode)
{
	ASSER_ERR(FALSE);
	return;
}

/** rfc_apply_tx_dvga_offset
 */
void rfc_apply_tx_dvga_offset(int8_t offset_qdb)
{
	ASSER_ERR(FALSE);
	return;
}

/** rfc_apply_tx_dvga
 */
void rfc_apply_tx_dvga(int8_t *dvga_qdb)
{
	ASSER_ERR(FALSE);
	return;
}

/** rfc_dump
 */
void rfc_dump(void)
{
	ASSER_ERR(FALSE);
	return;
}

/** rfc_apply_tx_power_offset
 */
void rfc_apply_tx_power_offset(uint8_t channel, int8_t *power_offset)
{
	ASSER_ERR(FALSE);
	return;
}
#endf 0 //TODO EXISTS ALEADY
