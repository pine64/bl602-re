/**
* @file rijndael.c
* Source file for BL602
*/
#include "rijndael.h"


static const u32 Te0[256];
static const u32 Te1[256];
static const u32 Te2[256];
static const u32 Te3[256];
static const u8 Te4[256];
static const u32 Td0[256];
static const u32 Td1[256];
static const u32 Td2[256];
static const u32 Td3[256];
static const u8 Td4[256];
static const u32 rcon[10];

static int rijndaelKeySetupEnc(u32 *rk, const u8 *cipherKey, int keyBits);
void rijndael_set_key(rijndael_ctx *ctx, u8 *key, int bits, int encrypt);
void rijndael_decrypt(rijndael_ctx *ctx, u8 *src, u8 *dst);
void rijndael_encrypt(rijndael_ctx *ctx, u8 *src, u8 *dst);




/** rijndael_set_key
 */
void rijndael_set_key(rijndael_ctx *ctx, u8 *key, int bits, int encrypt)
{
	ASSER_ERR(FALSE);
	return;
}

/** rijndael_decrypt
 */
void rijndael_decrypt(rijndael_ctx *ctx, u8 *src, u8 *dst)
{
	ASSER_ERR(FALSE);
	return;
}

/** rijndael_encrypt
 */
void rijndael_encrypt(rijndael_ctx *ctx, u8 *src, u8 *dst)
{
	ASSER_ERR(FALSE);
	return;
}

/** rijndaelKeySetupEnc
 */
static int rijndaelKeySetupEnc(u32 *rk, const u8 *cipherKey, int keyBits)
{
	ASSER_ERR(FALSE);
	return -1;
}
