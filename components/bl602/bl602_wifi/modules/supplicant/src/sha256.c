#include <sha_256.h>


void hmac_sha256_vector(const UINT8 *key, size_t key_len, size_t num_elem, const UINT8 **addr, const size_t *len, UINT8 *mac)
{
	__builtin_trap();
}

void sha256_vector(size_t num_elem, const UINT8 **addr, size_t *len, UINT8 *mac, UINT8 *pScratchMem)
{
	__builtin_trap();
}


static const long unsigned int K[64];

int sha256_compress(struct sha256_state *md, UINT8 *msgBuf, UINT8 *pScratchMem)
{
	__builtin_trap();
}

void sha256_init(struct sha256_state *md)
{
	__builtin_trap();
}

int sha256_process(struct sha256_state *md, const unsigned char *in, long unsigned int inlen, UINT8 *pScratchMem)
{
	__builtin_trap();
}

int sha256_done(struct sha256_state *md, UINT8 *out, UINT8 *pScratchMem)
{
	__builtin_trap();
}

