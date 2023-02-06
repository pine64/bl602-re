#ifndef _PHYIF_H_
#define _PHYIF_H_

#include <stdint.h>

typedef struct {
    uint32_t recvtable1; // +0
    uint32_t recvtable2; // +4
    uint32_t recvtable3; // +8
    uint32_t recvtable4; // +12
    uint32_t recvtable5; // +16
    uint32_t recvtable6; // +20
} phyif_utils_recvtable_t; // :11:3
int phyif_utils_decode(phyif_utils_recvtable_t *vec,int8_t *ppm);

#endif