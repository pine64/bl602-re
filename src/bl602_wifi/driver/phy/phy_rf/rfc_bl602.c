
#include <phy_rf/rfc_bl602.h>
#include <phy_rf/bl602_rf_private.h>
#include <utils.h>

#include <soc/rf.h>
#include <phy/agc.h>
#include <phy/mdm.h>
#include <soc/pds.h>

#define prefix  "[RFC] "

static int inited = 0;
static double xtalfreq_MHz = 40.0;
static void wait_us(uint32_t);
static void wait_ms(uint32_t);
static void _set_rfc();
static void _set_mdm();
static void _set_rf_channel_sw(uint32_t);
static void _set_rf_channel_hw(uint32_t);
static uint32_t _calc_sdm_cw(float xtalfreq_MHz, float freq);
//static void _calc_sdm_params(uint32_t xtalfreq,uint32_t *lo_center_freq_mhz,uint32_t *lo_sdmin_center,uint32_t *lo_sdmin_1m,uint32_t *lo_sdmin_if);
static void _set_rfc_powercontrol(uint32_t pc_mode);

// todo: check me
static void _sync_tx_power_offset() {
    uint32_t rfg_index;
    uint32_t dg;

    typedef struct {
		uint32_t rf_tbb_ind_gc : 3; // @ 2 -- 0 # 0xfffffff8
		uint32_t pad0 : 1;
    } __attribute__((packed)) rf_tbb_ind_t;
    union {
        rf_tbb_ind_t val[16];
        uint32_t pack[2];
    } rf_tbb_ind = {.pack = {0}};
    typedef struct {
		uint32_t tx_dvga_gain_qdb_gc : 7; // @ 6 -- 0 # 0xffffff80
		uint32_t pad0 : 1;
    } __attribute__((packed)) dvga_gain_t;
    union {
        dvga_gain_t val[16];
        uint32_t pack[4];
    } dvga_gain = {.pack = {0}};
    for (int i = 0; i < 16; i++) {
        rf_pri_query_txgain_table(i, &rfg_index, &dg);
        rf_tbb_ind.val[i].rf_tbb_ind_gc = rfg_index & 7;
        dvga_gain.val[i].tx_dvga_gain_qdb_gc = dg;
    }
    RF->dfe_ctrl_16.value = rf_tbb_ind.pack[0];
    RF->dfe_ctrl_12.value = dvga_gain.pack[0];
    RF->dfe_ctrl_13.value = dvga_gain.pack[1];
    RF->dfe_ctrl_17.value = rf_tbb_ind.pack[1];
    RF->dfe_ctrl_14.value = dvga_gain.pack[2];
    RF->dfe_ctrl_15.value = dvga_gain.pack[3];
}

void rfc_apply_tx_power_offset(uint8_t channel, int8_t *power_offset) {
    rf_pri_update_tx_power_offset(channel, power_offset);
    _sync_tx_power_offset();
}

// todo: check me
void rfc_apply_tx_dvga(int8_t *dvga_qdb) {
    uint32_t dvga_qdb_align[4];
    memcpy(dvga_qdb_align, dvga_qdb, sizeof(dvga_qdb_align));
    dvga_qdb_align[0] &= 0x7f7f7f7f;
    dvga_qdb_align[1] &= 0x7f7f7f7f;
    dvga_qdb_align[2] &= 0x7f7f7f7f;
    dvga_qdb_align[3] &= 0x7f7f7f7f;
    RF->dfe_ctrl_12.value = dvga_qdb_align[0];
    RF->dfe_ctrl_13.value = dvga_qdb_align[1];
    RF->dfe_ctrl_14.value = dvga_qdb_align[2];
    RF->dfe_ctrl_15.value = dvga_qdb_align[3];
}

// todo: verify me
void rfc_apply_tx_dvga_offset(int8_t offset_qdb) {
    volatile uint8_t * gain = (volatile uint8_t *) (&RF->dfe_ctrl_12);
    for (int i = 0; i < 16; i++) {
        uint8_t vold_gain = gain[i];
        int old_gain = ((int)vold_gain << 0x19) >> 0x19;
        int new_gain = RF->dfe_ctrl_12.tx_dvga_gain_qdb_gc0 + offset_qdb;
        if (new_gain > 24)
            new_gain = 24;
        if (new_gain < -48)
            new_gain = -48;
        gain[i] = (vold_gain & 0x80) | (new_gain & 0x7f);
    }
}

void rfc_rxdfe_set_notch0(uint8_t en, uint8_t alpha, int8_t nrmfc) {
    RF->r0x1700.rf_rx_notch0_en = en;
    RF->r0x1700.rf_rx_notch0_alpha = alpha;
    RF->r0x1700.rf_rx_notch0_nrmfc = nrmfc;
}

static void _set_rf_channel_hw(uint32_t channel_freq) {
    RF->rf_fsm_ctrl0.rf_ch_ind_wifi = channel_freq  & 0xfff;
    RF->rf_fsm_ctrl1.rf_fsm_lo_rdy_rst = 1;
    wait_us(10);
    RF->rf_fsm_ctrl1.rf_fsm_lo_rdy_rst = 0;
    wait_us(10);
    RF->rf_fsm_ctrl_hw.rf_fsm_ctrl_en = 0;
    wait_us(10);
    RF->rf_fsm_ctrl_hw.rf_fsm_ctrl_en = 1;
    wait_us(10);
    RF->rf_fsm_ctrl2.rf_fsm_st_dbg = 1;
    wait_us(10);
    RF->rf_fsm_ctrl2.rf_fsm_st_dbg_en = 1;
    wait_us(10);
    RF->rf_fsm_ctrl2.rf_fsm_st_dbg = 2;
    wait_us(100);
    RF->rf_fsm_ctrl2.rf_fsm_st_dbg_en = 0;
    wait_us(10);
}

static void _print_channel_info() {
    printf("Channel information:\r\n");
    printf("    lo_sdmin_hw        %lx\r\n", RF->sdm3.lo_sdmin_hw);
    printf("    lo_sdmbypass_hw    %ld\r\n", RF->sdm1.lo_sdm_bypass_hw);
    printf("    lo_vco_idac_cw_hw  %lx\r\n", RF->vco1.lo_vco_idac_cw_hw);
    printf("    lo_vco_freq_cw_hw  %lx\r\n", RF->vco1.lo_vco_freq_cw_hw);
    printf("    lo_unlocked        %ld\r\n", RF->rf_fsm_ctrl_sw.lo_unlocked);
    printf("    lo_halfstep_en_hw  %ld\r\n", RF->fbdv.lo_fbdv_halfstep_en_hw);
    printf("    lo_slipped_up");
    for (int i = 0; i < 8; i++) {
        wait_us(1000);
        printf("%ld", RF->lo.lo_slipped_up ? (uint32_t)1 : (uint32_t)0);
    }
    printf("\r\n");
    printf("    lo_slipped_dn      ");
    for (int i = 0; i < 8; i++) {
        wait_us(1000);
        printf("%ld", RF->lo.lo_slipped_dn ? (uint32_t)1 : (uint32_t)0);
    }
    printf("\r\n");
}

void rfc_config_channel(uint32_t channel_freq) {
    RF->rfif_dig_ctrl.rfif_int_lo_unlocked_mask = 1;
    RF->rfctrl_hw_en.lo_ctrl_hw = 1;
    RF->rfctrl_hw_en.sdm_ctrl_hw = 1;
    RF->rfctrl_hw_en.pu_ctrl_hw = 1;

    _set_rf_channel_hw(channel_freq);
    _print_channel_info();
    rf_pri_update_param(channel_freq);
    uint8_t ncf_on;
    int32_t ncf_freq_Hz;
    rf_pri_get_notch_param(channel_freq, &ncf_on, (int32_t *)&ncf_freq_Hz);
    double freq = ncf_freq_Hz;
    freq /= 40000000.0;
    freq *= 256.0;
    freq += 0.5;
    int32_t new_freq = freq;
    rfc_rxdfe_set_notch0(ncf_on, 1, new_freq);
    RF->rfif_dig_ctrl.rfif_int_lo_unlocked_mask = 0;
}

void rfc_config_channel_sw(uint32_t channel_freq) {
    RF->rfctrl_hw_en.lo_ctrl_hw = 0;
    RF->rfctrl_hw_en.sdm_ctrl_hw = 0;
    RF->rfctrl_hw_en.pu_ctrl_hw = 0;
    _set_rf_channel_sw(channel_freq);
    
    rf_pri_update_param(channel_freq);
    uint8_t ncf_on;
    int32_t ncf_freq_Hz;
    rf_pri_get_notch_param(channel_freq, &ncf_on, &ncf_freq_Hz);
    double  ncf_fs_Hz = 40 * 1000 * 1000;
    int8_t ncf_nrmfc = (int8_t)((ncf_freq_Hz / ncf_fs_Hz) * (1 << 8) + 0.5);
    uint8_t ncf_alpha = 1;
    rfc_rxdfe_set_notch0(ncf_on, ncf_alpha, ncf_nrmfc);
}


void rfc_config_power(uint32_t mode, uint32_t tbb_boost, uint32_t tbb, uint32_t tmx) {
    _set_rfc_powercontrol(mode); 

    RF->trx_gain1.gc_tbb_boost = tbb_boost;
    RF->trx_gain1.gc_tbb = tbb;
    RF->trx_gain1.gc_tmx = tmx;
}


void rfc_config_bandwidth(uint32_t mode) {
    if (mode == RFC_BW_20M) {
        // dac
        PDS->clkpll_output_en.clkpll_en_div2_480m = 0;

        // adc
        RF->adda2.adc_clk_div_sel = 1;
        RF->rfif_dig_ctrl.rfckg_rxclk_div2_mode = 0;

        // rbb bw
        RF->rbb3.rbb_bw = 2;
        // rmxgm
        RF->rmxgm.rmxgm_10m_mode_en = 0;
    }
    else if (mode == RFC_BW_10M) {
        // dac
        PDS->clkpll_output_en.clkpll_en_div2_480m = 1;

        // adc
        
        RF->adda2.adc_clk_div_sel = 0;
        RF->rfif_dig_ctrl.rfckg_rxclk_div2_mode = 1;
        
        // rbb bw
        RF->rbb3.rbb_bw = 1;

        // rmxgm
        RF->rmxgm.rmxgm_10m_mode_en = 1;
    }
}


uint32_t rfc_get_power_level(uint32_t formatmod, int32_t power) {
    if (formatmod > 2)
        formatmod = 0;
    return rf_pri_get_txgain_index(power, formatmod) << 2;
}

void rfc_init(uint32_t xtalfreq_hz) {
    RF->rfif_dfe_ctrl0.bbmode_4s = 0;
    RF->rfif_dfe_ctrl0.bbmode_4s_en = 1;
    int xtal_mode = 4;
    switch (xtalfreq_hz) {
    case 24000000:
        xtal_mode = 1;
        break;
    case 32000000:
        xtal_mode = 2;
        break;
    case 38400000:
        xtal_mode = 3;
        break;
    case 52000000:
        xtal_mode = 5;
        break;
    case 40000000:
    default:
        break;
    }
    rf_pri_xtalfreq(xtal_mode);
    rf_pri_init(!inited, 1);
    inited = 1;


    _set_rfc(xtalfreq_hz);
    _set_mdm();

    RF->rfif_dfe_ctrl0.bbmode_4s_en = 0;

    // leak code has RF Optimized and CFG_RF_ICAL here
    RF->rf_fsm_ctrl_hw.rf_fsm_t2r_cal_mode = 0;

    PDS->clkpll_output_en.clkpll_en_80m = 0;
    wait_us(1);
    RF->rf_fsm_ctrl_hw.rf_fsm_t2r_cal_mode = 1;
    wait_us(1);
    PDS->clkpll_output_en.clkpll_en_80m = 1;

    // _check_config(); skipped
    printf("rf controller init done\r\n");
}

void rfc_reset() {
    inited = 0;
    rfc_init(xtalfreq_MHz * 1000 * 1000);
}

static uint32_t _calc_sdm_cw(float xtalfreq_MHz, float freq) {
    return (((freq * 4.0) / 3.0) / xtalfreq_MHz) * (1<<22);
}

void rfc_ver_set(uint8_t ver) {
    return ;
}

void rfc_wlan_mode_force(uint32_t force_mode) {
    if (force_mode < 3) {
        RF->rfif_dfe_ctrl0.wifimode_4s = force_mode;
        RF->rfif_dfe_ctrl0.wifimode_4s_en = 1;
    } else {
        RF->rfif_dfe_ctrl0.wifimode_4s = 0;
        RF->rfif_dfe_ctrl0.wifimode_4s_en = 0;
    }
}

void rfc_txdfe_start() {
    RF->rfif_dfe_ctrl0.tx_dfe_en_4s = 1;
    wait_us(1);
    RF->rfif_dfe_ctrl0.tx_dfe_en_4s_en = 1;
}

void rfc_txdfe_stop() {
    RF->rfif_dfe_ctrl0.tx_dfe_en_4s = 0;
    wait_us(1);
    RF->rfif_dfe_ctrl0.tx_dfe_en_4s_en = 0;
}

void rfc_txdfe_mux(int8_t signal_source) {
    RF->rfif_dfe_ctrl0.tx_test_sel = signal_source & 3;
}

void rfc_txdfe_set_dvga(int8_t dvga_qdb) {
    if (dvga_qdb < -48 || dvga_qdb > +24) {
        printf(prefix "dvga_qdb out of range -48~+24,skip\r\n");
        return ;
    }
    RF->dfe_ctrl_0.tx_dvga_gain_qdb = dvga_qdb;
}

void rfc_txdfe_set_iqgaincomp(uint8_t en,uint16_t coeff) {
    RF->dfe_ctrl_0.tx_iqc_gain_en = en;
    RF->dfe_ctrl_0.tx_iqc_gain = coeff;
}

void rfc_txdfe_set_iqphasecomp(uint8_t en,int16_t coeff) {
    RF->dfe_ctrl_0.tx_iqc_phase_en = en;
    RF->dfe_ctrl_0.tx_iqc_phase = coeff;
}

void rfc_txdfe_set_dccomp(int16_t dcc_i,int16_t dcc_q) {
    RF->dfe_ctrl_1.tx_dac_os_i = dcc_i;
    RF->dfe_ctrl_1.tx_dac_os_q = dcc_q;
    
}

void rfc_txdfe_set_iqswap(uint8_t swap_on) {
    RF->dfe_ctrl_1.tx_dac_iq_swap = swap_on;
}

void rfc_rxdfe_start() {}
void rfc_rxdfe_stop();
void rfc_rxdfe_set_iqgaincomp(uint8_t en,uint16_t coeff);
void rfc_rxdfe_set_iqphasecomp(uint8_t en,int16_t coeff);
void rfc_rxdfe_set_dccomp(int16_t dcc_i,int16_t dcc_q);
void rfc_rxdfe_set_iqswap(uint8_t swap_on);
void rfc_rxdfe_set_notch0(uint8_t en,uint8_t alpha,int8_t nrmfc);
void rfc_rxdfe_set_notch1(uint8_t en,uint8_t alpha,int8_t nrmfc);


void rfc_sg_start(uint32_t inc_step,uint32_t gain_i,uint32_t gain_q,uint32_t addr_i,uint32_t addr_q) {
    RF->singen_ctrl0.singen_en = 0;
    RF->singen_ctrl0.singen_inc_step0 = inc_step;
    RF->singen_ctrl0.singen_clkdiv_n = 0; // work clock
    RF->singen_ctrl1.singen_mode_i = RFC_SG_SINGLE_TONE;  // 0: single tone, 1: two tone, 2: ramp
    RF->singen_ctrl1.singen_mode_q = RFC_SG_SINGLE_TONE;  // 0: single tone, 1: two tone, 2: ramp
    
    RF->singen_ctrl2.singen_gain_i = gain_i;
    RF->singen_ctrl3.singen_gain_q = gain_q;
    
    RF->singen_ctrl2.singen_start_addr0_i = addr_i;
    RF->singen_ctrl3.singen_start_addr0_q = addr_q;
    
	RF->singen_ctrl0.singen_en = 1;
}

void rfc_sg_stop() {
    RF->singen_ctrl0.singen_en = 0;
}

uint32_t rfc_pm_start(uint32_t insel,int32_t freq_cw,uint32_t acclen,uint32_t rshiftlen,
                     int32_t *raw_acc_i,int32_t *raw_acc_q) {

    // turn off and configure power meter
    RF->dfe_ctrl_6.rx_pm_en = 0;

    RF->dfe_ctrl_7.rx_pm_start_ofs = 1024;

    RF->dfe_ctrl_7.rx_pm_acc_len = acclen;
    RF->dfe_ctrl_6.rx_pm_freqshift_en = (freq_cw != 0);
    RF->dfe_ctrl_6.rx_pm_freqshift_cw = freq_cw;
    
    RF->dfe_ctrl_6.rx_pm_in_sel = insel;
    RF->dfe_ctrl_6.rx_pm_en = 1;

    wait_us(100);

    int32_t iqacc_i = RF->dfe_ctrl_8.rx_pm_iqacc_i; // 25BIT
    int32_t iqacc_q = RF->dfe_ctrl_9.rx_pm_iqacc_q; // 25BIT
    iqacc_i = iqacc_i << 7 >> 7;
    iqacc_q = iqacc_q << 7 >> 7;

    if (raw_acc_i) {
        *raw_acc_i = iqacc_i;
    }
    if (raw_acc_q) {
        *raw_acc_q = iqacc_q;
    }

    iqacc_i = iqacc_i >> rshiftlen;
    iqacc_q = iqacc_q >> rshiftlen;

    uint64_t pwr64 = (int64_t)iqacc_i * (int64_t)iqacc_i + (int64_t)iqacc_q * (int64_t)iqacc_q;
    
    if ((pwr64 >> 32) != 0) {
        printf(prefix "overflow occurred\r\n");
    }
    
    return (uint32_t)(pwr64 & 0xffffffff);
}

void rfc_pm_stop() {
    RF->dfe_ctrl_6.rx_pm_en = 0;
    RF->dfe_ctrl_6.rx_pm_freqshift_en = 0;
}

void rfc_hwctrl_txrfgain(uint8_t hwctrl_on) {
    RF->rfctrl_hw_en.tx_gain_ctrl_hw = hwctrl_on;
}

void rfc_hwctrl_rxgain(uint8_t hwctrl_on) {
    RF->rfctrl_hw_en.rx_gain_ctrl_hw = hwctrl_on;
}

void rfc_hwctrl_txdvga(uint8_t hwctrl_on) {
    RF->dfe_ctrl_0.tx_dvga_gain_ctrl_hw = hwctrl_on;
}

void rfc_hwctrl_calparam(uint8_t hwctrl_on) {
    RF->rfctrl_hw_en.trxcal_ctrl_hw = hwctrl_on;
}

void rfc_fsm_force(uint8_t state) {
    if (state != RFC_FSM_FORCE_OFF) {
        RF->rf_fsm_ctrl2.rf_fsm_st_dbg = state;
        wait_us(20);
        RF->rf_fsm_ctrl2.rf_fsm_st_dbg_en = 1;
    } else {
        RF->rf_fsm_ctrl2.rf_fsm_st_dbg_en = 0;
    }
}

void rfc_rc_fsm_force(uint8_t state) {
    if (state == RFC_FSM_FORCE_OFF) {
        RF->rf_fsm_ctrl_hw.rf_rc_state_dbg = 0;
        wait_us(20);
        RF->rf_fsm_ctrl_hw.rf_rc_state_dbg_en = 0;
    } else {
        RF->rf_fsm_ctrl_hw.rf_rc_state_dbg = state;
        wait_us(20);
        RF->rf_fsm_ctrl_hw.rf_rc_state_dbg_en = 1;
    }
}

void rfc_coex_force_to(uint32_t force_enable, uint32_t bbmode) {
    // reset rf_fsm, fpga_fsm, state_cci
    RF->rf_fsm_ctrl_hw.rf_fsm_ctrl_en = 0;

    wait_us(10);

    // force coex
    RF->rfif_dfe_ctrl0.bbmode_4s = bbmode;
    RF->rfif_dfe_ctrl0.bbmode_4s_en = force_enable ? 1 : 0;
    
    wait_us(10);
    
    // start fsm
    RF->rf_fsm_ctrl_hw.rf_fsm_ctrl_en = 1;
}

void rfc_dump() {
    struct rfc_status_tag *p_test_read;
    uint32_t test_read[2];
    static char* rc_state_str[8] = {
        "RC_IDLE",
        "RC_RX2ON",
        "RC_TX2ON",
        "RC_RXON",
        "RC_TX2PAON",
        "RC_TXPAON",
        "UNKNOWN",
        "UNKNOWN"
    };
    static char* rf_state_str[8] = {
        "RF_PD",
        "RF_SB",
        "RF_LO",
        "RF_RX",
        "RF_TX",
        "RF_T2RI",
        "RF_R2T",
        "RF_MS"
    };


    RF->rfif_dfe_ctrl0.test_sel = 1;
    test_read[0] = RF->rfif_test_read.value;

    RF->rfif_dfe_ctrl0.test_sel = 2;
    test_read[1] = RF->rfif_test_read.value;

    p_test_read = (struct rfc_status_tag*)test_read;

    printf("******************************** [RFC DUMP START] *****************************\r\n");
    printf("  rc_state      : %s\r\n", rc_state_str[p_test_read->rf_rc_state]);
    printf("  rf_state      : %s\r\n", rf_state_str[p_test_read->rf_fsm_state]);
    printf("  fsm_pu_lna    : %d\r\n", p_test_read->fsm_pu_lna   );
    printf("  fsm_pu_rmxgm  : %d\r\n", p_test_read->fsm_pu_rmxgm );
    printf("  fsm_pu_rmx    : %d\r\n", p_test_read->fsm_pu_rmx   );
    printf("  fsm_pu_rbb    : %d\r\n", p_test_read->fsm_pu_rbb   );
    printf("  fsm_pu_pkdet  : %d\r\n", p_test_read->fsm_pu_pkdet );
    printf("  fsm_pu_adc    : %d\r\n", p_test_read->fsm_pu_adc   );
    printf("  fsm_trsw_en   : %d\r\n", p_test_read->fsm_trsw_en  );
    printf("  fsm_pu_dac    : %d\r\n", p_test_read->fsm_pu_dac   );
    printf("  fsm_pu_tosdac : %d\r\n", p_test_read->fsm_pu_tosdac);
    printf("  fsm_pu_rxbuf  : %d\r\n", p_test_read->fsm_pu_rxbuf );
    printf("  fsm_pu_txbuf  : %d\r\n", p_test_read->fsm_pu_txbuf );
    
    printf("\r\n\r\n");
    printf("  tx_gain_ctrl_hw : %ld\r\n", RF->rfctrl_hw_en.tx_gain_ctrl_hw);
    printf("  rx_gain_ctrl_hw : %ld\r\n", RF->rfctrl_hw_en.rx_gain_ctrl_hw);
    printf("  trxcal_ctrl_hw  : %ld\r\n", RF->rfctrl_hw_en.trxcal_ctrl_hw);
    printf("  lo_ctrl_hw      : %ld\r\n", RF->rfctrl_hw_en.lo_ctrl_hw);
    printf("  lna_ctrl_hw     : %ld\r\n", RF->rfctrl_hw_en.lna_ctrl_hw);
    printf("  pu_ctrl_hw      : %ld\r\n", RF->rfctrl_hw_en.pu_ctrl_hw);

    printf("\r\n\r\n");
    printf("  rf_lo_vco_freq_cw_hw : %ld\r\n", RF->vco1.lo_vco_freq_cw_hw);
    printf("  rf_lo_vco_idac_cw_hw : %ld\r\n", RF->vco1.lo_vco_idac_cw_hw);
    printf("  rf_lo_sdmin_hw       : %ld\r\n", RF->sdm3.lo_sdmin_hw);
    printf("  rf_ch_ind_wifi       : %ld\r\n", RF->rf_fsm_ctrl0.rf_ch_ind_wifi);


    if (RF->rf_fsm_ctrl_sw.lo_unlocked) {
        printf("rf_lo_unlocked_getf = 1\r\n");
        printf("rf_lo_unlocked_getf (after csd reset) = ");
        for (int i = 0; i < 8; i++) {
            RF->pfdcp.lo_pfd_rst_csd = 1;
            wait_us(10);
            RF->pfdcp.lo_pfd_rst_csd = 0;
            wait_us(10);
            printf("%ld", RF->rf_fsm_ctrl_sw.lo_unlocked);
        }
        printf("\r\n");
    }
    else {
        printf("rf_lo_unlocked_getf = 0\r\n");
    }

    printf("******************************** [RFC DUMP END]   *****************************\r\n");

}

_Bool rfc_config_power_ble(int32_t pwr_dbm) {
    int i2 = 0;
    if ((uint32_t)pwr_dbm < 16) {
        if (pwr_dbm < 4) {
            RF->pa1.pa_ib_fix = 1;
            RF->pa1.pa_half_on = 1;
            RF->pa1.pa_vbcas = 4;
            RF->pa1.pa_vbcore = 9;
            RF->pa1.pa_etb_en = 0; // weird, this 9 will always be 0
            RF->tmx.tmx_cs = 5;
            RF->trx_gain1.gc_tbb = 2;
            RF->trx_gain1.gc_tmx = 5;
            i2 = pwr_dbm * 4 - 18;
        } else {
            if (pwr_dbm < 7) {
                RF->pa1.pa_ib_fix = 1;
                RF->pa1.pa_half_on = 1;
                RF->pa1.pa_vbcas = 4;
                RF->pa1.pa_vbcore = 9;
                RF->pa1.pa_etb_en = 0; // weird, this 9 will always be 0
                RF->tmx.tmx_cs = 5;
                RF->trx_gain1.gc_tbb = 2;
                RF->trx_gain1.gc_tmx = 7;
                i2 = pwr_dbm * 4 - 30;
            } else {
                if (pwr_dbm < 10) {
                    RF->pa1.pa_ib_fix = 1;
                    RF->pa1.pa_half_on = 1;
                    RF->pa1.pa_vbcas = 4;

                    RF->pa1.pa_vbcore = 9;
                    RF->pa1.pa_etb_en = 0; // weird, this 9 will always be 0
                    
                    RF->tmx.tmx_cs = 5;
                    RF->trx_gain1.gc_tbb = 3;
                    RF->trx_gain1.gc_tmx = 7;
                    i2 = pwr_dbm - 10;
                } else {
                    if (pwr_dbm < 12) { 
                        RF->pa1.pa_ib_fix = 1;
                        RF->pa1.pa_half_on = 1;
                        RF->pa1.pa_vbcas = 4;

                        RF->pa1.pa_vbcore = 9;
                        RF->pa1.pa_etb_en = 0; // weird, this 9 will always be 0
                        
                        RF->tmx.tmx_cs = 5;
                        RF->trx_gain1.gc_tbb = 4;
                        RF->trx_gain1.gc_tmx = 7;
                        i2 = pwr_dbm - 12;
                    } else {
                        RF->pa1.pa_ib_fix = 1;
                        RF->pa1.pa_half_on = 1;
                        RF->pa1.pa_vbcas = 4;

                        RF->pa1.pa_vbcore = 9;
                        RF->pa1.pa_etb_en = 0; // weird, this 9 will always be 0
                        
                        RF->tmx.tmx_cs = 5;
                        RF->trx_gain1.gc_tbb = 6;
                        RF->trx_gain1.gc_tmx = 7;
                        i2 = pwr_dbm - 15;
                    }
                }
                i2 = i2 << 2;
            }
        }
        uint32_t u2 = i2 - 1;
        RF->dfe_ctrl_18.tx_dvga_gain_qdb_ble_gc0 = u2 & 0x7f;
        RF->dfe_ctrl_18.tx_dvga_gain_qdb_ble_gc1 = u2 & 0x7f;
        RF->dfe_ctrl_18.tx_dvga_gain_qdb_ble_gc2 = u2 & 0x7f;
    }
    return 0;
}




static void _set_rfc(uint32_t xtalfreq_hz) {
    xtalfreq_MHz = xtalfreq_hz / 1000000;
    float xtal_MHz = xtalfreq_hz / 1000000;
    uint32_t lo_center_freq_mhz;
    /// _calc_sdm_params
    if (xtalfreq_hz == 40000000) {
        lo_center_freq_mhz = 2430.0;
    } else {
        lo_center_freq_mhz = 2448.0;
    }
    RF->lo_sdm_ctrl_hw5.lo_center_freq_mhz = lo_center_freq_mhz; //???
    uint32_t lo_sdmin_center = _calc_sdm_cw(xtal_MHz, lo_center_freq_mhz);
    uint32_t lo_sdmin_1m = _calc_sdm_cw(xtal_MHz, 1.0);
    uint32_t lo_sdmin_if = _calc_sdm_cw(xtal_MHz, 1.25);
    RF->lo_sdm_ctrl_hw6.lo_sdmin_center = lo_sdmin_center;
    RF->lo_sdm_ctrl_hw7.lo_sdmin_1m = lo_sdmin_1m;
    RF->lo_sdm_ctrl_hw8.lo_sdmin_if = lo_sdmin_if;

    union {
        uint8_t seq[2][2];
        uint32_t val;
    } lo_cw = {.val = 0};
    volatile uint32_t *ptr = (volatile uint32_t *)&(RF->lo_cal_ctrl_hw1);
    for (int freq = 2404, i = 0; freq <= 2484; freq += 4, i += 1) {
        int freq_cw = rf_pri_get_vco_freq_cw(freq);
        int idac_cw = rf_pri_get_vco_idac_cw(freq);
        if (freq == 2404) freq_cw += 1;
        lo_cw.seq[i&1][0] = idac_cw;
        lo_cw.seq[i&1][1] = freq_cw;
        if ((freq == 2484) || (i&1)) {
            *ptr = lo_cw.val;
            lo_cw.val = 0;
            ptr++;
        }
    }

    _sync_tx_power_offset();
    
    // configure rf_fsm related params
    RF->rf_fsm_ctrl_hw.rf_rc_state_dbg_en = 0;
    RF->rf_fsm_ctrl2.rf_fsm_st_dbg_en = 0;
    RF->rf_fsm_ctrl1.rf_fsm_lo_time = 0x1040;
    RF->rf_fsm_ctrl_hw.rf_fsm_ctrl_en = 1;

    // configure tx gain control
    RF->rfctrl_hw_en.tx_gain_ctrl_hw = 1;
    RF->dfe_ctrl_0.tx_dvga_gain_ctrl_hw = 1;
    RF->dfe_ctrl_0.tx_dvga_gain_qdb = 0;

    // configure rf compensation paramas
    // turn off trxcal if ROSDAC table changes vs gain to prevent pkdet false triggers 
    // caused by the transient response of ROSDAC 
    RF->rfctrl_hw_en.trxcal_ctrl_hw = 1;

    // configure rx gain control
    RF->rfctrl_hw_en.rx_gain_ctrl_hw = 1;

}

static void _set_mdm() {
    AGC->rc218.txhbf20coeffsel = 0;
    MDM->r3030 = 0;
    MDM->r3034 = 0xa027f7f;
    MDM->r3038 = 0x23282317;
    MDM->r303c = 0x7f020a17;
    MDM->r3040 = 0x7f;
}





static void wait_us(uint32_t us)
{
    volatile uint32_t n;
    us = (us >= (1<<24)-1) ? (1<<24)-1 : us;
    // if (us < 2) {
    //     return;
    // }
    // else 
    {
        n = us << 4;
        while(n--);
    }
}

__attribute__((unused)) static void wait_ms(uint32_t ms)
{
    wait_us(1000*ms);
}

static void _set_rfc_powercontrol(uint32_t pc_mode) {
    RF->pa1.pa_ib_fix = 0;
    RF->tmx.tmx_cs = 6;
    switch (pc_mode) {
    case RFC_PC_AUTO:
        RF->pa_reg_ctrl_hw2.pa_vbcore_11b = 0xf;
        RF->pa_reg_ctrl_hw1.pa_vbcore_11n = 0xa;
        RF->pa_reg_ctrl_hw2.pa_vbcore_11g = 0xa;
        
        RF->pa_reg_ctrl_hw2.pa_vbcas_11b = 5;
        RF->pa_reg_ctrl_hw1.pa_vbcas_11n = 5;
        RF->pa_reg_ctrl_hw2.pa_vbcas_11g = 5;
        
        RF->pa_reg_ctrl_hw2.pa_iet_11b = 7;
        RF->pa_reg_ctrl_hw1.pa_iet_11n = 5;
        RF->pa_reg_ctrl_hw2.pa_iet_11g = 5;
    case RFC_PC_WLAN_11B:
    case RFC_PC_BT_BLE:
        RF->pa1.pa_vbcore = 0xf;
        RF->pa1.pa_vbcas = 5;
        RF->pa1.pa_iet = 7;
        break;
    case RFC_PC_WLAN_11N:
    case RFC_PC_WLAN_11G:
        RF->pa1.pa_vbcore = 0xa;
        RF->pa1.pa_vbcas = 5;
        RF->pa1.pa_iet = 5;
        break;
    }
    RF->trx_gain1.gc_tbb_boost = 0;
    RF->trx_gain1.gc_tbb = 6;
    RF->trx_gain1.gc_tmx = 5;
    RF->adda1.dac_bias_sel = 1;
}

static void _set_rf_channel_sw(uint32_t channel_freq) {   
    uint32_t sdmin = (uint32_t)(channel_freq*4.0/3/xtalfreq_MHz*(1<<22));

    RF->rfctrl_hw_en.lo_ctrl_hw = 0;
    RF->rfctrl_hw_en.sdm_ctrl_hw = 0;
    RF->pucr1.pu_vco = 1;
    RF->pucr1.pu_fbdv = 1;
    RF->pucr1.pu_pfd = 1;
    RF->pucr1.pu_osmx = 1;
    RF->rfctrl_hw_en.pu_ctrl_hw = 0;
    
    // set channel
    // rf_lo_fbdv_halfstep_en_setf(1);
    RF->vco1.lo_vco_freq_cw = rf_pri_get_vco_freq_cw(channel_freq);
    RF->vco1.lo_vco_idac_cw = rf_pri_get_vco_idac_cw(channel_freq);
    RF->lodist.lo_osmx_cap = rf_pri_get_vco_freq_cw(channel_freq) >> 4;

    RF->sdm2.lo_sdmin = sdmin;
    RF->sdm1.lo_sdm_bypass = 0;

    // wait channel lock
    do {
        RF->fbdv.lo_fbdv_rst = 1;
        wait_us(10);
        RF->fbdv.lo_fbdv_rst = 0;
        wait_us(50);
        RF->pfdcp.lo_pfd_rst_csd = 1;
        wait_us(10);
        RF->pfdcp.lo_pfd_rst_csd = 0;
        wait_us(50);
    } while (0);
}