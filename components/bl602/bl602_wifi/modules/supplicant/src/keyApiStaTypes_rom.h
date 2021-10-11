#ifndef __KEYAPISTATYPES_ROM_H__
#define __KEYAPISTATYPES_ROM_H__

#include <keyMgmtStaHostTypes_rom.h>
#include <wltypes.h>


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

#endif // __KEYAPISTATYPES_ROM_H__
