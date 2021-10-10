#include <rijndael.h>


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


static int rijndaelKeySetupEnc(u32 *rk, const u8 *cipherKey, int keyBits)
{
	__builtin_trap();
}

int rijndaelKeySetupDec(u32 *rk, const u8 *cipherKey, int keyBits, int have_encrypt)
{
	__builtin_trap();
}

void rijndaelEncrypt(const u32 *rk, int Nr, const u8 *pt, u8 *ct)
{
	__builtin_trap();
}

void rijndaelDecrypt(const u32 *rk, int Nr, const u8 *ct, u8 *pt)
{
	__builtin_trap();
}

void rijndael_set_key(rijndael_ctx *ctx, u8 *key, int bits, int encrypt)
{
	__builtin_trap();
}

void rijndael_decrypt(rijndael_ctx *ctx, u8 *src, u8 *dst)
{
	__builtin_trap();
}

void rijndael_encrypt(rijndael_ctx *ctx, u8 *src, u8 *dst)
{
	__builtin_trap();
}

