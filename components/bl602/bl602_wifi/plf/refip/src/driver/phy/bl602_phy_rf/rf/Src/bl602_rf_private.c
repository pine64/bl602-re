#include <bl602_rf_private.h>


static uint32_t state_rf_fsm_ctrl_hw;
static uint32_t state_rfctrl_hw_en;
static uint32_t state_rfcal_ctrlen;
static uint32_t state_pucr1;
static uint32_t state_fbdv;
static uint32_t state_sdm1;
static uint32_t state_sdm2;
static uint32_t state_rbb3;
static uint32_t state_adda1;
static uint32_t state_dfe_ctrl_0;
static uint32_t state_dfe_ctrl_3;
static uint32_t state_dfe_ctrl_6;
static uint32_t state_dfe_ctrl_7;
static uint32_t state_trx_gain1;
static uint32_t state_singen_ctrl0;
static uint32_t state_singen_ctrl2;
static uint32_t state_singen_ctrl3;
static uint32_t state_sram_ctrl0;
static uint32_t state_sram_ctrl1;
static uint32_t state_sram_ctrl2;
static uint32_t state_rf_resv_reg_1;
static uint32_t state_pa1;
static uint32_t state_ten_ac;
static uint32_t state_rfif_dfe_ctrl0;
static uint32_t state_tbb;
static uint32_t state_vco2;
static uint32_t init_fast;
static int32_t temps[13];
static uint32_t Tchannels[6];
static int32_t Tchannel_os[6];
static int32_t Tchannel_os_low[6];
static int32_t index_os_pre;
static int32_t index_os_pre_mdb;
static int32_t dvga_os_pre;
static int32_t up_dn;
static int32_t Tthr;
static int8_t temps_dvga[16];
static uint32_t channel_div_table[21];
static uint16_t channel_cnt_table[21];
static uint16_t channel_cnt_range[3];
static uint16_t fcal_div;
static uint16_t tmxcss[3];
static int32_t rx_notch_para_40M[14];
static tx_pwr_index data;
tx_pwr_index *tp_index;
static int32_t tx_pwr_table_a0[16];
static int32_t tx_pwr_table_a1[16];
static int32_t tx_pwr_table[16];
static int32_t tx_pwr_table_origin[16];
static int32_t tx_pwr_os;
static int32_t tx_pwr_os_temperature;
static int32_t tx_pwr_ch_os_a0[14];
static int32_t tx_pwr_ch_os_a1[14];
static int32_t tx_pwr_ch_os[14];
static uint32_t txcal_para_a0[8];
static uint32_t txcal_para_a1[8];
static uint32_t txcal_para[8];
static regs_to_opti opti_regs_data;
regs_to_opti *opti_regs;
static uint16_t channel_cw_table[21];
static uint16_t channel_cnt_opt_table[40];

void rf_pri_wait_us(uint32_t us)
{
	__builtin_trap();
}

void rf_pri_wait_ms(uint32_t ms)
{
	__builtin_trap();
}

static void rf_pri_set_gain_table_regs(void)
{
	__builtin_trap();
}

void rf_pri_fixed_val_regs(void)
{
	__builtin_trap();
}

void rf_pri_chipv(uint8_t chipv)
{
	__builtin_trap();
}

void rf_pri_update_tx_power_offset(uint8_t channel, int8_t *power_offset)
{
	__builtin_trap();
}

void rf_pri_init(uint8_t reset, uint8_t chipv)
{
	__builtin_trap();
}

void rf_pri_init_fast(uint32_t flag)
{
	__builtin_trap();
}

void rf_pri_get_notch_param(uint32_t chanfreq_MHz, uint8_t *ncf_on, int32_t *ncf_freq_Hz)
{
	__builtin_trap();
}

void rf_pri_update_param(uint32_t chanfreq_MHz)
{
	__builtin_trap();
}

void rf_pri_xtalfreq(uint32_t xtalfreq)
{
	__builtin_trap();
}

uint32_t rf_pri_get_vco_freq_cw(uint32_t chanfreq_MHz)
{
	__builtin_trap();
}

uint32_t rf_pri_get_vco_idac_cw(uint32_t chanfreq_MHz)
{
	__builtin_trap();
}

void rf_pri_update_txgain_tempos(int16_t tempos)
{
	__builtin_trap();
}

int32_t rf_pri_get_txgain_max(void)
{
	__builtin_trap();
}

int32_t rf_pri_get_txgain_min(void)
{
	__builtin_trap();
}

uint32_t rf_pri_get_txgain_index(int32_t pwr, uint32_t mode)
{
	__builtin_trap();
}

void rf_pri_query_txgain_table(uint32_t index, uint32_t *rfg_index, uint32_t *dg)
{
	__builtin_trap();
}

void rf_pri_update_dvga_os(int8_t dvga_os)
{
	__builtin_trap();
}

void rfc_apply_tx_dvga(int8_t *dvga_qdb)
{
	__builtin_trap();
}

void rf_pri_tx_gain_comp(int32_t Tsens)
{
	__builtin_trap();
}

void rf_pri_config_channel(uint32_t channel_index)
{
	__builtin_trap();
}

static void rf_pri_manu_pu(uint32_t mode)
{
	__builtin_trap();
}

void rf_pri_config_mode(uint32_t mode)
{
	__builtin_trap();
}

void rf_pri_auto_gain(void)
{
	__builtin_trap();
}

static void rf_pri_save_state_for_cal(void)
{
	__builtin_trap();
}

static void rf_pri_restore_state_for_cal(void)
{
	__builtin_trap();
}

void rf_pri_singen_config(uint32_t fcw, uint32_t start_addr_i, uint32_t start_addr_q)
{
	__builtin_trap();
}

static void rf_pri_singen_start(void)
{
	__builtin_trap();
}

void rf_pri_singen_amplitude(uint32_t gain_i, uint32_t gain_q)
{
	__builtin_trap();
}

static uint32_t rf_pri_pm_pwr(void)
{
	__builtin_trap();
}

static void rf_pri_rccal_config(uint32_t iq, uint32_t rbb_fc)
{
	__builtin_trap();
}

void rf_pri_roscal_config(uint32_t iq, uint32_t rosdac)
{
	__builtin_trap();
}

void rf_pri_config_txgain(uint32_t gc_tbb_boost, uint32_t gc_tmx, uint32_t gc_tbb)
{
	__builtin_trap();
}

static void rf_pri_start_txdfe(void)
{
	__builtin_trap();
}

void rf_pri_stop_txdfe(void)
{
	__builtin_trap();
}

void rf_pri_start_rxdfe(void)
{
	__builtin_trap();
}

void rf_pri_stop_rxdfe(void)
{
	__builtin_trap();
}

static int32_t rf_pri_pm_pwr_avg(uint32_t iq, uint32_t acc_len)
{
	__builtin_trap();
}

static void rf_pri_txcal_config(uint32_t param_ind, int32_t val)
{
	__builtin_trap();
}

static int32_t rf_pri_txcal_search_core(uint32_t param_ind, uint32_t center, uint32_t delta, uint32_t meas_freq)
{
	__builtin_trap();
}

static void rf_pri_txcal_config_hw(void)
{
	__builtin_trap();
}

uint32_t rf_pri_roscal_iq(uint32_t iq, uint32_t sram_start_addr, uint32_t length)
{
	__builtin_trap();
}

static uint32_t rf_pri_rccal_iq(uint32_t iq)
{
	__builtin_trap();
}

static uint16_t rf_pri_fcal_meas(uint32_t cw)
{
	__builtin_trap();
}

void rf_pri_singen_pwrmx_dc(uint32_t amp, uint32_t num_data, int32_t adc_mean_max, int32_t adc_mean_min)
{
	__builtin_trap();
}

void rf_pri_config_bandwidth(uint32_t bw)
{
	__builtin_trap();
}

void rf_pri_txcal(void)
{
	__builtin_trap();
}

void rf_pri_roscal(void)
{
	__builtin_trap();
}

void rf_pri_rccal(void)
{
	__builtin_trap();
}

void rf_pri_lo_acal(void)
{
	__builtin_trap();
}

void rf_pri_fcal(void)
{
	__builtin_trap();
}

void rf_pri_full_cal(void)
{
	__builtin_trap();
}

void rf_pri_restore_cal_reg(void)
{
	__builtin_trap();
}

void rf_pri_update_power_offset(int32_t *power_offset)
{
	__builtin_trap();
}

