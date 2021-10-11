#include <wltypes.h>


static const UINT8 BL_DEFAULT_IV[8];


int BL_AES_MEMCMP(UINT8 *dst, UINT8 *src, int len)
{
	__builtin_trap();
}

void BL_AES_MEMSET(UINT8 *dst, UINT8 val, int size)
{
	__builtin_trap();
}

void BL_AES_MEMCPY(UINT8 *dst, UINT8 *src, int size)
{
	__builtin_trap();
}

int BL_AesEncrypt(UINT8 *kek, UINT8 kekLen, UINT8 *data, UINT8 *ret)
{
	__builtin_trap();
}

int BL_AesWrap(UINT8 *kek, UINT8 kekLen, UINT32 n, UINT8 *plain, UINT8 *keyIv, UINT8 *cipher)
{
	__builtin_trap();
}

int BL_AesUnWrap(UINT8 *kek, UINT8 kekLen, UINT32 n, UINT8 *cipher, UINT8 *keyIv, UINT8 *plain)
{
	__builtin_trap();
}

