#ifndef _KEYAPISTADEFS_H_
#define _KEYAPISTADEFS_H_

#include <modules/supplicant/wltypes.h>


typedef struct {
    UINT8 key[16]; // +0
    UINT8 txMicKey[8]; // +16
    UINT8 rxMicKey[8]; // +24
} key_Type_TKIP_t;

typedef struct {
    UINT8 keyIndex; // +0
    UINT8 isDefaultTx; // +1
    UINT8 key[13]; // +2
} key_Type_WEP_t;

typedef struct {
    UINT8 key[16]; // +0
} key_Type_AES_t;

typedef struct {
    UINT8 keyIndex; // +0
    UINT8 isDefKey; // +1
    UINT8 key[16]; // +2
    UINT8 mickey[16]; // +18
    UINT8 rxPN[16]; // +34
} key_Type_WAPI_t;

typedef struct {
    UINT8 ipn[6]; // +0
    UINT8 reserved[2]; // +6
    UINT8 key[16]; // +8
} key_Type_AES_CMAC_t;

typedef struct {
    UINT16 keyType; // +0
    UINT16 keyInfo; // +2
    UINT16 keyLen; // +4
    union {
        key_Type_TKIP_t TKIP;
        key_Type_AES_t AES1;
        key_Type_WEP_t WEP;
        key_Type_WAPI_t WAPI;
        key_Type_AES_CMAC_t iGTK;
    } keyEncypt; // +6
} key_MgtMaterial_t;

#endif // __KEYAPISTADEFS_H__
