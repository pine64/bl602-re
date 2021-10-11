#ifndef __SUPPLICANTAPI_H__
#define __SUPPLICANTAPI_H__

#include <keyMgmtStaTypes.h>
#include <IEEE_types.h>
#include <w81connmgr.h>
#include <wltypes.h>


void supplicantGenerateRand(UINT8 *dataOut, UINT32 length);

extern BOOLEAN (*supplicantParseWpaIe_hook)(IEEEtypes_WPAElement_t*, SecurityMode_t*, Cipher_t*, Cipher_t*, AkmSuite_t*, UINT8);
extern BOOLEAN (*supplicantParseRsnIe_hook)(IEEEtypes_RSNElement_t*, SecurityMode_t*, Cipher_t*, Cipher_t*, AkmSuite_t*, UINT8, IEEEtypes_RSNCapability_t*, Cipher_t*);

void supplicantInitSession(cm_ConnectionInfo_t *connPtr, CHAR *pSsid, UINT16 len, CHAR *pBssid, UINT8 *pStaAddr);

extern const uint8 wpa_oui02[4];
extern const uint8 wpa_oui04[4];
extern const uint8 wpa_oui01[4];
extern const uint8 wpa_oui05[4];
extern const uint8 wpa_oui_none[4];
extern const uint8 wpa2_oui02[4];
extern const uint8 wpa2_oui04[4];
extern const uint8 wpa2_oui01[4];
extern const uint8 wpa2_oui05[4];
extern const uint8 wpa2_oui06[4];
extern const uint8 wpa2_oui08[4];
extern const uint8 wpa_oui[3];
extern const uint8 kde_oui[3];

#endif // __SUPPLICANTAPI_H__
