/**
* @file crypt_new_rom.h
* Header file for BL602
*/
#ifndef __CRYPT_NEW_ROM_H__
#define __CRYPT_NEW_ROM_H__

typedef struct {
    UINT8 enDeAction; // +0
    UINT8 *pData; // +4
} BL_ENDECRYPT_t;

#endif // __CRYPT_NEW_ROM_H__
