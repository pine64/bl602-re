#ifndef _MAC_COMMON_H_
#define _MAC_COMMON_H_
#include <blconfig.h>
/*
 * DEFINES
 ****************************************************************************************
 */
///Maximum number of scan results that can be stored.
#define MAX_BSS_LIST            32

/// Error code for invalid TID.
#define INVALID_TID_IDX         0xFF

/// Error code for invalid access category.
#define INVALID_ACCESS_CATEGORY 0xFF

/// Maximum number of traffic streams per station.
#define MAC_TID_MAX             16

/// Station indexes.
enum
{
    /// BROADCAST/GROUP DATA TX STA Index for first virtual AP.
    BROADCAST_STA_IDX_MIN = NX_REMOTE_STA_MAX,
    /// BROADCAST/GROUP DATA TX STA Index for last virtual AP.
    BROADCAST_STA_IDX_MAX = NX_REMOTE_STA_MAX + NX_VIRT_DEV_MAX - 1,
    /// Maximum number of supported STA
    STA_MAX,

    /// Invalid STA Index used for error checking.
    INVALID_STA_IDX = 0xFF
};

/// Macro giving the BCMC station index for the VIF index passed as parameter
#define VIF_TO_BCMC_IDX(idx)    (BROADCAST_STA_IDX_MIN + (idx))
// for some reason here the value is 3
//#define VIF_TO_BCMC_IDX(idx)    (3 + (idx))

/// Maximum size of the frame body for frames that are internally carried.
#define MAC_FRAME_LEN 512

/// MAC Frame structure.
struct mac_frame
{
    /// Actual length of the frame.
    uint16_t length;
    /// Array containing the frame body.
    uint8_t array[MAC_FRAME_LEN];
};

/// @}

#endif

