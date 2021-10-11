#ifndef __CUSTOMAPP_MIB_H__
#define __CUSTOMAPP_MIB_H__

#include <keyMgmtStaTypes.h>
#include <IEEE_types.h>
#include <wltypes.h>


typedef struct {
    UINT8 RSNEnabled:1; // +0
    UINT8 pmkidValid:1; // +0
    UINT8 rsnCapValid:1; // +0
    UINT8 grpMgmtCipherValid:1; // +0
    UINT8 rsvd:4; // +0
    SecurityMode_t wpaType; // +1
    Cipher_t mcstCipher; // +3
    Cipher_t ucstCipher; // +4
    AkmSuite_t AKM; // +5
    UINT8 PMKID[16]; // +9
    IEEEtypes_RSNCapability_t rsnCap; // +25
    Cipher_t grpMgmtCipher; // +27
} RSNConfig_t;

#endif // __CUSTOMAPP_MIB_H__
