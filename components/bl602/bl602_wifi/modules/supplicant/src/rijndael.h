/**
* @file rijndael.h
* Header file for BL602
*/
#ifndef __RIJNDAEL_H__
#define __RIJNDAEL_H__

typedef unsigned char u8;typedef unsigned int u32;
typedef struct {
    int decrypt; // +0
    int Nr; // +4
    u32 key[60]; // +8
} rijndael_ctx;

#endif // __RIJNDAEL_H__
