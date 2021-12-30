#ifndef _NOHOSTSECURITYPARAMS_H_
#define _NOHOSTSECURITYPARAMS_H_

#include <modules/supplicant/wltypes.h>


typedef struct {
    UINT8 CipherType; // +0
    UINT8 MulticastCipher; // +1
    UINT8 UnicastCipher; // +2
    char PSKPassPhrase[64]; // +3
} NoHostSecurityParams_t;


void set_psk(char *pSsid, UINT8 ssidLen, char *phrase);
void remove_psk(char *pSsid, UINT8 ssidLen);

#endif // _NOHOSTSECURITYPARAMS_H_
