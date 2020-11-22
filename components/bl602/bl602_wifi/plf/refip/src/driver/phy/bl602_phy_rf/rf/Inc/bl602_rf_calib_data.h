
typedef struct anon_struct.conflict34e5c anon_struct.conflict34e5c, *anon_struct.conflict34e5c;

typedef ulong uint32_t;

typedef struct rf_calib1_tag rf_calib1_tag, *rf_calib1_tag;

typedef struct rf_calib2_tag rf_calib2_tag, *rf_calib2_tag;

typedef struct rf_calib3_tag rf_calib3_tag, *rf_calib3_tag;

typedef struct rf_calib4_tag rf_calib4_tag, *rf_calib4_tag;

typedef ushort uint16_t;

struct rf_calib1_tag {
    uint32_t gpadc_oscode:12;
    uint32_t rx_offset_i:10;
    uint32_t rx_offset_q:10;
    uint32_t rbb_cap1_fc_i:6;
    uint32_t rbb_cap1_fc_q:6;
    uint32_t rbb_cap2_fc_i:6;
    uint32_t rbb_cap2_fc_q:6;
    undefined field_0x7;
    uint32_t tx_dc_comp_i:12;
    uint32_t tx_dc_comp_q:12;
    uint32_t tmx_cs:3;
    uint32_t txpwr_att_rec:3;
    uint32_t pa_pwrmx_osdac:4;
    uint32_t tmx_csh:3;
    uint32_t tmx_csl:3;
    uint32_t tsen_refcode_rfcal:12;
    undefined field_0xf;
    uint32_t tsen_refcode_corner:12;
    uint32_t rc32k_code_fr_ext:10;
    uint32_t rc32m_code_fr_ext:8;
    uint32_t saradc_oscode:10;
    uint16_t fcal_4osmx:4;
    undefined field_0x16;
    undefined field_0x17;
};

struct rf_calib4_tag {
    uint32_t tosdac_i:6;
    uint32_t tosdac_q:6;
    uint32_t tx_iq_gain_comp:11;
    undefined field_0x3;
    uint32_t tx_iq_phase_comp:10;
    undefined field_0x6;
    undefined field_0x7;
};

struct rf_calib2_tag {
    uint16_t fcal:8;
    uint16_t acal:5;
};

struct rf_calib3_tag {
    uint32_t rosdac_i:6;
    uint32_t rosdac_q:6;
    uint32_t rx_iq_gain_comp:11;
    undefined field_0x3;
    uint32_t rx_iq_phase_comp:10;
    undefined field_0x6;
    undefined field_0x7;
};

struct anon_struct.conflict34e5c {
    uint32_t inited;
    struct rf_calib1_tag cal;
    struct rf_calib2_tag lo[21];
    undefined field_0x46;
    undefined field_0x47;
    struct rf_calib3_tag rxcal[4];
    struct rf_calib4_tag txcal[8];
};

typedef struct rf_calib_data_tag rf_calib_data_tag, *rf_calib_data_tag;

struct rf_calib_data_tag {
    uint32_t inited;
    struct rf_calib1_tag cal;
    struct rf_calib2_tag lo[21];
    undefined field_0x46;
    undefined field_0x47;
    struct rf_calib3_tag rxcal[4];
    struct rf_calib4_tag txcal[8];
};

