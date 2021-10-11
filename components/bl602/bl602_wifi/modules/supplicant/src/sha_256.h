#ifndef __SHA_256_H__
#define __SHA_256_H__

#include <stddef.h>

#include <wltypes.h>


struct sha256_state {
    UINT64 length; // +0
    UINT32 state[8]; // +8
    UINT32 curlen; // +40
    UINT8 buf[64]; // +44
};


void hmac_sha256_vector(const UINT8 *key, size_t key_len, size_t num_elem, const UINT8 **addr, const size_t *len, UINT8 *mac);

#endif // __SHA_256_H__
