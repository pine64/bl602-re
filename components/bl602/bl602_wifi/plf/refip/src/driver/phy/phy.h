void mpif_clk_init(void);
typedef struct phy_cfg_tag phy_cfg_tag, *phy_cfg_tag;

struct phy_cfg_tag {
    uint32_t parameters[16];
};

typedef struct phy_channel_info phy_channel_info, *phy_channel_info;

struct phy_channel_info {
    uint32_t info1;
    uint32_t info2;
};

uint16_t phy_channel_to_freq(uint8_t band, int channel);
int phy_freq_to_channel(uint8_t band, uint16_t freq);
void phy_get_channel(void);
void phy_get_mac_freq(void);
void phy_get_nss(void);
void phy_get_ntx(void);
void phy_get_rf_gain_capab(void);
void phy_get_rf_gain_idx(void);
void phy_get_version(void);
void phy_init(void);
void phy_ldpc_tx_supported(void);
void phy_set_channel(void);
