/**
* @file bl_aes_cmac.c
* Source file for BL602
*/
#include "bl_aes_cmac.h"


static const UINT8 const_Rb[16];

void bl_aes_128(UINT8 *key, UINT8 *input, UINT8 *output);
void xor_128(const UINT8 *a, const UINT8 *b, UINT8 *out);
void leftshift_onebit(UINT8 *input, UINT8 *output);
void generate_subkey(UINT8 *key, UINT8 *K1, UINT8 *K2);
void padding(UINT8 *lastb, UINT8 *pad, int length);
void bl_aes_cmac(UINT8 *key, UINT8 *input, int length, UINT8 *mac);




/** bl_aes_128
 */
void bl_aes_128(UINT8 *key, UINT8 *input, UINT8 *output)
{
	ASSER_ERR(FALSE);
	return;
}

/** xor_128
 */
void xor_128(const UINT8 *a, const UINT8 *b, UINT8 *out)
{
	ASSER_ERR(FALSE);
	return;
}

/** leftshift_onebit
 */
void leftshift_onebit(UINT8 *input, UINT8 *output)
{
	ASSER_ERR(FALSE);
	return;
}

/** generate_subkey
 */
void generate_subkey(UINT8 *key, UINT8 *K1, UINT8 *K2)
{
	ASSER_ERR(FALSE);
	return;
}

/** padding
 */
void padding(UINT8 *lastb, UINT8 *pad, int length)
{
	ASSER_ERR(FALSE);
	return;
}

/** bl_aes_cmac
 */
void bl_aes_cmac(UINT8 *key, UINT8 *input, int length, UINT8 *mac)
{
	ASSER_ERR(FALSE);
	return;
}
