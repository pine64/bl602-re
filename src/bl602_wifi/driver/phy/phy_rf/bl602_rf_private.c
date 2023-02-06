#include <phy_rf/bl602_rf_private.h>
#include <utils.h>
#include <phy_rf/bl602_rf_calib_data.h>
#include <phy_rf/rfc_bl602.h>

#include <stdint.h>

#include <soc/rf.h>
#include <soc/AON.h>
#include <soc/HBN.h>
#include <soc/pds.h>

#define kHz *1000
#define MHz *1000*1000
#define NUM_CHANNELS        (21)
#define NUM_WIFI_CHANNELS   (14)

static uint32_t channel_div_table[21] = {
    0x14088889, 0x14111111, 0x1419999A, 0x14222222,
    0x142AAAAB, 0x14333333, 0x143BBBBC, 0x14444444,
    0x144CCCCD, 0x14555555, 0x145DDDDE, 0x14666666,
    0x146EEEEF, 0x14777777, 0x14800000, 0x14888889,
    0x14911111, 0x1499999A, 0x14A22222, 0x14AAAAAB,
    0x14B33333
};

static uint16_t channel_cnt_table[21] = {
    0xA6EB, 0xA732, 0xA779, 0xA7C0,
    0xA808, 0xA84F, 0xA896, 0xA8DD,
    0xA924, 0xA96B, 0xA9B2, 0xA9F9,
    0xAA40, 0xAA87, 0xAACF, 0xAB16,
    0xAB5D, 0xABA4, 0xABEB, 0xAC32,
    0xAC79
};

static uint16_t fcal_div = 0x855;

static tx_pwr_index data;
tx_pwr_index* tp_index = &data;

void rf_pri_config_bandwidth(uint32_t bw) {
    RF->rbb3.rbb_bw = bw;
}

static uint16_t channel_cnt_range[3] = {
     0xA6A0, 0xA6E0, 0xACE0
};

static uint16_t channel_cw_table[21];
static uint16_t channel_cnt_opt_table[40];

// meas = measure?
uint16_t rf_pri_fcal_meas(uint32_t cw) {
    RF->vco1.lo_vco_freq_cw = cw;
    BL602_Delay_US(100);
    RF->vco4.fcal_cnt_start = 1;
    do {
        if (RF->vco4.fcal_cnt_rdy) break;
    } while (1);
    uint16_t fcal_meas = RF->vco3.fcal_cnt_op;
    RF->vco4.fcal_cnt_start = 0;
    return fcal_meas;
}

typedef struct {
#define RF_PRI_SAVE(field) uint32_t field;
#include "rf_private_save.h"
} rf_state_save_t;

static rf_state_save_t rf_state;

static void rf_pri_save_state_for_cal() {
#define RF_PRI_SAVE(field) rf_state.field = RF->field.value;
#include "rf_private_save.h"
}


static void rf_pri_restore_state_for_cal() {
#define RF_PRI_SAVE(field) RF->field.value = rf_state.field;
#include "rf_private_save.h"
}

#include <macro.h>
#define mapper0(x) new_pucr1.x = 0;
#define mapper1(x) new_pucr1.x = 1;
#define P_CLR(...) APPLY(mapper0, __VA_ARGS__) 
#define P_SET(...) APPLY(mapper1, __VA_ARGS__) 

static void rf_pri_manu_pu(uint32_t mode) {
    RF->rf_fsm_ctrl_hw.rf_fsm_ctrl_en = 0;
    RF->rfctrl_hw_en.value = 0;
    
    __typeof__  (((rf_regs* )(RF_BASE))->pucr1) new_pucr1 = RF->pucr1;
    
    switch (mode) {
        case E_RF_MODE_RCCAL:
            P_CLR(pu_lna, pu_rmxgm, pu_rmx, pu_pkdet, 
                pu_pwrmx, pu_pa, pu_tmx, pu_tbb, 
                pu_rxbuf, pu_txbuf, pu_tosdac);
            P_SET(pu_osmx, pu_pfd, pu_fbdv, pu_vco, 
                pu_rbb, pu_adc, adc_clk_en, pu_rosdac, 
                pu_dac, trsw_en);
            break;
        case E_RF_MODE_TXCAL:
            P_CLR(pu_lna, pu_rmxgm, pu_rmx, pu_pkdet, pu_rosdac, pu_rxbuf);
            P_SET(pu_txbuf, trsw_en, pu_tosdac, pu_osmx, 
                pu_pfd, pu_fbdv, pu_vco, pu_rbb, 
                pu_adc, adc_clk_en, pu_pwrmx, pu_pa, 
                pu_tmx, pu_tbb, pu_dac);
            break;

        case E_RF_MODE_LO_ACAL:
        case E_RF_MODE_LO_FCAL:
            P_CLR(pu_lna, pu_rmxgm, pu_rmx, pu_tosdac,
                pu_rbb, pu_adc, adc_clk_en, pu_pkdet,
                pu_rosdac ,pu_pwrmx, pu_pa, pu_tmx,
                pu_tbb,pu_dac,pu_rxbuf,pu_txbuf,
                trsw_en);
            P_SET(pu_osmx, pu_pfd, pu_fbdv, pu_vco);
        break;
        // in the leak code, this function treat 
        // 0...2 + default cases with the same code as 6...7 code
        // however, in the binary, it uses the same logic
        // as case 3 for 0...2 + default cases
        // this branch should never touched unless mode == 3
        // so the 0...2 and default should never be used.
        // that is why an error is added here.
        default:
        case E_RF_MODE_IDLE ... E_RF_MODE_RX:
            printf("unexpected values for rf_pri_manu_pu\r\n");
        case E_RF_MODE_ROSCAL:
            P_CLR(pu_lna, pu_pkdet, pu_pwrmx, pu_pa,
                pu_tmx, pu_tbb, pu_dac, pu_txbuf,
                pu_tosdac);
            P_SET(pu_osmx, pu_pfd, pu_fbdv, pu_vco, 
                pu_rmxgm, pu_rmx, pu_rbb, pu_adc, 
                adc_clk_en, pu_rxbuf, trsw_en, pu_rosdac);
            break;
    }
    RF->pucr1  = new_pucr1;
}

static void rf_pri_config_mode(uint32_t mode) {
    rf_pri_manu_pu(mode);
}

#undef P_SET
#undef P_CLR
#undef mapper0
#undef mapper1


void rf_pri_fcal(void) {
    RF->rfcal_status.fcal_status = 0x1;
    
    rf_pri_save_state_for_cal(); // TBI
    rf_pri_config_mode(E_RF_MODE_LO_FCAL); // TBI

    RF->rfcal_ctrlen.fcal_en = 1;

    RF->vco1.lo_vco_freq_cw = 0x80;
    RF->fbdv.lo_fbdv_sel_fb_clk = 0;
    RF->vco3.fcal_div = fcal_div;
    // frequency counter counts # RF periods within a counter 
    // clock cycle fcal_div is a divider for the counter clock.

    RF->sdm2.value = 0x1000000;
    RF->sdm1.lo_sdm_bypass = 1;
    
    RF->sdm1.lo_sdm_rstb = 0;
    RF->fbdv.lo_fbdv_rst = 1;
    
    BL602_Delay_US(10);

    RF->sdm1.lo_sdm_rstb = 1;
    RF->fbdv.lo_fbdv_rst = 0;

    BL602_Delay_US(50);

    RF->vco2.lo_vco_vbias_cw = 2;

    BL602_Delay_US(50);

    uint16_t c0 = (uint16_t)channel_cnt_range[0];
    uint16_t c1 = (uint32_t)channel_cnt_range[1];
    uint16_t c2 = (uint16_t)channel_cnt_range[2];

    uint16_t cw = 0x80;
    while (1) {
        for (int j = 6; j >= 0; j--) {
            int cnt = rf_pri_fcal_meas(cw);
            if (cnt < c0) {
                cw -= (1 << j);
            } else {
                if (cnt > c1) {
                    cw += (1 << j);
                } else break;
            }
        }

        if (cw >= 15) 
            break;
        
        printf("Unexpected cw %ld\r\n", cw);
        cw = 0x80;
        /// reset
        RF->sdm1.lo_sdm_rstb = 0;
        RF->fbdv.lo_fbdv_rst = 1;
        BL602_Delay_US(0x32);
        RF->sdm1.lo_sdm_rstb = 1;
        RF->fbdv.lo_fbdv_rst = 0;
        BL602_Delay_US(0x32);
    }
    cw++;
    channel_cnt_opt_table[0] = rf_pri_fcal_meas(cw);
    for (int i = 1; i < 40; i++) {
        uint16_t cnt = rf_pri_fcal_meas(cw-i);
        channel_cnt_opt_table[i] = cnt;
        if (cnt > c2) break;
    }

    for (int i = 0, j = 0; i < 21; i++) {
        while (channel_cnt_opt_table[j] < channel_cnt_table[i]) j++;
        channel_cw_table[i] = cw - (j - 1); /// hmmm what if j = 0?
        /// or it can't because cw was + 1..
        if (j > 0) j--;
    }

    rf_pri_restore_state_for_cal();

    for (int i = 0; i < 21; i++) {
        rf_calib_data->lo[i].fcal = channel_cw_table[i];
        printf("%ldth channel,lo_vco_freq_cw=%ld\r\n", i + 1, (uint32_t)(channel_cw_table[i]));
    }

    RF->rfcal_status.fcal_status = 3; // 0b11
}

void rf_pri_start_rxdfe() {
    PACK(RF->rfif_dfe_ctrl0, rfif_dfe_ctrl0) {
        rfif_dfe_ctrl0.rx_dfe_en_4s_en = 0;
        rfif_dfe_ctrl0.rx_dfe_en_4s = 0;
    }

    PACK(RF->rfif_dfe_ctrl0, rfif_dfe_ctrl0) {
        rfif_dfe_ctrl0.rfckg_rxclk_4s_on = 1;
        rfif_dfe_ctrl0.rx_dfe_en_4s = 1;
        rfif_dfe_ctrl0.rx_dfe_en_4s_en = 1;
    }
}

// TODO: verify me
void rf_pri_start_txdfe() {
    PACK(RF->rfif_dfe_ctrl0, rfif_dfe_ctrl0) {
        rfif_dfe_ctrl0.tx_dfe_en_4s_en = 0;
        rfif_dfe_ctrl0.tx_dfe_en_4s = 0;
    }

    PACK(RF->rfif_dfe_ctrl0, rfif_dfe_ctrl0) {
        rfif_dfe_ctrl0.rfckg_txclk_4s_on = 1;
        rfif_dfe_ctrl0.tx_test_sel = 2;
        rfif_dfe_ctrl0.tx_dfe_en_4s = 1;
    }
    
    RF->rfif_dfe_ctrl0.tx_dfe_en_4s_en = 1;
}

static void rf_pri_config_channel(uint32_t channel_index) {
    // sdm = sigma-delta modulator ?
    printf("lo_vco_freq[%d] = %d, %d\n", channel_index, rf_calib_data->lo[channel_index].fcal, rf_calib_data->lo[channel_index].acal);
    PACK(RF->vco1, vco1) {
        vco1.lo_vco_freq_cw = rf_calib_data->lo[channel_index].fcal;
        vco1.lo_vco_idac_cw = rf_calib_data->lo[channel_index].acal;
    }
    RF->lodist.lo_osmx_cap = rf_calib_data->lo[channel_index].fcal >> 4;
    RF->sdm2.lo_sdmin = channel_div_table[channel_index];
    RF->sdm1.lo_sdm_bypass = 0;
    
    while (1) {
        RF->fbdv.lo_fbdv_rst = 1;
        BL602_Delay_US(10);
        
        RF->fbdv.lo_fbdv_rst = 0;
        BL602_Delay_US(50);
        
        RF->pfdcp.lo_pfd_rst_csd = 1;
        BL602_Delay_US(10);
        
        RF->pfdcp.lo_pfd_rst_csd = 0;
        BL602_Delay_US(50);
        
        __typeof__ (((rf_regs* )(RF_BASE))->lo) mylo = RF->lo;
        
        if (mylo.lo_slipped_dn || mylo.lo_slipped_up) {
            printf(".");
        } else {
            printf("LO locked %ld %ld\r\n", channel_index, (uint32_t)rf_calib_data->lo[channel_index].fcal);
            break;
        }
    }
}

static int32_t rf_pri_pm_pwr_avg(uint32_t iq, uint32_t acc_len) {
    PACK(RF->dfe_ctrl_6, dfe_ctrl_6) {
        RF->dfe_ctrl_6.rx_pm_en = 0;
        RF->dfe_ctrl_6.rx_pm_freqshift_en = 0;
    }
    //RF->dfe_ctrl_6.value &= 0xdfefffff;
    RF->dfe_ctrl_7.rx_pm_acc_len = acc_len;

    RF->dfe_ctrl_6.rx_pm_en = 1;

    for (; !(RF->dfe_ctrl_6.rx_pm_done););

    int32_t iqacc = 0;
    if (iq) {
        // iq = 1 => i
        iqacc = RF->dfe_ctrl_8.rx_pm_iqacc_i;
    } else {
        // iq = 0 => q
        iqacc = RF->dfe_ctrl_9.rx_pm_iqacc_q;
    }
    iqacc = (iqacc << 7) >> 7;
    //RF->dfe_ctrl_6.value &= 0xdfefffff;
    PACK(RF->dfe_ctrl_6, dfe_ctrl_6) {
        RF->dfe_ctrl_6.rx_pm_en = 0;
        RF->dfe_ctrl_6.rx_pm_freqshift_en = 0;
    }
    return iqacc;
}

static void rf_pri_roscal_config(uint32_t iq,uint32_t rosdac) {
    uint32_t tmpVal = 0;
    if (iq) {
        RF->rbb1.rosdac_i = rosdac;
    } else {
        RF->rbb1.rosdac_q = rosdac;
    }
}

static uint32_t rf_pri_roscal_iq(uint32_t iq, uint32_t sram_start_addr, uint32_t length) {
    uint32_t rosdac = 0;
    for (int i = 5; i >= 0; i--) {
        uint32_t uvar7 = rosdac + (1 << i);
        rf_pri_roscal_config(iq, uvar7);
        if (rf_pri_pm_pwr_avg(iq, 1024) < 1) // leak code says <= 0?
            rosdac = uvar7;
    }

    uint8_t seq_pattern = 0;

    for (int i = 0; i < 63; i++) {
        rf_pri_roscal_config(iq, rosdac);
        int32_t pwr = rf_pri_pm_pwr_avg(iq, 1024);
        if (pwr < 1) {
            seq_pattern = (seq_pattern << 1) & 0xf;
            rosdac++;
        } else {
            seq_pattern = ((seq_pattern << 1) + 1) & 0xf;
            rosdac--;
        }
        if ((seq_pattern == 0b1010) || (seq_pattern == 0b0101)) 
            break;
    }

    return rosdac;
}

void rf_pri_roscal() {
    if (RF->rfcal_stateen.roscal_sten == 0) {
        RF->rfcal_status.ros_status = 0;
        return ;
    }

    RF->rfcal_status.ros_status = 1;
    // td
    rf_pri_save_state_for_cal();
    rf_pri_config_mode(E_RF_MODE_ROSCAL);
    RF->rfcal_ctrlen.roscal_en = 1;

    rf_pri_config_channel(3); // in the leak source the value here is 9.
    
    RF->trx_gain1.gc_rbb2 = 6;
    RF->trx_gain1.gc_rbb1 = 3;

    uint32_t rosdac = rf_pri_roscal_iq(1, 0 /* unused */, 0 /* unused */);

    rf_calib_data->rxcal[3].rosdac_i = rosdac;

    RF->rosdac_ctrl_hw2.rosdac_i_gc3 = rosdac;
    printf("rosdac_i_gc3=%ld\r\n", rosdac);

    rf_calib_data->rxcal[2].rosdac_i = rosdac;
    
    RF->rosdac_ctrl_hw2.rosdac_i_gc2 = rosdac;
    printf("rosdac_i_gc2=%ld\r\n", rosdac);

    rf_calib_data->rxcal[1].rosdac_i = rosdac;

    RF->rosdac_ctrl_hw1.rosdac_i_gc1 = rosdac;
    printf("rosdac_i_gc1=%ld\r\n", rosdac);

    rf_calib_data->rxcal[0].rosdac_i = rosdac;
    
    RF->rosdac_ctrl_hw1.rosdac_i_gc0 = rosdac;
    printf("rosdac_i_gc0=%ld\r\n", rosdac);

    rosdac = rf_pri_roscal_iq(0, 0 /* unused */, 0 /* unused */);

    rf_calib_data->rxcal[3].rosdac_q = rosdac;

    RF->rosdac_ctrl_hw2.rosdac_q_gc3 = rosdac;
    printf("rosdac_q_gc3=%ld\r\n", rosdac);

    rf_calib_data->rxcal[2].rosdac_q = rosdac;
    
    RF->rosdac_ctrl_hw2.rosdac_q_gc2 = rosdac;
    printf("rosdac_q_gc2=%ld\r\n", rosdac);

    rf_calib_data->rxcal[1].rosdac_q = rosdac;

    RF->rosdac_ctrl_hw1.rosdac_q_gc1 = rosdac;
    printf("rosdac_q_gc1=%ld\r\n", rosdac);

    rf_calib_data->rxcal[0].rosdac_q = rosdac;
    
    RF->rosdac_ctrl_hw1.rosdac_q_gc0 = rosdac;
    printf("rosdac_q_gc0=%ld\r\n", rosdac);

    rf_pri_restore_state_for_cal();

    RF->rfcal_status.ros_status = 3;
}

void rf_pri_full_cal(void) {
    // dfe
    rf_pri_start_rxdfe();
    rf_pri_start_txdfe();
    rf_pri_fcal();
    rf_pri_lo_acal();
    rf_pri_roscal();
    rf_pri_rccal();
    rf_pri_txcal();

    PACK(RF->rfctrl_hw_en, rfctrl_hw_en) {
        rfctrl_hw_en.rx_gain_ctrl_hw = 1;
        rfctrl_hw_en.tx_gain_ctrl_hw = 1;
    }

    PACK(RF->rfif_dfe_ctrl0, rfif_dfe_ctrl0) { 
        rfif_dfe_ctrl0.rfckg_rxclk_4s_on = 0;
        rfif_dfe_ctrl0.rx_dfe_en_4s_en = 0;
        rfif_dfe_ctrl0.rx_dfe_en_4s = 0;
    }

    PACK(RF->rfif_dfe_ctrl0, rfif_dfe_ctrl0) {  
        rfif_dfe_ctrl0.rfckg_txclk_4s_on = 0;
        rfif_dfe_ctrl0.tx_dfe_en_4s_en = 0;
        rfif_dfe_ctrl0.tx_dfe_en_4s = 0;
        rfif_dfe_ctrl0.tx_test_sel = 0;
    }
}
static int32_t rx_notch_para[14][2] = {
    {0,0}, {0,0}, {0,0}, {0,0},
    {1,8 MHz},
    {1,3 MHz},
    {1,-2 MHz},
    {1,-7 MHz},
    {0,0}, {0,0}, {0,0}, {0,0},
    {1,8 MHz},
    {1,-4 MHz},
};

void rf_pri_get_notch_param(uint32_t chanfreq_MHz, uint8_t * ncf_on, int32_t * ncf_freq_Hz) {
    uint32_t channel_id;
    channel_id = 13;
    if (chanfreq_MHz < 2473) {
        channel_id = (chanfreq_MHz - 2412) / 5;
    }

    *ncf_on = (uint8_t)rx_notch_para[channel_id][0];
    *ncf_freq_Hz = rx_notch_para[channel_id][1];
}

uint32_t rf_pri_get_vco_freq_cw(uint32_t chanfreq_MHz) {
    int32_t a = (int32_t)((chanfreq_MHz-2404)/4 + 0.5);
    a = a < 0 ? 0 : a;
    if (a > NUM_CHANNELS - 1)
        a = NUM_CHANNELS - 1;
    return rf_calib_data->lo[a].fcal;
}

uint32_t rf_pri_get_vco_idac_cw(uint32_t chanfreq_MHz) {
    int32_t a = (int32_t)((chanfreq_MHz-2404)/4 + 0.5);
    a = a < 0 ? 0 : a;
    if (a > NUM_CHANNELS - 1)
        a = NUM_CHANNELS - 1;
    return rf_calib_data->lo[a].acal;
}

void rf_pri_lo_acal(void) {
    RF->rfcal_status.acal_status = 0x1;
    rf_pri_save_state_for_cal();
    rf_pri_config_mode(E_RF_MODE_LO_ACAL);

    for (int i = 0; i < 21; i++) {
        RF->rfcal_ctrlen.acal_en = 1;
        RF->vco2.acal_vref_cw = 4;
        RF->vco1.lo_vco_idac_cw = 0x10;
        RF->vco1.lo_vco_freq_cw = rf_calib_data->lo[i].fcal;
        RF->sdm2.lo_sdmin = channel_div_table[i];
        BL602_Delay_US(1);
        uint32_t cw = 0x10;
        for (int j = 3; j >= 0; j--) {
            RF->vco1.lo_vco_idac_cw = cw;
            BL602_Delay_US(1);
            if (RF->vco2.acal_vco_ud) {
                cw -= (1 << j);
            } else {
                cw += (1 << j);
            }
        }
        RF->vco1.lo_vco_idac_cw = cw;
        BL602_Delay_US(1);
        if (!RF->vco2.acal_vco_ud) {
            if (cw != (1<<5) - 1) {
                cw++;
            }
        }
        rf_calib_data->lo[i].acal = cw;
    }
    rf_pri_restore_state_for_cal();
    RF->rfcal_status.acal_status = 0x3;
}


static void rf_pri_rccal_config(uint32_t iq, uint32_t rbb_fc) {
    PACK(RF->rbb2, rbb2)
        if (iq) {
            // i
            rbb2.rbb_cap1_fc_i = rbb_fc;
            rbb2.rbb_cap2_fc_i = rbb_fc;
        } else {
            rbb2.rbb_cap1_fc_q = rbb_fc;
            rbb2.rbb_cap2_fc_q = rbb_fc;
        }
}


static void rf_pri_singen_config(uint32_t fcw, uint32_t start_addr_i, uint32_t start_addr_q) {
    RF->singen_ctrl0.singen_inc_step0 = fcw;
    RF->singen_ctrl2.singen_start_addr0_i = start_addr_i; // 0;
    RF->singen_ctrl3.singen_start_addr0_q = start_addr_q; // 0x300;
}

static void rf_pri_singen_start(void) {
    RF->singen_ctrl0.singen_en = 0;

    RF->singen_ctrl0.singen_en = 1;
}

static void rf_pri_singen_amplitude(uint32_t gain_i, uint32_t gain_q) {
    RF->singen_ctrl2.singen_gain_i = gain_i;
    RF->singen_ctrl3.singen_gain_q = gain_q;
}

static uint32_t rf_pri_pm_pwr() {
    PACK(RF->dfe_ctrl_6, dfe) {
        dfe.rx_pm_freqshift_en = 0;
        dfe.rx_pm_en = 0;
    }

    PACK(RF->dfe_ctrl_6, dfe) {
        dfe.rx_pm_freqshift_en = 1;
        dfe.rx_pm_en = 1;
    }

    for (; ! RF->dfe_ctrl_6.rx_pm_done; );

    int32_t pm_iacc = RF->dfe_ctrl_8.value;
    pm_iacc = (pm_iacc << 7) >> (7 + 9);

    int32_t pm_qacc = RF->dfe_ctrl_9.value;
    pm_qacc = (pm_qacc << 7) >> (7 + 9);

    
    PACK(RF->dfe_ctrl_6, dfe) {
        dfe.rx_pm_freqshift_en = 0;
        dfe.rx_pm_en = 0;
    }
    
    return pm_iacc * pm_iacc + pm_qacc * pm_qacc;
}


static uint32_t rf_pri_rccal_iq(uint32_t iq) {
    if (iq) {
        RF->dfe_ctrl_3.rx_adc_4s_q_en = 0;
        RF->dfe_ctrl_3.rx_adc_4s_i_en = 1;
    } else {
        RF->dfe_ctrl_3.rx_adc_4s_i_en = 0;
        RF->dfe_ctrl_3.rx_adc_4s_q_en = 1;
    }

    PACK(RF->trx_gain1, trx_gain1) {
        trx_gain1.gc_rbb1 = 1;
        trx_gain1.gc_rbb2 = 3;
    }

    int k1 = 3, k2 = 181;
    rf_pri_singen_config(k1, 0, 0x300);

    rf_pri_singen_amplitude(0x3ff, 0x3ff);

    rf_pri_singen_start();
    rf_pri_start_txdfe();
    RF->dfe_ctrl_6.rx_pm_freqshift_cw = k1 << 10;
    rf_pri_pm_pwr_avg(iq, 0x400);

    double rccal_power_scale = 0.9 * 0.9;
    uint32_t rccal_ref = (uint32_t)(rccal_power_scale * rf_pri_pm_pwr());

    
    PACK(RF->trx_gain1, trx_gain1) {
        trx_gain1.gc_rbb1 = 2;
        trx_gain1.gc_rbb2 = 6;
    }

    rf_pri_singen_config(k2, 0x0, 0x300);
    rf_pri_singen_start();
    rf_pri_start_txdfe();

    RF->dfe_ctrl_6.rx_pm_freqshift_cw = k2 << 10;

    uint32_t rbb_fc = 0;
    for (int i = 5; i >= 0; i--) {
        rf_pri_rccal_config(iq, rbb_fc + (1 << i));
        uint32_t rccal_val = rf_pri_pm_pwr();
        if (rccal_val > rccal_ref) {
            rbb_fc += (1 << i);
        }
    }
    
    uint8_t seq_pattern = 0;
    for (int i = 0; i < 63; i++) {
        rf_pri_rccal_config(iq, rbb_fc);
        uint32_t rccal_val = rf_pri_pm_pwr();
        if (rccal_ref < rccal_val) {
            seq_pattern = ((seq_pattern << 1) | 1) & 0xf;
            rbb_fc++;
        } else {
            seq_pattern = (seq_pattern << 1) & 0xf;
            rbb_fc--;
        }
        if ((seq_pattern == 0b0101) || (seq_pattern == 0b1010))
            return 3;
    }

    return 2;
}

// resistor-capacitor?
void rf_pri_rccal(void) {
    if (RF->rfcal_stateen.rccal_sten) {
        RF->rfcal_status.rccal_status = 0;
    } else {
        RF->rfcal_status.rccal_status = 1;
        rf_pri_save_state_for_cal();
        rf_pri_config_mode(E_RF_MODE_RCCAL);
        RF->rbb3.rbb_bw = 2;
        RF->adda1.dac_rccalsel = 1;
        RF->rfcal_ctrlen.rccal_en = 1;
        uint32_t i = rf_pri_rccal_iq(1);
        uint32_t q = rf_pri_rccal_iq(0);
        
        __typeof__ (RF->rbb2) data = RF->rbb2;
        
        rf_calib_data->cal.rbb_cap1_fc_i = data.rbb_cap1_fc_i;
        rf_calib_data->cal.rbb_cap1_fc_q = data.rbb_cap1_fc_q;
        rf_calib_data->cal.rbb_cap2_fc_i = data.rbb_cap2_fc_i;
        rf_calib_data->cal.rbb_cap2_fc_q = data.rbb_cap2_fc_q;

        printf("rbb_cap1_fc_i=%ld,rbb_cap2_fc_i=%ld,rbb_cap1_fc_q=%ld,rbb_cap2_fc_q=%ld\r\n",
            (uint32_t)(rf_calib_data->cal.rbb_cap1_fc_i),
            (uint32_t)(rf_calib_data->cal.rbb_cap2_fc_i),
            (uint32_t)(rf_calib_data->cal.rbb_cap1_fc_q),
            (uint32_t)(rf_calib_data->cal.rbb_cap2_fc_q));
        int32_t maxcw = MAX( MAX(rf_calib_data->cal.rbb_cap1_fc_i, rf_calib_data->cal.rbb_cap1_fc_q),
             MAX(rf_calib_data->cal.rbb_cap2_fc_i, rf_calib_data->cal.rbb_cap2_fc_q));
        //int32_t tgt_offset_cw = 24;
        //int32_t offset_cw = (max_cw + tgt_offset_cw) <= 63 ?  tgt_offset_cw : 63 - max_cw;
        int32_t offset_cw = 24;
        if (maxcw > 39)
            offset_cw = 63 - maxcw;
        rf_calib_data->cal.rbb_cap1_fc_i += offset_cw;
        rf_calib_data->cal.rbb_cap1_fc_q += offset_cw;
        rf_calib_data->cal.rbb_cap2_fc_i += offset_cw;
        rf_calib_data->cal.rbb_cap2_fc_q += offset_cw;

        rf_pri_rccal_config(1, rf_calib_data->cal.rbb_cap1_fc_i);
        rf_pri_rccal_config(0, rf_calib_data->cal.rbb_cap1_fc_q);
        
        printf("new rbb_cap1_fc_i=%ld,rbb_cap2_fc_i=%ld,rbb_cap1_fc_q=%ld,rbb_cap2_fc_q=%ld\r\n",
            (uint32_t)(rf_calib_data->cal.rbb_cap1_fc_i),
            (uint32_t)(rf_calib_data->cal.rbb_cap2_fc_i),
            (uint32_t)(rf_calib_data->cal.rbb_cap1_fc_q),
            (uint32_t)(rf_calib_data->cal.rbb_cap2_fc_q));

        rf_pri_restore_state_for_cal();

        if ((i == 2) || (q == 2)) {
            RF->rfcal_status.rccal_status = 2;
        } else {
            RF->rfcal_status.rccal_status = 3;
        }
    }
}

static uint32_t txcal_para[E_RF_TXCAL_GAIN_CNT][4];
static uint32_t txcal_para_a0[E_RF_TXCAL_GAIN_CNT][4] = {
    {  0,   2,   6, 256},
    {  0,   2,   1, 256},
    {  0,   2,   0, 304},
    {  0,   4,   0, 240},
    {  0,   4,   0, 304},
    {  0,   4,   0, 352},
    {  0,   4,   0, 416},
    {  0,   4,   0, 416}
};

static uint32_t txcal_para_a1[E_RF_TXCAL_GAIN_CNT][4] = {
    {  0,   2,  14, 256},
    {  0,   2,   5, 256},
    {  0,   2,   1, 256},
    {  0,   4,   2, 272},
    {  0,   4,   0, 224},
    {  0,   4,   0, 272},
    {  0,   4,   0, 288},
    {  0,   4,   0, 304}
};

static void rf_pri_config_txgain(uint32_t gc_tbb_boost, uint32_t gc_tmx, uint32_t gc_tbb) {
    PACK(RF->trx_gain1, value) {
        value.gc_tbb_boost = gc_tbb_boost;
        value.gc_tmx = gc_tmx;
        value.gc_tbb = gc_tbb;
    }
}

static int32_t tx_pwr_os = 0;                     // channel offset
static int32_t tx_pwr_os_temperature = 0;         // temperature offset

static int32_t tx_pwr_table[E_RF_TXPWR_TBL_CNT][7];
static int32_t tx_pwr_table_origin[E_RF_TXPWR_TBL_CNT][7];
static int32_t tx_pwr_table_a0[E_RF_TXPWR_TBL_CNT][7] = {
    // gain_ctrl_gc_tbb, gain_ctrl_gc_tmx, gain_ctrl_dac_bias_sel, gain_ctrl_gc_tbb_boost
    {0, 1, 7, 0x14, 32, 4, 233},
    {0, 1, 7, 0x14, 32, 0, 223},
    {0, 1, 7, 0xe, 32, 4, 212},
    {0, 1, 7, 0xe, 32, 0, 202},
    {0, 1, 7, 0xa, 32, 4 + 1, 188 + 3},
    {0, 1, 7, 0xa, 32, 0 + 1, 178 + 3},
    {0, 1, 7, 8, 32, 4 - 1, 173 - 3},
    {0, 1, 7, 8, 32, 0 - 1, 163 - 3},
    {0, 1, 7, 6, 32, 4 - 1, 153 - 3},
    {0, 1, 7, 6, 32, 0 - 1, 143 - 3},
    {0, 1, 6, 5, 32, 4 + 1, 129 + 3},
    {0, 1, 6, 5, 32, 0 + 1, 119 + 3},
    {0, 1, 6, 4, 32, 4 - 1, 114 - 3},
    {0, 1, 6, 4, 32, 0 - 1, 104 - 3},
    {0, 1, 5, 4, 32, 0, 91},
    {0, 1, 5, 4, 32, -4, 81},
};

static int32_t tx_pwr_table_a1[E_RF_TXPWR_TBL_CNT][7] = { 
    // gain_ctrl_gc_tbb, gain_ctrl_gc_tmx, gain_ctrl_dac_bias_sel, gain_ctrl_gc_tbb_boost
    {  0,   1,   7,  27,  32,  -4, 230},
    {  0,   1,   7,  27,  32,  -8, 220},
    {  0,   1,   7,  20,  32,  -4, 210},
    {  0,   1,   7,  20,  32,  -8, 200},
    {  0,   1,   7,  15,  32,  -4, 190},
    {  0,   1,   7,  15,  32,  -8, 180},
    {  0,   1,   7,  11,  32,  -4, 170},
    {  0,   1,   7,  11,  32,  -8, 160},
    {  0,   1,   6,  10,  32,  -4, 150},
    {  0,   1,   6,  10,  32,  -8, 140},
    {  0,   1,   6,   8,  32,  -5, 130},
    {  0,   1,   6,   8,  32,  -9, 120},
    {  0,   1,   5,   7,  32,  -4, 110},
    {  0,   1,   5,   7,  32,  -8, 100},
    {  0,   1,   4,   7,  32,  -5,  90},
    {  0,   1,   4,   7,  32,  -9,  80}
};

void rf_pri_query_txgain_table(uint32_t index, uint32_t * rfg_index, uint32_t * dg) {
    if (index > 15) index = 15;
    *rfg_index = 7 - (index >> 1);
    *dg = tx_pwr_table[index][5];
}

static int32_t tx_pwr_ch_os[NUM_WIFI_CHANNELS]; // TBD
static int32_t tx_pwr_ch_os_a0[NUM_WIFI_CHANNELS] = {
    -16, -13, -10,  -8,  -5,  -2,   0,   2,   5,   7,   9,  11,  14, 18
};
static int32_t tx_pwr_ch_os_a1[NUM_WIFI_CHANNELS] = {
    // not assigned in the binary, put something here...
    // TODO: get some values..
    13, //2412MHz
    15, //2417MHz
    16, //2422MHz
    18, //2427MHz
    21, //2432MHz
    23, //2437MHz
    0, //2442MHz
    0, //2447MHz
    5, //2452MHz
    7, //2457MHz
    9, //2462MHz
    11, //2467MHz
    14, //2472MHz
    18  //2484MHz
};

void rf_pri_update_power_offset(int32_t * power_offset) {
    for (int i = 0; i < NUM_WIFI_CHANNELS; i++) {
        tx_pwr_ch_os[i] = power_offset[i];
        tx_pwr_ch_os_a1[i] = power_offset[i];
    }
}

static void rf_pri_set_gain_table_regs() { 
    // Little-endian? looks okay..
    typedef struct {
        uint32_t gain_ctrl_gc_tbb : 5;
		uint32_t pad0 : 3;
		uint32_t gain_ctrl_gc_tmx : 3;
		uint32_t pad1 : 1;
		uint32_t gain_ctrl_dac_bias_sel : 2;
		uint32_t gain_ctrl_gc_tbb_boost : 2;
    } __attribute__((packed)) tbb_gain_t;
    union {
        tbb_gain_t vals[8];
        uint32_t pack[4];
    } tbb_gain = {.pack = {0}};
    
    for (int i = 0, idx = 14; i < 8; i++, idx-=2) {
        tbb_gain.vals[i].gain_ctrl_gc_tbb = tx_pwr_table[idx][3];
        tbb_gain.vals[i].gain_ctrl_gc_tmx = tx_pwr_table[idx][2];
        tbb_gain.vals[i].gain_ctrl_dac_bias_sel = tx_pwr_table[idx][1];
        tbb_gain.vals[i].gain_ctrl_gc_tbb_boost = tx_pwr_table[idx][0];
    }

    RF->tbb_gain_index1.value = tbb_gain.pack[0];
    RF->tbb_gain_index2.value = tbb_gain.pack[1];
    RF->tbb_gain_index3.value = tbb_gain.pack[2];
    RF->tbb_gain_index4.value = tbb_gain.pack[3];
}

void rf_pri_update_tx_power_offset(uint8_t channel, int8_t * power_offset) {
    uint8_t po = power_offset[channel];
    memcpy(tx_pwr_table, tx_pwr_table_origin, sizeof(tx_pwr_table_origin));
    for (int i = 0; i < E_RF_TXPWR_TBL_CNT; i++) {
        tx_pwr_table[i][5] = tx_pwr_table[i][5] + po % 4;
        tx_pwr_table[i][6] = tx_pwr_table[i][6] + ((int)po / 4) * -10;
    }
    rf_pri_set_gain_table_regs();
}

static uint32_t Tchannels[6] = {
    2412, 2417, 2427, 2442,
    2457, 2472
};

static int32_t Tchannel_os[6] = {2, 3, 3, 4, 6, 8};
static int32_t Tchannel_os_low[6] = {0, 0, 1, 2, 4, 7};
static int32_t temps[13] = {-65, -45, -25, -5, 15, 51,
                             75, 95, 120, 145, 170, 195, 220};

static regs_to_opti opti_regs_data_a0 = {
    .vbcore = 10,
    .iet = 3,
    .vbcore_11n = 10,
    .iet_11n = 3,
    .vbcore_11g = 10,
    .iet_11g = 3,
    .vbcore_11b = 10,
    .iet_11b = 3,
    .lo_fbdv_halfstep_en = 0,
    .lo_fbdv_halfstep_en_tx = 0,
    .lo_fbdv_halfstep_en_rx = 0,
    .clkpll_reset_postdiv = 0,
    .clkpll_dither_sel = 0,
};

static regs_to_opti opti_regs_data_a1 = {
    .vbcore = 0xc,
    .iet = 5,
    .vbcore_11n = 0xc,
    .iet_11n = 5,
    .vbcore_11g = 0xc,
    .iet_11g = 5,
    .vbcore_11b = 0xc,
    .iet_11b = 5,
    .lo_fbdv_halfstep_en = 1,
    .lo_fbdv_halfstep_en_tx = 1,
    .lo_fbdv_halfstep_en_rx = 1,
    .clkpll_reset_postdiv = 1,
    .clkpll_dither_sel = 2,
};

regs_to_opti *opti_regs = &opti_regs_data_a1;

static uint16_t tmxcss[3] = {5,5,5};

static int32_t index_os_pre;
static int32_t index_os_pre_mdb;
static int32_t dvga_os_pre;
static int32_t up_dn;

static void rf_pri_singen_pwrmx_dc(uint32_t amp, uint32_t num_data, int32_t adc_mean_max, int32_t adc_mean_min){
    uint32_t step;
    int32_t adc_mean_i = 0;
    step = amp >> 1;
    while(1) {
        rf_pri_singen_amplitude(amp, amp);
        rf_pri_singen_start();
        rf_pri_start_txdfe();

        BL602_Delay_US(10);
        adc_mean_i = rf_pri_pm_pwr_avg(1, num_data);
        adc_mean_i = adc_mean_i>>10;
        printf("amp=%ld,step=%ld,adc_mean_i=%ld\r\n", amp, step, adc_mean_i);
        
        if(adc_mean_i > adc_mean_max)
            amp -= step;
        else if (adc_mean_i < adc_mean_min)
            amp += step;
        else 
            break;               
        if(step > 0)
            step = step >> 1;
        else
            break;            
    }
}

// TODO: verify me
static void rf_pri_txcal_config(uint32_t param_ind, int32_t val) {
    switch (param_ind) {
    case E_RF_GAIN: {
        PACK(RF->dfe_ctrl_0, dfe) {
            dfe.tx_iqc_gain = val;
            dfe.tx_iqc_gain_en = 1;
        }
        break;
    }
    case E_RF_PHASE: {
        val = val >= 0 ? val : (val+0x400);
        PACK(RF->dfe_ctrl_0, dfe) {
            dfe.tx_iqc_phase = val;
            dfe.tx_iqc_phase_en = 1;
        }
        break;
    }
    case E_RF_BRANCH_I: {
        RF->tbb.tbb_tosdac_i = val;
        break;
    }
    case E_RF_BRANCH_Q: {
        RF->tbb.tbb_tosdac_i = val;
        break;
    }
    default:
        break;
    }  
}

// kinda like Gradient descent to find minimum point?
// todo: verify me
static int32_t rf_pri_txcal_search_core(uint32_t param_ind, uint32_t center, uint32_t delta, uint32_t meas_freq) {
    rf_pri_txcal_config(param_ind, center);
    BL602_Delay_US(10);

    RF->dfe_ctrl_6.rx_pm_freqshift_cw = meas_freq << 10;

    uint32_t y_center = rf_pri_pm_pwr();

    int32_t x_center = center;
    int32_t x_delta = delta;

    for (int32_t x_left, x_right, y_left, y_right; x_delta; x_delta >>= 1) {
        x_left  = x_center - x_delta;
        x_right = x_center + x_delta;
        switch (param_ind) {
        case E_RF_BRANCH_I ... E_RF_BRANCH_Q:
            x_left = x_left < 0 ? 0 : x_left;
            x_right = x_right > 63 ? 63 : x_right;
            break;
        case E_RF_GAIN:
            x_left = x_left < 0 ? 0 : x_left;
            x_right = x_right > 2047 ? 2047 : x_right;
            break;
        case E_RF_PHASE:
            x_left = x_left < -512 ? -512 : x_left;
            x_right = x_right > 511 ? 511 : x_right;
            break;
        }

        // left
        rf_pri_txcal_config(param_ind, x_left);
        BL602_Delay_US(10);
        y_left = rf_pri_pm_pwr();
        
        if (y_center <= y_left) {  
            // right

            rf_pri_txcal_config(param_ind, x_right);
            BL602_Delay_US(10);
            y_right = rf_pri_pm_pwr();
            
            if (y_center > y_right) {
                x_center = x_right;
                y_center = y_right;
            }
        } else {
            x_center = x_left;
            y_center = y_left;
        }
    }

    return x_center;
}

static void rf_pri_txcal_config_hw() {
    typedef struct {
        uint32_t tbb_tosdac_i_gc0 : 6; // @ 5 -- 0 # 0xffffffc0
		uint32_t pad0 : 2;
		uint32_t tbb_tosdac_q_gc0 : 6; // @ 13 -- 8 # 0xffffc0ff
		uint32_t pad1 : 2;
    } __attribute__((packed)) tosdac_t;
    union {
        tosdac_t vals[8];
        uint32_t pack[4];
    } tosdac = {.pack = {0}};
    for (int i = 0; i < 8; i++) {
        tosdac.vals[i].tbb_tosdac_i_gc0 = rf_calib_data->txcal[i].tosdac_i;
        tosdac.vals[i].tbb_tosdac_q_gc0 = rf_calib_data->txcal[i].tosdac_q;
    }
    RF->tosdac_ctrl_hw1.value = tosdac.pack[0];
    RF->tosdac_ctrl_hw2.value = tosdac.pack[1];
    RF->tosdac_ctrl_hw3.value = tosdac.pack[2];
    RF->tosdac_ctrl_hw4.value = tosdac.pack[3];

    __typeof__ (RF->tx_iq_gain_hw0) iq_gain[8];
    
    for (int i = 0; i < 8; i++) {
        iq_gain[i].tx_iq_gain_comp_gc0 = rf_calib_data->txcal[i].tx_iq_gain_comp;
        iq_gain[i].tx_iq_phase_comp_gc0 = rf_calib_data->txcal[i].tx_iq_phase_comp;
    }

    RF->tx_iq_gain_hw0.value = iq_gain[0].value;
    RF->tx_iq_gain_hw1.value = iq_gain[1].value;
    RF->tx_iq_gain_hw2.value = iq_gain[2].value;
    RF->tx_iq_gain_hw3.value = iq_gain[3].value;
    RF->tx_iq_gain_hw4.value = iq_gain[4].value;
    RF->tx_iq_gain_hw5.value = iq_gain[5].value;
    RF->tx_iq_gain_hw6.value = iq_gain[6].value;
    RF->tx_iq_gain_hw7.value = iq_gain[7].value;
}

void rf_pri_txcal(void) {
    //
    PACK(RF->rfcal_status, rfcal_status) {
        rfcal_status.lo_leakcal_status = 1;
        rfcal_status.tiqcal_status_resv = 1;
    }
    //
    rf_pri_save_state_for_cal();
    rf_pri_config_mode(E_RF_MODE_TXCAL);
    rf_pri_config_channel(E_RF_CHANNEL_2424M); // E_RF_CHANNEL_2440M in the leak code

    //
    PACK(RF->rfcal_ctrlen, rfcal_ctrlen) {
        rfcal_ctrlen.tiqcal_en = 1;
        rfcal_ctrlen.lo_leakcal_en = 1;
    }
    //
    RF->rbb3.pwr_det_en = 1;
    
    RF->pa1.pa_pwrmx_dac_pn_switch = 1;

    RF->tmx.tmx_cs = tmxcss[0]; // leak code use 3

    uint32_t k1 = 61;
    rf_pri_singen_config(k1, 0x0, 0x300);

    for (int i = 0; i < 8; i++) {
        //
        PACK(RF->pa1, pa1) {
            pa1.pa_att_gc = txcal_para[i][0];
            pa1.pa_pwrmx_osdac = txcal_para[i][2];
        }
        //
        RF->ten_ac.atest_gain_r5 = txcal_para[i][1];
        
        //
        rf_pri_config_txgain(tx_pwr_table[i<<1][0], 7, tx_pwr_table[i<<1][3]);
        //

        BL602_Delay_US(10);
    
        int32_t adc_mean_min=192;
        int32_t adc_mean_max=320;
        uint32_t num_data=1024;
        rf_pri_singen_pwrmx_dc(txcal_para[i][3],num_data,adc_mean_max,adc_mean_min);
        
        rf_pri_pm_pwr_avg(1, 0x1000);

        uint32_t tos_i = rf_pri_txcal_search_core(E_RF_BRANCH_I, 32, 16, k1);
        rf_pri_txcal_config(E_RF_BRANCH_I, tos_i);

        uint32_t tos_q = rf_pri_txcal_search_core(E_RF_BRANCH_Q, 32, 16, k1);
        rf_pri_txcal_config(E_RF_BRANCH_Q, tos_q);

        tos_i = rf_pri_txcal_search_core(E_RF_BRANCH_I, tos_i, 2, k1);
        rf_pri_txcal_config(E_RF_BRANCH_I, tos_i);

        uint32_t gain = rf_pri_txcal_search_core(E_RF_GAIN, 0x400, 0x80, 2 * k1);
        rf_pri_txcal_config(E_RF_GAIN, gain);

        uint32_t phase = rf_pri_txcal_search_core(E_RF_PHASE, 0, 0x40, 2 * k1);
        rf_pri_txcal_config(E_RF_PHASE, phase);

        gain = rf_pri_txcal_search_core(E_RF_GAIN, gain, 0x40, 2 * k1);
        rf_pri_txcal_config(E_RF_GAIN, gain);

        phase = rf_pri_txcal_search_core(E_RF_PHASE, 0, 0x20, 2 * k1);
        rf_pri_txcal_config(E_RF_PHASE, phase);

        rf_calib_data->txcal[E_RF_TXCAL_GAIN_CNT - 1 - i].tosdac_i = tos_i;
        rf_calib_data->txcal[E_RF_TXCAL_GAIN_CNT - 1 - i].tosdac_q = tos_q;
        rf_calib_data->txcal[E_RF_TXCAL_GAIN_CNT - 1 - i].tx_iq_gain_comp = gain;
        rf_calib_data->txcal[E_RF_TXCAL_GAIN_CNT - 1 - i].tx_iq_phase_comp = phase;

        printf("tosdac_i=%ld,tosdac_q=%ld,tx_iq_gain_comp=%ld,tx_iq_phase_comp=%ld\r\n",
            tos_i, tos_q, gain, phase);
    }

    rf_pri_txcal_config_hw();
    PACK(RF->rfcal_ctrlen, rfcal_ctrlen) {
        rfcal_ctrlen.lo_leakcal_en = 0;
        rfcal_ctrlen.tiqcal_en = 0;
    }
    rf_pri_restore_state_for_cal();

    PACK(RF->rfcal_status, rfcal_status) {
        rfcal_status.lo_leakcal_status = 0x3;
        rfcal_status.tiqcal_status_resv = 0x3;
    }

    PACK(RF->tbb, tbb) {
        tbb.tbb_tosdac_i = rf_calib_data->txcal[3].tosdac_i;
        tbb.tbb_tosdac_q = rf_calib_data->txcal[3].tosdac_q;
    }

    PACK(RF->dfe_ctrl_0, dfe_ctrl_0) {
        dfe_ctrl_0.tx_iqc_gain = rf_calib_data->txcal[3].tx_iq_gain_comp;
        dfe_ctrl_0.tx_iqc_phase = rf_calib_data->txcal[3].tx_iq_phase_comp;
    }
}   


void rf_pri_update_param(uint32_t chanfreq_MHz) {
    uint32_t low_chan = 7;
    int32_t i4 = 8;

    index_os_pre = 0;
    index_os_pre_mdb = 0;
    dvga_os_pre = 0;
    up_dn = 0;

    for (int i = 1; i < 6; i++) {
        if (chanfreq_MHz < Tchannels[i]) {
            low_chan = i - 1;
            break;
        }
    }

    if (low_chan != 7) {
        uint32_t low_chanfreq_Mhz = Tchannels[low_chan];
        int freq_diff = chanfreq_MHz - low_chanfreq_Mhz;
        int high_ch = low_chan + 1;
        i4 = (uint32_t)((Tchannel_os[high_ch] - Tchannel_os[low_chan])
             * freq_diff) / (Tchannels[high_ch] - low_chanfreq_Mhz)
        + Tchannel_os[low_chan];

        low_chan = (uint32_t)((Tchannel_os_low[high_ch] - Tchannel_os_low[low_chan]) * freq_diff) /
            (Tchannels[high_ch] - low_chanfreq_Mhz) + Tchannel_os_low[low_chan];
    }

    int d = 0;
    for (int i = 10, j = 4; i != -10; i -=5, j -= 1) {
        int i2 = (temps[j] + d) - (20 - low_chan);
        d = 0;
        if (i2 > i) {
            d = i2 - i;
            i2 = i;
        }
        temps[j - 1] = i2;
    }

    d = 0;
    for (int i = 56, j = 5; i != 91; i += 5, j++) {
        int i8 = (temps[j] - d) + (20 - i4);
        if (i8 > 95) {
            i8 = i8 + (5 - i4 / 4);
        }
        d = 0;
        if (i8 < i) {
            d = i - i8;
            i8 = i;
        }
        temps[j + 1] = i8;
    }

    temps[4] = 15;
    temps[5] = 51;

    // the leak code use tmx_csl/tmx_csh from rf_calib_data
    if (chanfreq_MHz < 2438) {
        RF->tmx.tmx_cs = tmxcss[1];
    } else {
        RF->tmx.tmx_cs = tmxcss[2];
    }
    
    switch(chanfreq_MHz){
        case 2412:
            tx_pwr_os = tx_pwr_ch_os[0];
            break;
        case 2417:
            tx_pwr_os = tx_pwr_ch_os[1];
            break;
        case 2422:
            tx_pwr_os = tx_pwr_ch_os[2];
            break;
        case 2427:
            tx_pwr_os = tx_pwr_ch_os[3];
            break;
        case 2432:
            tx_pwr_os = tx_pwr_ch_os[4];
            break;
        case 2437:
            tx_pwr_os = tx_pwr_ch_os[5];
            break;
        case 2442:
            tx_pwr_os = tx_pwr_ch_os[6];
            break;
        case 2447:
            tx_pwr_os = tx_pwr_ch_os[7];
            break;
        case 2452:
            tx_pwr_os = tx_pwr_ch_os[8];
            break;
        case 2457:
            tx_pwr_os = tx_pwr_ch_os[9];
            break;
        case 2462:
            tx_pwr_os = tx_pwr_ch_os[10];
            break;
        case 2467:
            tx_pwr_os = tx_pwr_ch_os[11];
            break;
        case 2472:
            tx_pwr_os = tx_pwr_ch_os[12];
            break;
        case 2484:
            tx_pwr_os = tx_pwr_ch_os[13];
            break;
        default:
            tx_pwr_os = 0;
            break;
    }

}

static int32_t Tthr;

static int8_t temps_dvga[16] = {
    -4, -8, -4, -8,
    -4, -8, -4, -8,
    -4, -8, -5, -9,
    -4, -8, -5, -9,
};

void rf_pri_update_dvga_os(int8_t dvga_os) {
    for (int i = 0; i < 16; i++) {
        temps_dvga[i] = tx_pwr_table[i][5] + dvga_os;
    }
}

// TODO: re-verify this function
void rf_pri_tx_gain_comp(int32_t Tsens) {
    
    if (((up_dn == 1) && ((Tthr <= Tsens) || (Tsens <= Tthr + -5)))
        || ((((up_dn != -1 && up_dn != 1) || (Tsens <= Tthr)) || (Tthr + 5 <= Tsens)))) {
        uint32_t dvga_os = 0;
        int i;
        for (i = 12; i >= 0; i--) {
            if (temps[i] <= Tsens)
                break;
        }
        if (i == -1) i = 0;
        int32_t index_os = i - 4;
        int32_t T = temps[i];
        Tthr = T;
        if (Tsens < 35) {
            if (T < Tsens) {
                Tthr = temps[i + 1];
                if (34 < temps[i + 1]) {
                    Tthr = T;
                }
            } else {
                index_os = i - 5;
            }
        } else {
            if (T < 36) {
                Tthr = temps[i + 1];
            }
        }

        if (index_os_pre_mdb < index_os) {
            up_dn = 1;
        } else {
            if (index_os_pre_mdb > index_os)
                up_dn = -1;
        }
        if (index_os < 1) {
            dvga_os = 0;
            index_os_pre = index_os;
            if (index_os != 0) {
                dvga_os = -1;
                if ((index_os & 1) != 0) {
                    dvga_os = 1;
                }
                index_os_pre = (index_os - 1) / 2;
            }
        } else {
            dvga_os = (index_os + 1) & 1;
            if (dvga_os == 0) {
                dvga_os = -1;
            }
            index_os_pre = (index_os + 1) / 2;
        }
        tx_pwr_os_temperature = index_os_pre * -10;
        dvga_os_pre = dvga_os;
        index_os_pre_mdb = index_os;
    } else {
        tx_pwr_os_temperature = index_os_pre * -10;
    }

    rf_pri_update_dvga_os(dvga_os_pre);    
    rfc_apply_tx_dvga(temps_dvga);
}


void rf_pri_update_txgain_tempos(int16_t tempos) {
    tx_pwr_os_temperature = tempos;
}

int32_t rf_pri_get_txgain_max(void) {
    return tx_pwr_table[0][6] + tx_pwr_os + tx_pwr_os_temperature;
}

int32_t rf_pri_get_txgain_min(void) {
    return tx_pwr_table[15][6] + tx_pwr_os + tx_pwr_os_temperature;
}

uint32_t rf_pri_get_txgain_index(int32_t pwr, uint32_t mode) {
    pwr += tx_pwr_os;
    if (mode == E_RF_MODE_11B) {
        pwr -= 33;
    }
    for (int i = 0; i < E_RF_TXPWR_TBL_CNT; i++) {
        if (pwr >= tx_pwr_table[i][6]) {
            return i;
        }
    }
    return E_RF_TXPWR_TBL_CNT - 1;
}


static void rf_pri_chipv(uint8_t chipv) {
    #define cpy_rev(dest, rev) memcpy(dest, dest##_a##rev, sizeof(dest##_a##rev));
    // init based on chip revision
    if (chipv == 0) {
        tmxcss[0] = 3;
        tmxcss[1] = 6;
        tmxcss[2] = 6;
        cpy_rev(tx_pwr_table, 0);
        memcpy(tx_pwr_table_origin, tx_pwr_table_a0, sizeof(tx_pwr_table_a0));
        cpy_rev(tx_pwr_ch_os, 0);
        cpy_rev(txcal_para, 0);
        opti_regs = &opti_regs_data_a0;
    }
    if (chipv == 1) {
        tmxcss[0] = 5;
        tmxcss[1] = 5;
        tmxcss[2] = 5;
        cpy_rev(tx_pwr_table, 1);
        memcpy(tx_pwr_table_origin, tx_pwr_table_a1, sizeof(tx_pwr_table_a1));
        cpy_rev(tx_pwr_ch_os, 1);
        cpy_rev(txcal_para, 1);
        opti_regs = &opti_regs_data_a1;
    }
}

static int32_t init_fast = 0;

static void rf_pri_fixed_val_regs(){
    AON->dcdc18_top_0.dcdc18_vpfm_aon = 3;
    HBN->HBN_GLB.sw_ldo11_rt_vout_sel = 8;
    PACK(RF->pucr1, pucr1) {
        pucr1.pu_sfreg = 1;
        pucr1.pu_adda_ldo = 1;
    }
    AON->xtal_cfg.xtal_capcode_extra_aon = 1;
    // leak code also set xtal_capcode_out_aon and xtal_capcode_in_aon

    if (!init_fast) {
        BL602_Delay_MS(10);
    }

    PACK(RF->pa1, pa1) {
        pa1.pa_iaq = 2;
        pa1.pa_iet = opti_regs->iet;
        pa1.pa_vbcore = opti_regs->vbcore;
        pa1.pa_vbcas = 4;
    }
    PACK(RF->pa_reg_ctrl_hw1, pa_reg_ctrl_hw1) {
        pa_reg_ctrl_hw1.pa_iet_11n = opti_regs->iet_11n;
        pa_reg_ctrl_hw1.pa_vbcas_11n = 4;
        pa_reg_ctrl_hw1.pa_vbcore_11n = opti_regs->vbcore_11n;
    }
    PACK(RF->pa_reg_ctrl_hw2, pa_reg_ctrl_hw2) {
        pa_reg_ctrl_hw2.pa_iet_11g = opti_regs->iet_11g;
        pa_reg_ctrl_hw2.pa_vbcore_11g = opti_regs->vbcore_11g;
        pa_reg_ctrl_hw2.pa_vbcas_11g = 4;
        
        pa_reg_ctrl_hw2.pa_iet_11b = opti_regs->iet_11b;
        pa_reg_ctrl_hw2.pa_vbcore_11b = opti_regs->vbcore_11b;
        pa_reg_ctrl_hw2.pa_vbcas_11b = 4;
    }
    
    RF->adda2.adc_gt_rm = 1;

    RF->fbdv.lo_fbdv_halfstep_en = opti_regs->lo_fbdv_halfstep_en;

    PACK(RF->lo_reg_ctrl_hw1, lo_reg_ctrl_hw1) {
        lo_reg_ctrl_hw1.lo_fbdv_halfstep_en_tx = opti_regs->lo_fbdv_halfstep_en_tx;
        lo_reg_ctrl_hw1.lo_fbdv_halfstep_en_rx = opti_regs->lo_fbdv_halfstep_en_rx;
        // the disassembly uses lo_fbdv_halfstep_en_tx for both, and 
        // in chipv it also uses lo_fbdv_halfstep_en_tx for both,
        // I think it's typo
    }

    PACK(RF->lo_reg_ctrl_hw1, lo_reg_ctrl_hw1) {
        lo_reg_ctrl_hw1.lo_lf_rz_tx = 0;
        lo_reg_ctrl_hw1.lo_lf_cz_tx = 3;
        lo_reg_ctrl_hw1.lo_cp_sel_tx = 0;
    }

    PACK(RF->pa_reg_wifi_ctrl_hw, pa_reg_wifi_ctrl_hw) {
        pa_reg_wifi_ctrl_hw.pa_half_on_wifi = 0;
        pa_reg_wifi_ctrl_hw.pa_ib_fix_wifi = 0;
    }
}

static void rf_pri_restore_cal_reg(void) {
    PACK(RF->rosdac_ctrl_hw1, rosdac) {
        rosdac.rosdac_i_gc0 = rf_calib_data->rxcal[0].rosdac_i;
        rosdac.rosdac_q_gc0 = rf_calib_data->rxcal[0].rosdac_q;
        rosdac.rosdac_i_gc1 = rf_calib_data->rxcal[1].rosdac_i;
        rosdac.rosdac_q_gc1 = rf_calib_data->rxcal[1].rosdac_q;
    }
    PACK(RF->rosdac_ctrl_hw2, rosdac) {
        rosdac.rosdac_i_gc2 = rf_calib_data->rxcal[2].rosdac_i;
        rosdac.rosdac_q_gc2 = rf_calib_data->rxcal[2].rosdac_q;
        rosdac.rosdac_i_gc3 = rf_calib_data->rxcal[3].rosdac_i;
        rosdac.rosdac_q_gc3 = rf_calib_data->rxcal[3].rosdac_q;
    }
    PACK(RF->rbb2, rbb2) {
        rbb2.rbb_cap1_fc_i = rf_calib_data->cal.rbb_cap1_fc_i;
        rbb2.rbb_cap1_fc_q = rf_calib_data->cal.rbb_cap1_fc_q;
        rbb2.rbb_cap2_fc_i = rf_calib_data->cal.rbb_cap2_fc_i;
        rbb2.rbb_cap2_fc_q = rf_calib_data->cal.rbb_cap2_fc_q;
    }
    
    PACK(RF->tbb, tbb) {
        tbb.tbb_tosdac_i = rf_calib_data->txcal[3].tosdac_i;
        tbb.tbb_tosdac_q = rf_calib_data->txcal[3].tosdac_q;
    }

    PACK(RF->dfe_ctrl_0, dfe_ctrl_0) {
        dfe_ctrl_0.tx_iqc_gain = rf_calib_data->txcal[3].tx_iq_gain_comp;
        dfe_ctrl_0.tx_iqc_phase = rf_calib_data->txcal[3].tx_iq_phase_comp;
    }
}

void rf_pri_init(uint8_t reset, uint8_t chipv) {
    rf_pri_chipv(chipv);
    init_fast = reset == 0;

    rf_pri_fixed_val_regs();

    PDS->pu_rst_clkpll.clkpll_reset_postdiv = opti_regs->clkpll_reset_postdiv;
    PDS->clkpll_sdm.clkpll_dither_sel = opti_regs->clkpll_dither_sel;
    RF->adda1.dac_dvdd_sel = 2;
    HBN->HBN_GLB.sw_ldo11soc_vout_sel_aon = 0xc;
    
    rf_pri_set_gain_table_regs();
    
    PDS->clkpll_top_ctrl.clkpll_refclk_sel = 1;
    PACK(PDS->clkpll_output_en, clkpll_output_en) {
        clkpll_output_en.clkpll_en_480m = 1;
        clkpll_output_en.clkpll_en_240m = 1;
        clkpll_output_en.clkpll_en_192m = 1;
        clkpll_output_en.clkpll_en_160m = 1;
        clkpll_output_en.clkpll_en_120m = 1;
        clkpll_output_en.clkpll_en_96m  = 1;
        clkpll_output_en.clkpll_en_80m  = 1;
        clkpll_output_en.clkpll_en_48m  = 1;
    }
    
    if (rf_calib_data->inited && !reset) {
        rf_pri_restore_cal_reg();
    } else {
        rf_pri_full_cal();
        rf_calib_data->inited = 1;
    }
}

void rf_pri_init_fast(uint32_t flag) {
    init_fast = flag;
}

/// data for different crystal freq
static uint32_t channel_div_table_24M[21] = {
    0x21638e39, 0x2171c71c, 0x21800000, 0x218e38e4, 0x219c71c7, 
    0x21aaaaab, 0x21b8e38e, 0x21c71c72, 0x21d55555, 0x21e38e39, 
    0x21f1c71c, 0x22000000, 0x220e38e4, 0x221c71c7, 0x222aaaab, 
    0x2238e38e, 0x22471c72, 0x22555555, 0x22638e39, 0x2271c71c, 
    0x22800000
};
static uint16_t channel_cnt_table_24M[21] = {
    0xa6f2, 0xa739, 0xa780, 0xa7c7, 0xa80e, 0xa855, 0xa89c, 0xa8e4, 
    0xa92b, 0xa972, 0xa9b9, 0xaa00, 0xaa47, 0xaa8e, 0xaad5, 0xab1c, 
    0xab64, 0xabab, 0xabf2, 0xac39, 0xac80
};
static uint16_t channel_cnt_range_24M[21] = {
    0xa6a7, 0xa6e7, 0xace7
};
static int32_t rx_notch_para_24M[14][2] = {
    {0, 0}, {1, 7000000}, {1, 2000000}, {1, -3000000}, {1, -8000000}, {0, 0}, 
    {1, 6000000}, {1, 1000000}, {1, -4000000}, {1, -9000000}, {0, 0}, {1, 5000000}, 
    {1, 0}, {0, 0}
};
static uint16_t fcal_div_24M = 1280;

static uint32_t channel_div_table_26M[21] = {
    0x1ed20d21, 0x1edf2df3, 0x1eec4ec5, 0x1ef96f97, 0x1f069069, 
    0x1f13b13b, 0x1f20d20d, 0x1f2df2df, 0x1f3b13b1, 0x1f483483, 
    0x1f555555, 0x1f627627, 0x1f6f96f9, 0x1f7cb7cb, 0x1f89d89e, 
    0x1f96f970, 0x1fa41a42, 0x1fb13b14, 0x1fbe5be6, 0x1fcb7cb8, 
    0x1fd89d8a
};
static uint16_t channel_cnt_table_26M[21] = {
    0xa6fc, 0xa743, 0xa78a, 0xa7d1, 0xa819, 0xa860, 0xa8a7, 0xa8ee, 
    0xa935, 0xa97c, 0xa9c3, 0xaa0a, 0xaa52, 0xaa99, 0xaae0, 0xab27, 
    0xab6e, 0xabb5, 0xabfc, 0xac43, 0xac8b
};
static uint16_t channel_cnt_range_26M[21] = {
    0xa6b1, 0xa6f1, 0xacf2
};
static int32_t rx_notch_para_26M[14][2] = {
    {1, 6000000}, {1, 1000000}, {1, -4000000}, {1, -9000000}, {0, 0}, {1, 7000000}, 
    {1, 2000000}, {1, -3000000}, {1, -8000000}, {0, 0}, {1, 8000000}, {1, 3000000}, 
    {1, -2000000}, {0, 0}
};
static uint16_t fcal_div_26M = 1387;

static uint32_t channel_div_table_32M[21] = {
    0x190aaaab, 0x19155555, 0x19200000, 0x192aaaab, 0x19355555, 
    0x19400000, 0x194aaaab, 0x19555555, 0x19600000, 0x196aaaab, 
    0x19755555, 0x19800000, 0x198aaaab, 0x19955555, 0x19a00000, 
    0x19aaaaab, 0x19b55555, 0x19c00000, 0x19caaaab, 0x19d55555, 
    0x19e00000
};
static uint16_t channel_cnt_table_32M[21] = {
    0xa6fa, 0xa741, 0xa788, 0xa7d0, 0xa817, 0xa85e, 0xa8a5, 0xa8ec, 
    0xa933, 0xa97a, 0xa9c1, 0xaa09, 0xaa50, 0xaa97, 0xaade, 0xab25, 
    0xab6c, 0xabb3, 0xabfa, 0xac42, 0xac89
};
static uint16_t channel_cnt_range_32M[21] = {
    0xa6af, 0xa6ef, 0xacf0
};
static int32_t rx_notch_para_32M[14][2] = {
    {0, 0}, {0, 0}, {1, 10000000}, {1, 5000000}, {1, 0}, {1, -5000000}, 
    {1, -10000000}, {0, 0}, {0, 0}, {1, 7000000}, {1, 2000000}, {1, -3000000}, 
    {1, -8000000}, {0, 0}
};
static uint16_t fcal_div_32M = 1707;

static uint32_t channel_div_table_38M4[21] = {
    0x14de38e4, 0x14e71c72, 0x14f00000, 0x14f8e38e, 0x1501c71c, 
    0x150aaaab, 0x15138e39, 0x151c71c7, 0x15255555, 0x152e38e4, 
    0x15371c72, 0x15400000, 0x1548e38e, 0x1551c71c, 0x155aaaab, 
    0x15638e39, 0x156c71c7, 0x15755555, 0x157e38e4, 0x15871c72, 
    0x15900000
};
static uint16_t channel_cnt_table_38M4[21] = {
    0xa6f2, 0xa739, 0xa780, 0xa7c7, 0xa80e, 0xa855, 0xa89c, 0xa8e4, 
    0xa92b, 0xa972, 0xa9b9, 0xaa00, 0xaa47, 0xaa8e, 0xaad5, 0xab1c, 
    0xab64, 0xabab, 0xabf2, 0xac39, 0xac80
};
static uint16_t channel_cnt_range_38M4[21] = {
    0xa6a7, 0xa6e7, 0xace7
};
static int32_t rx_notch_para_38M4[14][2] = {
    {1, 7200000}, {1, 2200000}, {1, -2800000}, {1, -7800000}, {0, 0}, {0, 0}, 
    {0, 0}, {0, 0}, {1, 5600000}, {1, 600000}, {1, -4400000}, {1, -9400000}, 
    {0, 0}, {0, 0}
};
static uint16_t fcal_div_38M4 = 2048;

static uint32_t channel_div_table_40M[21] = {
    0x14088889, 0x14111111, 0x1419999a, 0x14222222, 0x142aaaab, 
    0x14333333, 0x143bbbbc, 0x14444444, 0x144ccccd, 0x14555555, 
    0x145dddde, 0x14666666, 0x146eeeef, 0x14777777, 0x14800000, 
    0x14888889, 0x14911111, 0x1499999a, 0x14a22222, 0x14aaaaab, 
    0x14b33333
};
static uint16_t channel_cnt_table_40M[21] = {
    0xa6eb, 0xa732, 0xa779, 0xa7c0, 0xa808, 0xa84f, 
    0xa896, 0xa8dd, 0xa924, 0xa96b, 0xa9b2, 0xa9f9, 
    0xaa40, 0xaa87, 0xaacf, 0xab16, 0xab5d, 0xaba4, 
    0xabeb, 0xac32, 0xac79
};
static uint16_t channel_cnt_range_40M[21] = {
    0xa6a0, 0xa6e0, 0xace0
};
static int32_t rx_notch_para_40M[14][2] = {
    {0, 0}, {0, 0}, {0, 0}, {0, 0}, {1, 8000000}, {1, 3000000}, 
    {1, -2000000}, {1, -7000000}, {0, 0}, {0, 0}, {0, 0}, {0, 0}, 
    {1, 8000000}, {1, -4000000}
};
static uint16_t fcal_div_40M = 2133;

static uint32_t channel_div_table_52M[21] = {
    0xf690690, 0xf6f96f9, 0xf762762, 0xf7cb7cb, 0xf834835, 
    0xf89d89e, 0xf906907, 0xf96f970, 0xf9d89d9, 0xfa41a42, 
    0xfaaaaab, 0xfb13b14, 0xfb7cb7d, 0xfbe5be6, 0xfc4ec4f, 
    0xfcb7cb8, 0xfd20d21, 0xfd89d8a, 0xfdf2df3, 0xfe5be5c, 
    0xfec4ec5
};
static uint16_t channel_cnt_table_52M[21] = {
    0xa6ed, 0xa734, 0xa77b, 0xa7c2, 0xa809, 0xa850, 
    0xa897, 0xa8de, 0xa925, 0xa96d, 0xa9b4, 0xa9fb, 
    0xaa42, 0xaa89, 0xaad0, 0xab17, 0xab5e, 0xaba5, 
    0xabec, 0xac34, 0xac7b
};
static uint16_t channel_cnt_range_52M[21] = {
    0xa6a2, 0xa6e2, 0xace2
};
static int32_t rx_notch_para_52M[14][2] = {
    {0, 0}, {0, 0}, {0, 0}, {0, 0}, {0, 0}, {1, 7000000}, 
    {1, 2000000}, {1, -3000000}, {1, -8000000}, {0, 0}, {0, 0}, {0, 0}, 
    {0, 0}, {0, 0}
};
static uint16_t fcal_div_52M = 2773;

void rf_pri_xtalfreq(uint32_t xtalfreq) {
    switch (xtalfreq) {
    case E_RF_XTAL_24M:
        memcpy(channel_div_table, channel_div_table_24M, sizeof(channel_div_table));
        memcpy(channel_cnt_table, channel_cnt_table_24M, sizeof(channel_cnt_table));
        memcpy(channel_cnt_range, channel_cnt_range_24M, sizeof(channel_cnt_range));
        memcpy(rx_notch_para, rx_notch_para_24M, sizeof(rx_notch_para));
        fcal_div = fcal_div_24M;
        break;
    case E_RF_XTAL_26M:
        memcpy(channel_div_table, channel_div_table_26M, sizeof(channel_div_table));
        memcpy(channel_cnt_table, channel_cnt_table_26M, sizeof(channel_cnt_table));
        memcpy(channel_cnt_range, channel_cnt_range_26M, sizeof(channel_cnt_range));
        memcpy(rx_notch_para, rx_notch_para_26M, sizeof(rx_notch_para));
        fcal_div = fcal_div_26M;
        break;
    case E_RF_XTAL_32M:
        memcpy(channel_div_table, channel_div_table_32M, sizeof(channel_div_table));
        memcpy(channel_cnt_table, channel_cnt_table_32M, sizeof(channel_cnt_table));
        memcpy(channel_cnt_range, channel_cnt_range_32M, sizeof(channel_cnt_range));
        memcpy(rx_notch_para, rx_notch_para_32M, sizeof(rx_notch_para));
        fcal_div = fcal_div_32M;
        break;
    case E_RF_XTAL_38M4:
    default:
        memcpy(channel_div_table, channel_div_table_38M4, sizeof(channel_div_table));
        memcpy(channel_cnt_table, channel_cnt_table_38M4, sizeof(channel_cnt_table));
        memcpy(channel_cnt_range, channel_cnt_range_38M4, sizeof(channel_cnt_range));
        memcpy(rx_notch_para, rx_notch_para_38M4, sizeof(rx_notch_para));
        fcal_div = fcal_div_38M4;
        break;
    case E_RF_XTAL_40M:
        memcpy(channel_div_table, channel_div_table_40M, sizeof(channel_div_table));
        memcpy(channel_cnt_table, channel_cnt_table_40M, sizeof(channel_cnt_table));
        memcpy(channel_cnt_range, channel_cnt_range_40M, sizeof(channel_cnt_range));
        memcpy(rx_notch_para, rx_notch_para_40M, sizeof(rx_notch_para));
        fcal_div = fcal_div_40M;
        break;
    case E_RF_XTAL_52M:
        memcpy(channel_div_table, channel_div_table_52M, sizeof(channel_div_table));
        memcpy(channel_cnt_table, channel_cnt_table_52M, sizeof(channel_cnt_table));
        memcpy(channel_cnt_range, channel_cnt_range_52M, sizeof(channel_cnt_range));
        memcpy(rx_notch_para, rx_notch_para_52M, sizeof(rx_notch_para));
        fcal_div = fcal_div_52M;
        break;
    }
}
