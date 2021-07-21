#ifndef _PHY_BL602_H_
#include <stdint.h>

enum
{
    /// 2.4GHz Band
    PHY_BAND_2G4,
    /// 5GHz band
    PHY_BAND_5G,
    /// Number of bands
    PHY_BAND_MAX,
};

enum
{
    PHY_CHNL_BW_20,
    PHY_CHNL_BW_40,
    PHY_CHNL_BW_80,
    PHY_CHNL_BW_160,
    PHY_CHNL_BW_80P80,
    PHY_CHNL_BW_OTHER,
};

struct phy_channel_info
{
    /// PHY channel information 1
    uint32_t info1;
    /// PHY channel information 2
    uint32_t info2;
};

typedef struct phy_cfg_tag phy_cfg_tag;

struct phy_cfg_tag {
    uint32_t parameters[16];
};


struct phy_bl602_cfg_tag {
    uint32_t reserved;
}; // :48:8

struct phy_env_tag {
    struct phy_bl602_cfg_tag cfg;
    uint16_t chnl_prim20_freq;
    uint16_t chnl_center1_freq;
    uint16_t chnl_center2_freq;
    uint8_t band;
    uint8_t chnl_type;
}; // :54:8
struct phy_env_tag phy_env[1]; // :75:20

void phy_config_rxgain(int offset);
uint8_t phy_get_mac_freq();
void phy_get_channel(struct phy_channel_info *info, uint8_t index);
uint8_t phy_get_mac_freq(void);
uint8_t phy_get_nss(void);
void phy_get_version(uint32_t *version_1,uint32_t *version_2);
void agc_config(void);
void mdm_reset();
void mpif_clk_init(void);
uint8_t phy_vht_supported();
uint8_t phy_get_ntx(void);
uint8_t phy_get_nss(void);
#endif