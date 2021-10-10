#ifndef __KEYMGMTSTATYPES_H__
#define __KEYMGMTSTATYPES_H__

#include <wltypes.h>


typedef struct {
    UINT8 wep40:1; // +0
    UINT8 wep104:1; // +0
    UINT8 tkip:1; // +0
    UINT8 ccmp:1; // +0
    UINT8 rsvd:4; // +0
} Cipher_t;

typedef struct {
    UINT16 noRsn:1; // +0
    UINT16 wepStatic:1; // +0
    UINT16 wepDynamic:1; // +0
    UINT16 wpa:1; // +0
    UINT16 wpaNone:1; // +0
    UINT16 wpa2:1; // +0
    UINT16 cckm:1; // +0
    UINT16 wapi:1; // +0
    UINT16 wpa3:1; // +0
    UINT16 rsvd:7; // +0
} SecurityMode_t;

typedef enum {
    AKM_NONE = 0,
    AKM_1X = 1,
    AKM_PSK = 2,
    AKM_FT_1X = 3,
    AKM_FT_PSK = 4,
    AKM_SHA256_1X = 5,
    AKM_SHA256_PSK = 6,
    AKM_TDLS = 7,
    AKM_CCKM = 99,
    AKM_WPA_MAX = 2,
    AKM_RSN_MAX = 6,
    AKM_SUITE_MAX = 5,
} AkmType_e;

typedef AkmType_e AkmTypePacked_e;

typedef struct {
    UINT8 akmOui[3]; // +0
    AkmTypePacked_e akmType; // +3
} AkmSuite_t;

typedef struct {
    SecurityMode_t wpaType; // +0
    Cipher_t mcstCipher; // +2
    Cipher_t ucstCipher; // +3
} SecurityParams_t;

#endif // __KEYMGMTSTATYPES_H__
