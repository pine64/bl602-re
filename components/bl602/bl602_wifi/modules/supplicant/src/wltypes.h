#ifndef __WLTYPES_H__
#define __WLTYPES_H__

#include <stdint.h>


typedef long long unsigned int UINT64;
typedef long unsigned int UINT32;
typedef long int SINT32;
typedef short unsigned int UINT16;
typedef short int SINT16;
typedef unsigned char UINT8;
typedef signed char SINT8;
typedef long unsigned int uint32;
typedef int sint32;
typedef short unsigned int uint16;
typedef unsigned char uint8;
typedef int BOOLEAN;
typedef char CHAR;

typedef enum {
  FW_SUCCESS = 0,
  FAIL = 1
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
  WLAN_SECURITY_WILDCARD = 7
};


uint16_t mm_get_rsn_wpa_ie(uint8_t sta_id, uint8_t *wpa_ie);
void sm_handle_supplicant_result(uint8_t sta_id, uint16_t reason_code);

#endif // __WLTYPES_H__
