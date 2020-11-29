typedef struct anon_struct anon_struct, anon_struct;

struct anon_struct {
    uint32_t index;
    int32_t dvga;
};

typedef struct anon_struct anon_struct, *anon_struct;

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

typedef struct notch_param notch_param, *notch_param;

struct notch_param {
    uint32_t notch_en;
    int32_t spur_freq;
};

typedef struct regs_to_opti regs_to_opti, *regs_to_opti;

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

void rf_pri_get_notch_param(void);
void rf_pri_get_txgain_index(void);
void rf_pri_get_txgain_max(void);
void rf_pri_get_txgain_min(void);
void rf_pri_get_vco_freq_cw(void);
void rf_pri_get_vco_idac_cw(void);
void rf_pri_init(void);
void rf_pri_query_txgain_table(void);
void rf_pri_tx_gain_comp(void);
void rf_pri_update_param(void);
void rf_pri_update_power_offset(void);
void rf_pri_update_tx_power_offset(void);
void rf_pri_xtalfreq(void);
typedef struct tx_pwr_index tx_pwr_index, *tx_pwr_index;

struct tx_pwr_index {
    uint32_t index;
    int32_t dvga;
};

#if 0 //TODO EXISTS ALEADY
/**
* @file bl602_rf_private.h
* Header file for BL602
*/
#ifndef __BL602_RF_PRIVATE_H__
#define __BL602_RF_PRIVATE_H__

typedef volatile struct {
    uint32_t index; // +0
    int32_t dvga; // +4
} tx_pwr_index;
tx_pwr_index *tp_index;
typedef volatile struct {
    uint32_t notch_en; // +0
    int32_t spur_freq; // +4
} notch_param;
typedef volatile struct {
    uint32_t vbcore; // +0
    uint32_t iet; // +4
    uint32_t vbcore_11n; // +8
    uint32_t iet_11n; // +12
    uint32_t vbcore_11g; // +16
    uint32_t iet_11g; // +20
    uint32_t vbcore_11b; // +24
    uint32_t iet_11b; // +28
    uint32_t lo_fbdv_halfstep_en; // +32
    uint32_t lo_fbdv_halfstep_en_tx; // +36
    uint32_t lo_fbdv_halfstep_en_rx; // +40
    uint32_t clkpll_reset_postdiv; // +44
    uint32_t clkpll_dither_sel; // +48
} regs_to_opti;
regs_to_opti *opti_regs;

#endif // __BL602_RF_PRIVATE_H__
#endf 0 //TODO EXISTS ALEADY
