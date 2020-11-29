/**
* @file sha_256.h
* Header file for BL602
*/
#ifndef __SHA_256_H__
#define __SHA_256_H__

struct sha256_state {
    UINT64 length; // +0
    UINT32 state[8]; // +8
    UINT32 curlen; // +40
    UINT8 buf[64]; // +44
};

#endif // __SHA_256_H__
