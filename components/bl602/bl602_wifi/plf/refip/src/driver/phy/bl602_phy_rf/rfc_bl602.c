#include "rfc_bl602.h"

#include <stdbool.h>


static uint8_t inited;
uint8_t version;
static double xtalfreq_MHz;


static void wait_us(uint32_t us)
{
	__builtin_trap();
}

void wait_ms(uint32_t ms)
{
	__builtin_trap();
}

uint32_t rfc_read_reg(uint32_t addr)
{
	__builtin_trap();
}

void rfc_write_reg(uint32_t addr, uint32_t value)
{
	__builtin_trap();
}

void rfc_write_reg_bits(uint32_t addr, uint8_t high_bit, uint8_t low_bit, uint32_t wdata)
{
	__builtin_trap();
}

void _set_rfc(uint32_t xtalfreq_hz)
{
	__builtin_trap();
}

void _set_mdm(void)
{
	__builtin_trap();
}

void _set_rfc_powercontrol(uint32_t pc_mode)
{
	__builtin_trap();
}

void _calc_sdm_cw(uint32_t xtalfreq, float freq_MHz, uint32_t *sdm_cw)
{
	__builtin_trap();
}

void _calc_sdm_params(uint32_t xtalfreq, uint32_t *lo_center_freq_mhz, uint32_t *lo_sdmin_center, uint32_t *lo_sdmin_1m, uint32_t *lo_sdmin_if)
{
	__builtin_trap();
}

void _print_channel_info(void)
{
	__builtin_trap();
}

void _set_rf_channel_sw(uint32_t channel_freq)
{
	__builtin_trap();
}

void _set_rf_channel_hw(uint32_t channel_freq)
{
	__builtin_trap();
}

void rfc_config_channel(uint32_t channel_freq)
{
	__builtin_trap();
}

void rfc_config_channel_sw(uint32_t channel_freq)
{
	__builtin_trap();
}

void _check_config(void)
{
	__builtin_trap();
}

void rfc_init(uint32_t xtalfreq_hz)
{
	__builtin_trap();
}

void rfc_reset(void)
{
	__builtin_trap();
}

void rfc_ver_set(uint8_t ver)
{
	__builtin_trap();
}

void rfc_txdfe_start(void)
{
	__builtin_trap();
}

void rfc_txdfe_stop(void)
{
	__builtin_trap();
}

void rfc_txdfe_mux(int8_t signal_source)
{
	__builtin_trap();
}

void rfc_txdfe_set_dvga(int8_t dvga_qdb)
{
	__builtin_trap();
}

void rfc_txdfe_set_iqgaincomp(uint8_t en, uint16_t coeff)
{
	__builtin_trap();
}

void rfc_txdfe_set_iqphasecomp(uint8_t en, int16_t coeff)
{
	__builtin_trap();
}

void rfc_txdfe_set_dccomp(int16_t dcc_i, int16_t dcc_q)
{
	__builtin_trap();
}

void rfc_txdfe_set_iqswap(uint8_t swap_on)
{
	__builtin_trap();
}

void rfc_rxdfe_start(void)
{
	__builtin_trap();
}

void rfc_rxdfe_stop(void)
{
	__builtin_trap();
}

void rfc_rxdfe_set_iqgaincomp(uint8_t en, uint16_t coeff)
{
	__builtin_trap();
}

void rfc_rxdfe_set_iqphasecomp(uint8_t en, int16_t coeff)
{
	__builtin_trap();
}

void rfc_rxdfe_set_dccomp(int16_t dcc_i, int16_t dcc_q)
{
	__builtin_trap();
}

void rfc_rxdfe_set_iqswap(uint8_t swap_on)
{
	__builtin_trap();
}

void rfc_rxdfe_set_notch0(uint8_t en, uint8_t alpha, int8_t nrmfc)
{
	__builtin_trap();
}

void rfc_rxdfe_set_notch1(uint8_t en, uint8_t alpha, int8_t nrmfc)
{
	__builtin_trap();
}

void rfc_sg_start(uint32_t inc_step, uint32_t gain_i, uint32_t gain_q, uint32_t addr_i, uint32_t addr_q)
{
	__builtin_trap();
}

void rfc_sg_stop(void)
{
	__builtin_trap();
}

uint32_t rfc_pm_start(uint32_t insel, int32_t freq_cw, uint32_t acclen, uint32_t rshift, int32_t *raw_acc_i, int32_t *raw_acc_q)
{
	__builtin_trap();
}

void rfc_pm_stop(void)
{
	__builtin_trap();
}

void rfc_hwctrl_txrfgain(uint8_t hwctrl_on)
{
	__builtin_trap();
}

void rfc_hwctrl_rxgain(uint8_t hwctrl_on)
{
	__builtin_trap();
}

void rfc_hwctrl_txdvga(uint8_t hwctrl_on)
{
	__builtin_trap();
}

void rfc_hwctrl_calparam(uint8_t hwctrl_on)
{
	__builtin_trap();
}

void rfc_fsm_force(uint8_t state)
{
	__builtin_trap();
}

void rfc_rc_fsm_force(uint8_t state)
{
	__builtin_trap();
}

void rfc_coex_force_to(uint32_t force_enable, uint32_t bbmode)
{
	__builtin_trap();
}

void rfc_config_power(uint32_t mode, uint32_t tbb_boost, uint32_t tbb, uint32_t tmx)
{
	__builtin_trap();
}

bool rfc_config_power_ble(int32_t pwr_dbm)
{
	__builtin_trap();
}

void rfc_config_bandwidth(uint32_t mode)
{
	__builtin_trap();
}

uint32_t rfc_get_power_level(uint32_t formatmod, int32_t power)
{
	__builtin_trap();
}

void rfc_wlan_mode_force(uint32_t force_mode)
{
	__builtin_trap();
}

void rfc_apply_tx_dvga_offset(int8_t offset_qdb)
{
	__builtin_trap();
}

void rfc_apply_tx_dvga(int8_t *dvga_qdb)
{
	__builtin_trap();
}

void rfc_dump(void)
{
	__builtin_trap();
}

void rfc_apply_tx_power_offset(uint8_t channel, int8_t *power_offset)
{
	__builtin_trap();
}
