/**
* @file md5.h
* Header file for BL602
*/
#ifndef __MD5_H__
#define __MD5_H__

typedef struct {
    unsigned long state[4]; // +0
    unsigned long count[2]; // +16
    unsigned long scratch[16]; // +24
    unsigned char buffer[64]; // +88
} Bl_MD5_CTX;

#endif // __MD5_H__
