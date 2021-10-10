#include "md5.h"


static const unsigned char PADDING[64];


void wpa_MD5Init(Bl_MD5_CTX *context)
{
	__builtin_trap();
}

void wpa_MD5Update(Bl_MD5_CTX *context, UINT8 *input, UINT32 inputLen)
{
	__builtin_trap();
}

void wpa_MD5Final(unsigned char *digest, Bl_MD5_CTX *context)
{
	__builtin_trap();
}

static void wpa_MD5Transform(UINT32 *state, long unsigned int *block)
{
	__builtin_trap();
}
