#ifndef __BL_SHA256_CRYPTO_H__
#define __BL_SHA256_CRYPTO_H__

#include <wltypes.h>


void bl_sha256_crypto_kdf(UINT8 *pKey, UINT8 key_len, char *label, UINT8 label_len, UINT8 *pContext, UINT16 context_len, UINT8 *pOutput, UINT16 output_len);

#endif // __BL_SHA256_CRYPTO_H__
