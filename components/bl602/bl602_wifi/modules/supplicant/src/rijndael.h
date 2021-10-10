#ifndef __RIJNDAEL_H__
#define __RIJNDAEL_H__

typedef unsigned char u8;
typedef unsigned int u32;

typedef struct {
    int decrypt; // +0
    int Nr; // +4
    u32 key[60]; // +8
} rijndael_ctx;


void rijndael_set_key(rijndael_ctx *ctx, u8 *key, int bits, int encrypt);
void rijndael_decrypt(rijndael_ctx *ctx, u8 *src, u8 *dst);
void rijndael_encrypt(rijndael_ctx *ctx, u8 *src, u8 *dst);

#endif // __RIJNDAEL_H__
