/**
* @file sha1.h
* Header file for BL602
*/
#ifndef __SHA1_H__
#define __SHA1_H__

typedef struct {
    UINT32 Intermediate_Hash[5]; // +0
    UINT32 Length_Low; // +20
    UINT32 Length_High; // +24
    UINT32 Scratch[16]; // +28
    UINT8 Message_Block[64]; // +92
    SINT16 Message_Block_Index; // +156
    UINT8 Computed; // +158
    UINT8 Corrupted; // +159
} Bl_SHA1_CTX;

#endif // __SHA1_H__
