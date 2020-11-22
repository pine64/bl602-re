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

