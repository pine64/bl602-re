#ifndef __BL602_RF_CALIB_DATA_H__
#define __BL602_RF_CALIB_DATA_H__

#include <stdint.h>


typedef struct {
    uint32_t gpadc_oscode:12; // +0
    uint32_t rx_offset_i:10; // +0
    uint32_t rx_offset_q:10; // +0
    uint32_t rbb_cap1_fc_i:6; // +4
    uint32_t rbb_cap1_fc_q:6; // +4
    uint32_t rbb_cap2_fc_i:6; // +4
    uint32_t rbb_cap2_fc_q:6; // +4
    uint32_t tx_dc_comp_i:12; // +8
    uint32_t tx_dc_comp_q:12; // +8
    uint32_t tmx_cs:3; // +8
    uint32_t txpwr_att_rec:3; // +8
    uint32_t pa_pwrmx_osdac:4; // +12
    uint32_t tmx_csh:3; // +12
    uint32_t tmx_csl:3; // +12
    uint32_t tsen_refcode_rfcal:12; // +12
    uint32_t tsen_refcode_corner:12; // +16
    uint32_t rc32k_code_fr_ext:10; // +16
    uint32_t rc32m_code_fr_ext:8; // +16
    uint32_t saradc_oscode:10; // +20
    uint16_t fcal_4osmx:4; // +20
} rf_calib1_tag;

typedef struct {
    uint16_t fcal:8; // +0
    uint16_t acal:5; // +0
} rf_calib2_tag;

typedef struct {
    uint32_t rosdac_i:6; // +0
    uint32_t rosdac_q:6; // +0
    uint32_t rx_iq_gain_comp:11; // +0
    uint32_t rx_iq_phase_comp:10; // +4
} rf_calib3_tag;

typedef struct {
    uint32_t tosdac_i:6; // +0
    uint32_t tosdac_q:6; // +0
    uint32_t tx_iq_gain_comp:11; // +0
    uint32_t tx_iq_phase_comp:10; // +4
} rf_calib4_tag;

typedef volatile struct {
    uint32_t inited; // +0
    rf_calib1_tag cal; // +4
    rf_calib2_tag lo[21]; // +28
    rf_calib3_tag rxcal[4]; // +72
    rf_calib4_tag txcal[8]; // +104
} rf_calib_data_tag;

extern rf_calib_data_tag *rf_calib_data;

#endif // __BL602_RF_CALIB_DATA_H__
