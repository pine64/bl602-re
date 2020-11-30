/**
* @file sha1.c
* Source file for BL602
*/
#include "sha1.h"


int Bl_SHA1Init(Bl_SHA1_CTX *context);
int Bl_SHA1Final(Bl_SHA1_CTX *context, UINT8 *Message_Digest);
int Bl_SHA1Update(Bl_SHA1_CTX *context, const UINT8 *message_array, unsigned int length);
static void Bl_SHA1ProcessMessageBlock(Bl_SHA1_CTX *context);




/** Bl_SHA1Init
 */
int Bl_SHA1Init(Bl_SHA1_CTX *context)
{
	ASSER_ERR(FALSE);
	return -1;
}

/** Bl_SHA1Final
 */
int Bl_SHA1Final(Bl_SHA1_CTX *context, UINT8 *Message_Digest)
{
	ASSER_ERR(FALSE);
	return -1;
}

/** Bl_SHA1Update
 */
int Bl_SHA1Update(Bl_SHA1_CTX *context, const UINT8 *message_array, unsigned int length)
{
	ASSER_ERR(FALSE);
	return -1;
}

/** Bl_SHA1ProcessMessageBlock
 */
static void Bl_SHA1ProcessMessageBlock(Bl_SHA1_CTX *context)
{
	ASSER_ERR(FALSE);
	return;
}
