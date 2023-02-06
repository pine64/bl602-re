#ifndef _KEYMGMTSTAHOSTTYPES_ROM_H_
#define _KEYMGMTSTAHOSTTYPES_ROM_H_

#include <modules/supplicant/wltypes.h>


typedef struct {
    UINT8 Key[16]; // +0
    UINT8 RxMICKey[8]; // +16
    UINT8 TxMICKey[8]; // +24
    UINT32 TxIV32; // +32
    UINT16 TxIV16; // +36
    UINT16 KeyIndex; // +38
} KeyData_t;

#endif // _KEYMGMTSTAHOSTTYPES_ROM_H_
