#ifndef __NOHOSTSECURITYPARAMS_H__
#define __NOHOSTSECURITYPARAMS_H__

#include <wltypes.h>


typedef struct {
    UINT8 CipherType; // +0
    UINT8 MulticastCipher; // +1
    UINT8 UnicastCipher; // +2
    char PSKPassPhrase[64]; // +3
} NoHostSecurityParams_t;


void set_psk(char *pSsid, UINT8 ssidLen, char *phrase);
void remove_psk(char *pSsid, UINT8 ssidLen);

#endif // __NOHOSTSECURITYPARAMS_H__
