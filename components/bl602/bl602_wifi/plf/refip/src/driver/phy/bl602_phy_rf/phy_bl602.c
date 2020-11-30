void agc_config(void);
void agc_download(void);
void bz_phy_reset(void);
void mdm_reset(void);
_Bool phy_bfmee_supported(void);
_Bool phy_bfmer_supported(void);
typedef struct phy_bl602_cfg_tag phy_bl602_cfg_tag, *phy_bl602_cfg_tag;

struct phy_bl602_cfg_tag {
    uint32_t reserved;
};

void phy_config_rxgain(int offset);
typedef struct phy_env_tag phy_env_tag, *phy_env_tag;

struct phy_env_tag {
    struct phy_bl602_cfg_tag cfg;
    uint16_t chnl_prim20_freq;
    uint16_t chnl_center1_freq;
    uint16_t chnl_center2_freq;
    uint8_t band;
    uint8_t chnl_type;
};

void phy_get_channel(phy_channel_info * info, uint8_t index);
uint8_t phy_get_mac_freq(void);
uint8_t phy_get_nss(void);
uint8_t phy_get_ntx(void);
void phy_get_rf_gain_capab(int8_t * max, int8_t * min);
void phy_get_rf_gain_idx(int8_t * power, uint8_t * idx);
void phy_get_rf_gain_idx_vs_mode(uint8_t mode, int8_t * power, uint8_t * idx);
void phy_get_trpc_idx(uint8_t formatmod, uint8_t mcs, int8_t power, uint8_t * idx);
void phy_get_version(uint32_t * version_1, uint32_t * version_2);
void phy_hw_init(phy_bl602_cfg_tag * cfg);
void phy_hw_set_channel(uint8_t band, uint16_t freq, uint16_t freq1, uint8_t chantype);
void phy_init(phy_cfg_tag * config);
_Bool phy_ldpc_rx_supported(void);
_Bool phy_ldpc_tx_supported(void);
int phy_mdm_conf(uint8_t chan_type);
void phy_mdm_isr(void);
_Bool phy_mu_mimo_rx_supported(void);
_Bool phy_mu_mimo_tx_supported(void);
void phy_powroffset_set(int8_t * power_offset);
void phy_rc_isr(void);
void phy_reset(void);
void phy_set_channel(uint8_t band, uint8_t type, uint16_t prim20_freq, uint16_t center1_freq, uint16_t center2_freq, uint8_t index);
void phy_stop(void);
_Bool phy_vht_supported(void);
void tx_power_config(void);
#if 0 //TODO EXISTS ALEADY
/**
* @file phy_bl602.c
* Source file for BL602
*/
#include "phy_bl602.h"


struct phy_bl602_cfg_tag {
    uint32_t reserved;
 // +0
};

struct phy_env_tag {
    struct phy_bl602_cfg_tag cfg;
 // +0
    uint16_t chnl_prim20_freq;
 // +4
    uint16_t chnl_center1_freq;
 // +6
    uint16_t chnl_center2_freq;
 // +8
    uint8_t band;
 // +10
    uint8_t chnl_type;
 // +11
};

struct phy_env_tag phy_env[1];
static int8_t rxgain_offset_vs_temperature;
static int8_t poweroffset[14];

void phy_mdm_isr(void);
void phy_rc_isr(void);




/** phy_mdm_isr
 */
void phy_mdm_isr(void)
{
	ASSER_ERR(FALSE);
	return;
}

/** phy_rc_isr
 */
void phy_rc_isr(void)
{
	ASSER_ERR(FALSE);
	return;
}
#endf 0 //TODO EXISTS ALEADY
