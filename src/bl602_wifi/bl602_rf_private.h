#ifndef _BL602_RF_PRIVATE_H_
#define _BL602_RF_PRIVATE_H_
#include <stdint.h>

struct anon_struct1 {
    uint32_t index;
    int32_t dvga;
};

typedef struct anon_struct1 anon_struct1;

struct anon_struct {
    uint32_t vbcore;
    uint32_t iet;
    uint32_t vbcore_11n;
    uint32_t iet_11n;
    uint32_t vbcore_11g;
    uint32_t iet_11g;
    uint32_t vbcore_11b;
    uint32_t iet_11b;
    uint32_t lo_fbdv_halfstep_en;
    uint32_t lo_fbdv_halfstep_en_tx;
    uint32_t lo_fbdv_halfstep_en_rx;
    uint32_t clkpll_reset_postdiv;
    uint32_t clkpll_dither_sel;
};

struct notch_param {
    uint32_t notch_en;
    int32_t spur_freq;
};

typedef struct notch_param notch_param;

struct regs_to_opti {
    uint32_t vbcore;
    uint32_t iet;
    uint32_t vbcore_11n;
    uint32_t iet_11n;
    uint32_t vbcore_11g;
    uint32_t iet_11g;
    uint32_t vbcore_11b;
    uint32_t iet_11b;
    uint32_t lo_fbdv_halfstep_en;
    uint32_t lo_fbdv_halfstep_en_tx;
    uint32_t lo_fbdv_halfstep_en_rx;
    uint32_t clkpll_reset_postdiv;
    uint32_t clkpll_dither_sel;
};

typedef struct regs_to_opti regs_to_opti;

struct tx_pwr_index {
    uint32_t index;
    int32_t dvga;
};

typedef struct tx_pwr_index tx_pwr_index;

void rf_pri_config_bandwidth(uint32_t bw);
void rf_pri_fcal(void);
void rf_pri_full_cal(void);
void rf_pri_get_notch_param(uint32_t chanfreq_MHz, uint8_t * ncf_on, int32_t * ncf_freq_Hz);
uint32_t rf_pri_get_txgain_index(int32_t pwr, uint32_t mode);
int32_t rf_pri_get_txgain_max(void);
int32_t rf_pri_get_txgain_min(void);
uint32_t rf_pri_get_vco_freq_cw(uint32_t chanfreq_MHz);
uint32_t rf_pri_get_vco_idac_cw(uint32_t chanfreq_MHz);
void rf_pri_init(uint8_t reset, uint8_t chipv);
void rf_pri_init_fast(uint32_t flag);
void rf_pri_lo_acal(void);
void rf_pri_query_txgain_table(uint32_t index, uint32_t * rfg_index, uint32_t * dg);
void rf_pri_rccal(void);
void rf_pri_tx_gain_comp(int32_t Tsens);
void rf_pri_txcal(void);
void rf_pri_update_param(uint32_t chanfreq_MHz);
void rf_pri_update_power_offset(int32_t * power_offset);
void rf_pri_update_tx_power_offset(uint8_t channel, int8_t * power_offset);
void rf_pri_update_txgain_tempos(int16_t tempos);
void rf_pri_xtalfreq(uint32_t xtalfreq);
#endif