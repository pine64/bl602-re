#ifndef __SHA1_H__
#define __SHA1_H__

#include <wltypes.h>


typedef struct {
    UINT32 Intermediate_Hash[5]; // +0
    UINT32 Length_Low; // +20
    UINT32 Length_High; // +24
    UINT32 Scratch[16]; // +28
    UINT8 Message_Block[64]; // +92
    SINT16 Message_Block_Index; // +156
    UINT8 Computed; // +158
    UINT8 Corrupted; // +159
} Bl_SHA1_CTX;


int Bl_SHA1Init(Bl_SHA1_CTX *context);
int Bl_SHA1Update(Bl_SHA1_CTX *context, const UINT8 *message_array, unsigned int length);
int Bl_SHA1Final(Bl_SHA1_CTX *context, UINT8 *Message_Digest);
void Bl_PRF(unsigned char *key, int key_len, unsigned char *prefix, int prefix_len, unsigned char *data, int data_len, unsigned char *output, int len);
void Bl_hmac_sha1(unsigned char **ppText, int *pTextLen, int textNum, unsigned char *key, int key_len, unsigned char *output, int outputLen);

#endif // __SHA1_H__
