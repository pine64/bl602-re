#include <stdint.h>
#include <phy/mdm.h>
#include <phy/agc.h>

struct phy_bl602_cfg_tag {
    uint32_t reserved;
}; // :48:8

struct phy_channel_info
{
    /// PHY channel information 1
    uint32_t info1;
    /// PHY channel information 2
    uint32_t info2;
};

struct phy_env_tag {
    struct phy_bl602_cfg_tag cfg;
    uint16_t chnl_prim20_freq;
    uint16_t chnl_center1_freq;
    uint16_t chnl_center2_freq;
    uint8_t band;
    uint8_t chnl_type;
}; // :54:8

struct phy_env_tag phy_env[1]; // :75:20
static int8_t rxgain_offset_vs_temperature; // :79:15
static int8_t poweroffset[14]; // :80:15

void phy_config_rxgain(int offset) {
    if (rxgain_offset_vs_temperature != offset) {
        rxgain_offset_vs_temperature = (int8_t) offset;
        AGC->rxgain_offset_vs_temperature[0] = (int)rxgain_offset_vs_temperature + 3;
        AGC->rxgain_offset_vs_temperature[1] = (int)rxgain_offset_vs_temperature + 11;
        AGC->rxgain_offset_vs_temperature[2] = (int)rxgain_offset_vs_temperature + 18;
        AGC->rxgain_offset_vs_temperature[3] = (int)rxgain_offset_vs_temperature + 25;
        AGC->rxgain_offset_vs_temperature[4] = (int)rxgain_offset_vs_temperature + 32;
        AGC->rxgain_offset_vs_temperature[5] = (int)rxgain_offset_vs_temperature + 39;
        AGC->rxgain_offset_vs_temperature[6] = (int)rxgain_offset_vs_temperature + 45;
        AGC->rxgain_offset_vs_temperature[7] = (int)rxgain_offset_vs_temperature + 53;
        AGC->rxgain_offset_vs_temperature[8] = (int)rxgain_offset_vs_temperature + 59;
    }
}

void phy_get_channel(struct phy_channel_info *info, uint8_t index) {
  info->info1 = (uint32_t)phy_env[0].chnl_type << 8 | (uint32_t)phy_env[0].chnl_prim20_freq << 16 |
                (uint32_t)phy_env[0].band;
  info->info2 = phy_env[0].chnl_center1_freq | ((uint32_t)phy_env[0].chnl_center2_freq << 16);
}

uint8_t phy_get_mac_freq(void) {
    return 0x28;
}

uint8_t phy_get_nss(void) {
    return (uint8_t)(( (int8_t)(MDM->version.nss  & 0xf) )- 1);
}

void phy_get_version(uint32_t *version_1,uint32_t *version_2) {
    *version_1 = MDM->version.value;
    *version_2 = 0;
    return;
}

void agc_config(void) {
    AGC->RWNXAGCCNTL.set_0x0_0 = 0;
    AGC->RWNXAGCCNTL.set_0x0_1 = 0;
    AGC->r0xb3a4.set_0x0_2 = 0;
    AGC->r0xb3a4.set_0x0_3 = 0;
    
}
