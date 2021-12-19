#ifndef _PHY_BL602_H_
#include <stdint.h>
#include <phy_rf/phy.h>

/// Maximum output power TODO
#define PHY_BL602_MAX_PWR_24G   		(20)
/// Minimum output power TODO
#define PHY_BL602_MIN_PWR_24G   		(-6)
/// MAC core clock frequency in MHz
#define PHY_BL602_MACCORE_FREQ_MHZ  	(40)
/// AGC memory address and size
#define PHY_BL602_AGC_MEM_ADDR 			(0x54c0a000)
#define PHY_BL602_AGC_MEM_SIZE 			(2048)

enum
{
    PHY_FORMATMOD_11B,
    PHY_FORMATMOD_11G,
    PHY_FORMATMOD_11N,
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
uint8_t phy_get_nss(void);
void phy_get_version(uint32_t *version_1,uint32_t *version_2);
void agc_config(void);
void mdm_reset();
void mpif_clk_init(void);
uint8_t phy_vht_supported();
uint8_t phy_get_ntx(void);
uint8_t phy_get_nss(void);
void phy_stop(void);
void phy_reset(void);
void phy_rc_isr(void);
uint8_t phy_mu_mimo_tx_supported(void);
uint8_t phy_mu_mimo_rx_supported(void);
void phy_mdm_isr(void);
uint8_t phy_ldpc_tx_supported(void);
uint8_t phy_ldpc_rx_supported(void);
void phy_init(phy_cfg_tag *config);
void phy_set_channel(uint8_t band,uint8_t type,uint16_t prim20_freq,uint16_t center1_freq,
                    uint16_t center2_freq,uint8_t index);
void phy_hw_set_channel(uint8_t band, uint16_t freq, uint16_t freq1, uint8_t chantype);

void phy_powroffset_set(int8_t *power_offset);
void phy_get_trpc_idx(uint8_t formatmod,uint8_t mcs,int8_t power,uint8_t *idx);
void phy_get_rf_gain_idx_vs_mode(uint8_t mode,int8_t *power,uint8_t *idx);
void phy_get_rf_gain_idx(int8_t *power,uint8_t *idx);
void phy_get_rf_gain_capab(int8_t *max,int8_t *min);
uint8_t phy_bfmer_supported(void);
uint8_t phy_bfmee_supported();
void mpif_clk_init(void);
void bz_phy_reset(void);

// not sure if there functions are belong to phy_bl602
// but they seem to be inlined in many funcs

int static phy_freq_to_channel(uint8_t band, uint16_t freq) {
    int base = 0;
    if (band == 0) {
        // 2.4GHz
        if (freq == 2484)
            return 14;
        if (freq - 2407 > 65)
            return 0;
        base = -2407;
    } else {
        if (band == 1) {
            // 5GHz
            if (freq > 5825)
                return 0;
            base = -5000;
        } else return 0;
    }
    return (((int)freq) + base) / 5;
}


uint16_t static phy_channel_to_freq(uint8_t band, int channel) {
    int freq = 0;
    if (band == 0) {
        // 2.4GHz
        if (channel > 14) {
            return 0xffff;
        }
        if (channel == 14) {
            return 2484;
        }
        freq = 2407;
    } else {
        // 5GHz
        if (channel > 165) {
            return 0xffff;
        }
        freq = 5000;
    }
    return channel * 5 + freq;
}

#endif