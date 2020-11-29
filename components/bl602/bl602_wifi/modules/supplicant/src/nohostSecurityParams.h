/**
* @file nohostSecurityParams.h
* Header file for BL602
*/
#ifndef __NOHOSTSECURITYPARAMS_H__
#define __NOHOSTSECURITYPARAMS_H__

typedef struct {
    UINT8 CipherType; // +0
    UINT8 MulticastCipher; // +1
    UINT8 UnicastCipher; // +2
    char PSKPassPhrase[64]; // +3
} NoHostSecurityParams_t;

#endif // __NOHOSTSECURITYPARAMS_H__
