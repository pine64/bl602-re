#ifndef __MD5_H__
#define __MD5_H__

#include <wltypes.h>


typedef struct {
    unsigned long state[4]; // +0
    unsigned long count[2]; // +16
    unsigned long scratch[16]; // +24
    unsigned char buffer[64]; // +88
} Bl_MD5_CTX;


void wpa_MD5Init(Bl_MD5_CTX *context);
void wpa_MD5Update(Bl_MD5_CTX *context, UINT8 *input, UINT32 inputLen);
void wpa_MD5Final(unsigned char *digest, Bl_MD5_CTX *context);
void Bl_hmac_md5(UINT8 *text_data, int text_len, UINT8 *key, int key_len, void *digest);

#endif // __MD5_H__
