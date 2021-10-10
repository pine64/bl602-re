#include "sha1.h"

int Bl_SHA1Init(Bl_SHA1_CTX *context)
{
	__builtin_trap();
}

int Bl_SHA1Final(Bl_SHA1_CTX *context, UINT8 *Message_Digest)
{
	__builtin_trap();
}

int Bl_SHA1Update(Bl_SHA1_CTX *context, const UINT8 *message_array, unsigned int length)
{
	__builtin_trap();
}

static void Bl_SHA1ProcessMessageBlock(Bl_SHA1_CTX *context)
{
	__builtin_trap();
}

void Bl_SHA1PadMessage(Bl_SHA1_CTX *context)
{
	__builtin_trap();
}

