#ifndef _KEYAPISTATYPES_ROM_H_
#define _KEYAPISTATYPES_ROM_H_

#include <modules/supplicant/keyMgmtStaHostTypes_rom.h>
#include <modules/supplicant/wltypes.h>


typedef struct {
    UINT8 ANonce[32]; // +0
    KeyData_t pwsKeyData; // +32
} eapolHskData_t;

union ckd {
    eapolHskData_t hskData;
};

struct cipher_key_t {
	union ckd ckd; // +0
};

typedef struct cipher_key_t cipher_key_t;

#endif // _KEYAPISTATYPES_ROM_H_
