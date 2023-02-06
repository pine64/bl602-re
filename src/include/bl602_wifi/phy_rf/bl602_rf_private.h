#ifndef _BL602_RF_PRIVATE_H_
#define _BL602_RF_PRIVATE_H_
#include <stdint.h>
#define RF_PRIVATE_PRESENT 1
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

enum {
    E_RF_XTAL_24M = 0,
    E_RF_XTAL_26M = 1,
    E_RF_XTAL_32M = 2,
    E_RF_XTAL_38M4 = 3,
    E_RF_XTAL_40M = 4,
    E_RF_XTAL_52M = 5,
};

enum
{
    E_RF_CHANNEL_2404M = 0,
    E_RF_CHANNEL_2408M,
    E_RF_CHANNEL_2412M,
    E_RF_CHANNEL_2416M,
    E_RF_CHANNEL_2420M,
    E_RF_CHANNEL_2424M,
    E_RF_CHANNEL_2428M,
    E_RF_CHANNEL_2432M,
    E_RF_CHANNEL_2436M,
    E_RF_CHANNEL_2440M,
    E_RF_CHANNEL_2444M,
    E_RF_CHANNEL_2448M,
    E_RF_CHANNEL_2452M,
    E_RF_CHANNEL_2456M,
    E_RF_CHANNEL_2460M,
    E_RF_CHANNEL_2464M,
    E_RF_CHANNEL_2468M,
    E_RF_CHANNEL_2472M,
    E_RF_CHANNEL_2476M,
    E_RF_CHANNEL_2480M,
    E_RF_CHANNEL_2484M,
    E_RF_CHANNEL_NUM
};

enum {
    E_RF_BRANCH_I = 0,
    E_RF_BRANCH_Q = 1,
    E_RF_GAIN = 2,
    E_RF_PHASE = 3
};

enum {
    E_RF_MODE_11B = 0,
    E_RF_MODE_11G = 1,
    E_RF_MODE_11N = 2,
};

enum {
    E_RF_GC_TBB_0DB = 0,
    E_RF_GC_TBB_6DB = 1,
    E_RF_GC_TBB_12DB = 2,
    E_RF_GC_TBB_18DB = 3,
    E_RF_GC_TBB_24DB = 4
};

enum {
    E_RF_MODE_IDLE = 0,
    E_RF_MODE_TX,
    E_RF_MODE_RX,
    E_RF_MODE_ROSCAL,
    E_RF_MODE_RCCAL,
    E_RF_MODE_TXCAL,
    E_RF_MODE_LO_ACAL,
    E_RF_MODE_LO_FCAL
};

enum {
    E_RF_RXCAL_GAIN_CNT = 4,
    E_RF_TXCAL_GAIN_CNT = 8,
    E_RF_TXPWR_TBL_CNT = 16,
};


#endif