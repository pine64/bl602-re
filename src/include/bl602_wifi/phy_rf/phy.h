#ifndef _PHY_H_
#define _PHY_H_
#include <stdint.h>


/// Invalid value for some octet parameters reserved for the future
#define PHY_UNUSED           0xFF

/// Maximum number of words in the configuration buffer
#define PHY_CFG_BUF_SIZE     16


/*
 * DEFINES
 ****************************************************************************************
 */
/// Invalid value for some octet parameters reserved for the future
#define PHY_UNUSED           0xFF

/// Maximum number of words in the configuration buffer
#define PHY_CFG_BUF_SIZE     16

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

enum
{
    /// Primary radar detection chain (i.e for the operating channel)
    PHY_PRIM,
    /// Secondary radar detection chain
    PHY_SEC,
};

/// Structure containing the information about the PHY channel that was used for this RX
struct phy_channel_info
{
    /// PHY channel information 1
    uint32_t info1;
    /// PHY channel information 2
    uint32_t info2;
};

struct phy_radar_pulse
{
    /// In our PHY a radar pulse is only one 32-bit word
    uint32_t pulse;
};

/// Structure containing the parameters of the PHY configuration
struct phy_cfg_tag
{
    /// Buffer containing the parameters specific for the PHY used
    uint32_t parameters[PHY_CFG_BUF_SIZE];
};

typedef struct phy_cfg_tag phy_cfg_tag;
#endif