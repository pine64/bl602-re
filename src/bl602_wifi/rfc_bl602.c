
#include "rfc_bl602.h"
#include "bl602_rf_private.h"
#include "utils.h"

#include <soc/rf.h>

void rfc_apply_tx_power_offset(uint8_t channel, int8_t *power_offset){
    rf_pri_update_tx_power_offset(channel, power_offset);
    uint32_t rfg_index, dg;
    rf_pri_query_txgain_table(0, &rfg_index, &dg);
    RF->dfe_ctrl_16.rf_tbb_ind_gc0 = rfg_index & 7;
    RF->dfe_ctrl_12.tx_dvga_gain_qdb_gc0 = dg;
    rf_pri_query_txgain_table(1, &rfg_index, &dg);
    RF->dfe_ctrl_16.rf_tbb_ind_gc1 = rfg_index & 7;
    RF->dfe_ctrl_12.tx_dvga_gain_qdb_gc1 = dg;
    rf_pri_query_txgain_table(2, &rfg_index, &dg);
    RF->dfe_ctrl_16.rf_tbb_ind_gc2 = rfg_index & 7;
    RF->dfe_ctrl_12.tx_dvga_gain_qdb_gc2 = dg;
    rf_pri_query_txgain_table(3, &rfg_index, &dg);
    RF->dfe_ctrl_16.rf_tbb_ind_gc3 = rfg_index & 7;
    RF->dfe_ctrl_12.tx_dvga_gain_qdb_gc3 = dg;
    rf_pri_query_txgain_table(4, &rfg_index, &dg);
    RF->dfe_ctrl_16.rf_tbb_ind_gc4 = rfg_index & 7;
    RF->dfe_ctrl_13.tx_dvga_gain_qdb_gc4 = dg;
    rf_pri_query_txgain_table(5, &rfg_index, &dg);
    RF->dfe_ctrl_16.rf_tbb_ind_gc5 = rfg_index & 7;
    RF->dfe_ctrl_13.tx_dvga_gain_qdb_gc5 = dg;
    rf_pri_query_txgain_table(6, &rfg_index, &dg);
    RF->dfe_ctrl_16.rf_tbb_ind_gc6 = rfg_index & 7;
    RF->dfe_ctrl_13.tx_dvga_gain_qdb_gc6 = dg;
    rf_pri_query_txgain_table(7, &rfg_index, &dg);
    RF->dfe_ctrl_16.rf_tbb_ind_gc7 = rfg_index & 7;
    RF->dfe_ctrl_13.tx_dvga_gain_qdb_gc7 = dg;
    rf_pri_query_txgain_table(8, &rfg_index, &dg);
    RF->dfe_ctrl_17.rf_tbb_ind_gc8 = rfg_index & 7;
    RF->dfe_ctrl_14.tx_dvga_gain_qdb_gc8 = dg;
    rf_pri_query_txgain_table(9, &rfg_index, &dg);
    RF->dfe_ctrl_17.rf_tbb_ind_gc9 = rfg_index & 7;
    RF->dfe_ctrl_14.tx_dvga_gain_qdb_gc9 = dg;
    rf_pri_query_txgain_table(10, &rfg_index, &dg);
    RF->dfe_ctrl_17.rf_tbb_ind_gc10 = rfg_index & 7;
    RF->dfe_ctrl_14.tx_dvga_gain_qdb_gc10 = dg;
    rf_pri_query_txgain_table(11, &rfg_index, &dg);
    RF->dfe_ctrl_17.rf_tbb_ind_gc11 = rfg_index & 7;
    RF->dfe_ctrl_14.tx_dvga_gain_qdb_gc11 = dg;
    rf_pri_query_txgain_table(12, &rfg_index, &dg);
    RF->dfe_ctrl_17.rf_tbb_ind_gc12 = rfg_index & 7;
    RF->dfe_ctrl_15.tx_dvga_gain_qdb_gc12 = dg;
    rf_pri_query_txgain_table(13, &rfg_index, &dg);
    RF->dfe_ctrl_17.rf_tbb_ind_gc13 = rfg_index & 7;
    RF->dfe_ctrl_15.tx_dvga_gain_qdb_gc13 = dg;
    rf_pri_query_txgain_table(14, &rfg_index, &dg);
    RF->dfe_ctrl_17.rf_tbb_ind_gc14 = rfg_index & 7;
    RF->dfe_ctrl_15.tx_dvga_gain_qdb_gc14 = dg;
    rf_pri_query_txgain_table(15, &rfg_index, &dg);
    RF->dfe_ctrl_17.rf_tbb_ind_gc15 = rfg_index & 7;
    RF->dfe_ctrl_15.tx_dvga_gain_qdb_gc15 = dg;

}



void rfc_apply_tx_dvga(int8_t *dvga_qdb) {
    RF->dfe_ctrl_12.tx_dvga_gain_qdb_gc0 = dvga_qdb[0];
    RF->dfe_ctrl_12.tx_dvga_gain_qdb_gc1 = dvga_qdb[1];
    RF->dfe_ctrl_12.tx_dvga_gain_qdb_gc2 = dvga_qdb[2];
    RF->dfe_ctrl_12.tx_dvga_gain_qdb_gc3 = dvga_qdb[3];

    RF->dfe_ctrl_13.tx_dvga_gain_qdb_gc4 = dvga_qdb[4];
    RF->dfe_ctrl_13.tx_dvga_gain_qdb_gc5 = dvga_qdb[5];
    RF->dfe_ctrl_13.tx_dvga_gain_qdb_gc6 = dvga_qdb[6];
    RF->dfe_ctrl_13.tx_dvga_gain_qdb_gc7 = dvga_qdb[7];

    RF->dfe_ctrl_14.tx_dvga_gain_qdb_gc8 = dvga_qdb[8];
    RF->dfe_ctrl_14.tx_dvga_gain_qdb_gc9 = dvga_qdb[9];
    RF->dfe_ctrl_14.tx_dvga_gain_qdb_gc10 = dvga_qdb[10];
    RF->dfe_ctrl_14.tx_dvga_gain_qdb_gc11 = dvga_qdb[11];

    RF->dfe_ctrl_15.tx_dvga_gain_qdb_gc12 = dvga_qdb[12];
    RF->dfe_ctrl_15.tx_dvga_gain_qdb_gc13 = dvga_qdb[13];
    RF->dfe_ctrl_15.tx_dvga_gain_qdb_gc14 = dvga_qdb[14];
    RF->dfe_ctrl_15.tx_dvga_gain_qdb_gc15 = dvga_qdb[15];
}

void rfc_coex_force_to(uint32_t force_enable, uint32_t bbmode) {
    RF->rf_fsm_ctrl_hw.rf_fsm_ctrl_en = 0;
    wait_us(10);
    RF->rfif_dfe_ctrl0.bbmode_4s = bbmode & 1;
    RF->rfif_dfe_ctrl0.bbmode_4s_en = (force_enable != 0);
}

void rfc_config_channel(uint32_t channel_freq) {
    RF->rfif_dig_ctrl.rfif_int_lo_unlocked_mask = 1;
    RF->rfctrl_hw_en.lo_ctrl_hw = 1;
    RF->rfctrl_hw_en.sdm_ctrl_hw = 1;
    RF->rfctrl_hw_en.pu_ctrl_hw = 1;
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

uint32_t rfc_get_power_level(uint32_t formatmod, int32_t power) {
    if (formatmod > 2)
        formatmod = 0;
    return rf_pri_get_txgain_index(power, formatmod) << 2;
}

void rfc_init(uint32_t xtalfreq_hz) {
    RF->rfif_dfe_ctrl0.bbmode_4s = 0;
    RF->rfif_dfe_ctrl0.bbmode_4s_en = 1;
    int xtal_mode = 2;
    if (xtalfreq_hz != 32000000) {
        if (xtalfreq_hz < 0x1e84801) {
            xtal_mode = 0;
            if (xtalfreq_hz == 24000000) {
                xtal_mode = 1;
            } else {
                xtal_mode = 4;
            }
        } else {
            if (xtalfreq_hz != 40000000) {
                xtal_mode = 5;
                if (xtalfreq_hz != 52000000) {
                    if (xtalfreq_hz == 38400000) {
                        xtal_mode = 3;
                    } else {
                        xtal_mode = 4;
                    }
                }
            }
        }
    }
}

void _print_channel_info() {
    for (int i = 0; i < 8; i++) {
        wait_us(1000);
    }
    for (int i = 0; i < 8; i++) {
        wait_us(1000);
    }
}