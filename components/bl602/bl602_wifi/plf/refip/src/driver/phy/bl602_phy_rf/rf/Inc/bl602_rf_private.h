#ifndef __BL602_RF_PRIVATE_H__
#define __BL602_RF_PRIVATE_H__

#include <stdint.h>


typedef volatile struct {
    uint32_t index; // +0
    int32_t dvga; // +4
} tx_pwr_index;
extern tx_pwr_index *tp_index;

typedef volatile struct {
    uint32_t notch_en; // +0
    int32_t spur_freq; // +4
} notch_param;
extern notch_param *notch_p;

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
extern regs_to_opti *opti_regs;

void rf_pri_init(uint8_t reset, uint8_t chipv);
void rf_pri_update_tx_power_offset(uint8_t channel, int8_t *power_offset);
void rf_pri_update_power_offset(int32_t *power_offset);
void rf_pri_update_param(uint32_t chanfreq_MHz);
uint32_t rf_pri_get_vco_freq_cw(uint32_t chanfreq_MHz);
uint32_t rf_pri_get_vco_idac_cw(uint32_t chanfreq_MHz);
int32_t rf_pri_get_txgain_max(void);
int32_t rf_pri_get_txgain_min(void);
uint32_t rf_pri_get_txgain_index(int32_t pwr, uint32_t mode);
void rf_pri_query_txgain_table(uint32_t index, uint32_t *rfg_index, uint32_t *dg);
void rf_pri_get_notch_param(uint32_t chanfreq_MHz, uint8_t *ncf_on, int32_t *ncf_freq_Hz);
void rf_pri_xtalfreq(uint32_t xtalfreq);
void rf_pri_tx_gain_comp(int32_t Tsens);

#endif // __BL602_RF_PRIVATE_H__
