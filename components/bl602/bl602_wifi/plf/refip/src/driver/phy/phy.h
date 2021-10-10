#ifndef __PHY_H__
#define __PHY_H__

#include <stdbool.h>
#include <stdint.h>


struct phy_channel_info {
  uint32_t info1; // +0
  uint32_t info2; // +4
};

struct phy_cfg_tag {
  uint32_t parameters[16]; // +0
};

void phy_init(const struct phy_cfg_tag *config);
void phy_get_version(uint32_t *version_1, uint32_t *version_2);
void phy_set_channel(uint8_t band, uint8_t type, uint16_t prim20_freq, uint16_t center1_freq, uint16_t center2_freq, uint8_t index);
void phy_get_channel(struct phy_channel_info *info, uint8_t index);
void phy_stop(void);
int phy_freq_to_channel(uint8_t band, uint16_t freq);
uint16_t phy_channel_to_freq(uint8_t band, int channel);
void mpif_clk_init(void);
bool phy_ldpc_tx_supported(void);
uint8_t phy_get_nss(void);
uint8_t phy_get_ntx(void);
void phy_get_rf_gain_idx(int8_t *power, uint8_t *idx);
void phy_get_rf_gain_capab(int8_t *max, int8_t *min);
uint8_t phy_get_mac_freq(void);

#endif // __PHY_H__
