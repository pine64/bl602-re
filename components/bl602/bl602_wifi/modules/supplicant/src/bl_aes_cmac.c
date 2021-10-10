#include <wltypes.h>


static const UINT8 const_Rb[16];

void bl_aes_128(UINT8 *key, UINT8 *input, UINT8 *output)
{
	__builtin_trap();
}

void xor_128(const UINT8 *a, const UINT8 *b, UINT8 *out)
{
	__builtin_trap();
}

void leftshift_onebit(UINT8 *input, UINT8 *output)
{
	__builtin_trap();
}

void generate_subkey(UINT8 *key, UINT8 *K1, UINT8 *K2)
{
	__builtin_trap();
}

void padding(UINT8 *lastb, UINT8 *pad, int length)
{
	__builtin_trap();
}

void bl_aes_cmac(UINT8 *key, UINT8 *input, int length, UINT8 *mac)
{
	__builtin_trap();
}
