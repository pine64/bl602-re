/**
* @file bl_sha1_wrapper.c
* Source file for BL602
*/
#include "bl_sha1_wrapper.h"


void Bl_hmac_sha1(unsigned char **ppText, int *pTextLen, int textNum, unsigned char *key, int key_len, unsigned char *output, int outputLen);
void Bl_PRF(unsigned char *key, int key_len, unsigned char *prefix, int prefix_len, unsigned char *data, int data_len, unsigned char *output, int len);




/** Bl_hmac_sha1
 */
void Bl_hmac_sha1(unsigned char **ppText, int *pTextLen, int textNum, unsigned char *key, int key_len, unsigned char *output, int outputLen)
{
	ASSER_ERR(FALSE);
	return;
}

/** Bl_PRF
 */
void Bl_PRF(unsigned char *key, int key_len, unsigned char *prefix, int prefix_len, unsigned char *data, int data_len, unsigned char *output, int len)
{
	ASSER_ERR(FALSE);
	return;
}
