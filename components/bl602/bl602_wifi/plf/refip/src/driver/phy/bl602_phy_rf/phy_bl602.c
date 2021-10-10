#include "phy_bl602.h"

#include <stdbool.h>
#include <stdint.h>

#include <driver/phy/phy.h>


struct phy_bl602_cfg_tag {
  uint32_t reserved; // +0
};

struct phy_env_tag {
  struct phy_bl602_cfg_tag cfg; // +0
  uint16_t chnl_prim20_freq; // +4
  uint16_t chnl_center1_freq; // +6
  uint16_t chnl_center2_freq; // +8
  uint8_t band; // +10
  uint8_t chnl_type; // +11
};


extern struct phy_env_tag phy_env[1];
extern const uint32_t agcmem[];
int8_t rxgain[9];
static int8_t rxgain_offset_vs_temperature;
static int8_t poweroffset[14];


void agc_download(void)
{
	__builtin_trap();
}

void phy_config_rxgain(int offset)
{
	__builtin_trap();
}

void agc_config(void)
{
	__builtin_trap();
}

void mdm_reset(void)
{
	__builtin_trap();
}

int phy_mdm_conf(uint8_t chan_type)
{
	__builtin_trap();
}

void phy_powroffset_set(int8_t *power_offset)
{
	__builtin_trap();
}

void phy_hw_set_channel(uint8_t band, uint16_t freq, uint16_t freq1, uint8_t chantype)
{
	__builtin_trap();
}

void tx_power_config(void)
{
	__builtin_trap();
}

void phy_hw_init(const struct phy_bl602_cfg_tag *cfg)
{
	__builtin_trap();
}

void phy_init(const struct phy_cfg_tag *config)
{
	__builtin_trap();
}

void phy_reset(void)
{
	__builtin_trap();
}

void phy_get_channel(struct phy_channel_info *info, uint8_t index)
{
	__builtin_trap();
}

void phy_set_channel(uint8_t band, uint8_t type, uint16_t prim20_freq, uint16_t center1_freq, uint16_t center2_freq, uint8_t index)
{
	__builtin_trap();
}

void phy_get_version(uint32_t *version_1, uint32_t *version_2)
{
	__builtin_trap();
}

bool phy_vht_supported(void)
{
	__builtin_trap();
}

uint8_t phy_get_nss(void)
{
	__builtin_trap();
}

uint8_t phy_get_ntx(void)
{
	__builtin_trap();
}

void phy_stop(void)
{
	__builtin_trap();
}

bool phy_bfmee_supported(void)
{
	__builtin_trap();
}

bool phy_bfmer_supported(void)
{
	__builtin_trap();
}

bool phy_mu_mimo_rx_supported(void)
{
	__builtin_trap();
}

bool phy_mu_mimo_tx_supported(void)
{
	__builtin_trap();
}

bool phy_ldpc_tx_supported(void)
{
	__builtin_trap();
}

bool phy_ldpc_rx_supported(void)
{
	__builtin_trap();
}

uint8_t phy_get_mac_freq(void)
{
	__builtin_trap();
}

void phy_get_rf_gain_idx(int8_t *power, uint8_t *idx)
{
	__builtin_trap();
}

void phy_get_rf_gain_idx_vs_mode(uint8_t mode, int8_t *power, uint8_t *idx)
{
	__builtin_trap();
}

void phy_get_trpc_idx(uint8_t formatmod, uint8_t mcs, int8_t power, uint8_t *idx)
{
	__builtin_trap();
}

void phy_get_rf_gain_capab(int8_t *max, int8_t *min)
{
	__builtin_trap();
}

void bz_phy_reset(void)
{
	__builtin_trap();
}

void mpif_clk_init(void)
{
	__builtin_trap();
}

void phy_mdm_isr(void)
{
	__builtin_trap();
}

void phy_rc_isr(void)
{
	__builtin_trap();
}
