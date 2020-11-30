/**
* @file md5.c
* Source file for BL602
*/
#include "md5.h"


static const unsigned char PADDING[64];

void wpa_MD5Init(Bl_MD5_CTX *context);
void wpa_MD5Update(Bl_MD5_CTX *context, UINT8 *input, UINT32 inputLen);
void wpa_MD5Final(unsigned char *digest, Bl_MD5_CTX *context);
static void wpa_MD5Transform(UINT32 *state, unsigned long *block);




/** wpa_MD5Init
 */
void wpa_MD5Init(Bl_MD5_CTX *context)
{
	ASSER_ERR(FALSE);
	return;
}

/** wpa_MD5Update
 */
void wpa_MD5Update(Bl_MD5_CTX *context, UINT8 *input, UINT32 inputLen)
{
	ASSER_ERR(FALSE);
	return;
}

/** wpa_MD5Final
 */
void wpa_MD5Final(unsigned char *digest, Bl_MD5_CTX *context)
{
	ASSER_ERR(FALSE);
	return;
}

/** wpa_MD5Transform
 */
static void wpa_MD5Transform(UINT32 *state, unsigned long *block)
{
	ASSER_ERR(FALSE);
	return;
}
