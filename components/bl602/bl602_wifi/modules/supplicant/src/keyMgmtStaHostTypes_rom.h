/**
* @file keyMgmtStaHostTypes_rom.h
* Header file for BL602
*/
#ifndef __KEYMGMTSTAHOSTTYPES_ROM_H__
#define __KEYMGMTSTAHOSTTYPES_ROM_H__

typedef struct {
    UINT8 Key[16]; // +0
    UINT8 RxMICKey[8]; // +16
    UINT8 TxMICKey[8]; // +24
    UINT32 TxIV32; // +32
    UINT16 TxIV16; // +36
    UINT16 KeyIndex; // +38
} KeyData_t;

#endif // __KEYMGMTSTAHOSTTYPES_ROM_H__
