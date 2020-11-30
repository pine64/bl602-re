/**
* @file sha256.c
* Source file for BL602
*/
#include "sha256.h"


void hmac_sha256_vector(const UINT8 *key, size_t key_len, size_t num_elem, const UINT8 **addr, const size_t *len, UINT8 *mac);
void sha256_vector(size_t num_elem, const UINT8 **addr, size_t *len, UINT8 *mac, UINT8 *pScratchMem);

static const unsigned long K[64];

int sha256_compress(struct sha256_state *md, UINT8 *msgBuf, UINT8 *pScratchMem);
void sha256_init(struct sha256_state *md);




/** hmac_sha256_vector
 */
void hmac_sha256_vector(const UINT8 *key, size_t key_len, size_t num_elem, const UINT8 **addr, const size_t *len, UINT8 *mac)
{
	ASSER_ERR(FALSE);
	return;
}

/** sha256_vector
 */
void sha256_vector(size_t num_elem, const UINT8 **addr, size_t *len, UINT8 *mac, UINT8 *pScratchMem)
{
	ASSER_ERR(FALSE);
	return;
}

/** sha256_compress
 */
int sha256_compress(struct sha256_state *md, UINT8 *msgBuf, UINT8 *pScratchMem)
{
	ASSER_ERR(FALSE);
	return -1;
}

/** sha256_init
 */
void sha256_init(struct sha256_state *md)
{
	ASSER_ERR(FALSE);
	return;
}
