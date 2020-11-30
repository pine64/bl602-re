/**
* @file wltypes.h
* Header file for BL602
*/
#ifndef __WLTYPES_H__
#define __WLTYPES_H__

typedef unsigned long long UINT64;typedef unsigned long UINT32;typedef long SINT32;typedef unsigned short UINT16;typedef short SINT16;typedef unsigned char UINT8;typedef signed char SINT8;typedef unsigned long uint32;typedef int sint32;typedef unsigned short uint16;typedef unsigned char uint8;typedef int BOOLEAN;typedef char CHAR;
typedef enum {
    FW_SUCCESS = 0,
    FAIL = 1,
} Status_e;
typedef void mdev_t;
enum wlan_security_type {
    WLAN_SECURITY_NONE = 0,
    WLAN_SECURITY_WEP_OPEN = 1,
    WLAN_SECURITY_WEP_SHARED = 2,
    WLAN_SECURITY_WPA = 3,
    WLAN_SECURITY_WPA2 = 4,
    WLAN_SECURITY_WPA_WPA2_MIXED = 5,
    WLAN_SECURITY_EAP_TLS = 6,
    WLAN_SECURITY_WILDCARD = 7,
};

#endif // __WLTYPES_H__
