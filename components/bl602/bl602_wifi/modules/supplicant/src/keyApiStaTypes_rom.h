/**
* @file keyApiStaTypes_rom.h
* Header file for BL602
*/
#ifndef __KEYAPISTATYPES_ROM_H__
#define __KEYAPISTATYPES_ROM_H__

typedef struct {
    UINT8 ANonce[32]; // +0
    KeyData_t pwsKeyData; // +32
} eapolHskData_t;
struct cipher_key_t {
    union ckd ckd; // +0
};
union ckd {
    eapolHskData_t hskData;
};
typedef struct cipher_key_t cipher_key_t;

#endif // __KEYAPISTATYPES_ROM_H__
