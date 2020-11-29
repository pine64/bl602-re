/**
* @file bl_crypt.c
* Source file for BL602
*/
#include "bl_crypt.h"


static const UINT8 BL_DEFAULT_IV[8];

int BL_AES_MEMCMP(UINT8 *dst, UINT8 *src, int len);
void BL_AES_MEMSET(UINT8 *dst, UINT8 val, int size);
void BL_AES_MEMCPY(UINT8 *dst, UINT8 *src, int size);
int BL_AesEncrypt(UINT8 *kek, UINT8 kekLen, UINT8 *data, UINT8 *ret);
int BL_AesWrap(UINT8 *kek, UINT8 kekLen, UINT32 n, UINT8 *plain, UINT8 *keyIv, UINT8 *cipher);
int BL_AesUnWrap(UINT8 *kek, UINT8 kekLen, UINT32 n, UINT8 *cipher, UINT8 *keyIv, UINT8 *plain);




/** BL_AES_MEMCMP
 */
int BL_AES_MEMCMP(UINT8 *dst, UINT8 *src, int len)
{
	ASSER_ERR(FALSE);
	return -1;
}

/** BL_AES_MEMSET
 */
void BL_AES_MEMSET(UINT8 *dst, UINT8 val, int size)
{
	ASSER_ERR(FALSE);
	return;
}

/** BL_AES_MEMCPY
 */
void BL_AES_MEMCPY(UINT8 *dst, UINT8 *src, int size)
{
	ASSER_ERR(FALSE);
	return;
}

/** BL_AesEncrypt
 */
int BL_AesEncrypt(UINT8 *kek, UINT8 kekLen, UINT8 *data, UINT8 *ret)
{
	ASSER_ERR(FALSE);
	return -1;
}

/** BL_AesWrap
 */
int BL_AesWrap(UINT8 *kek, UINT8 kekLen, UINT32 n, UINT8 *plain, UINT8 *keyIv, UINT8 *cipher)
{
	ASSER_ERR(FALSE);
	return -1;
}

/** BL_AesUnWrap
 */
int BL_AesUnWrap(UINT8 *kek, UINT8 kekLen, UINT32 n, UINT8 *cipher, UINT8 *keyIv, UINT8 *plain)
{
	ASSER_ERR(FALSE);
	return -1;
}
