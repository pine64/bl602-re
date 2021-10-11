#ifndef __PHYIF_UTILS_H__
#define __PHYIF_UTILS_H__

#include <stdint.h>


typedef struct {
    uint32_t recvtable1; // +0
    uint32_t recvtable2; // +4
    uint32_t recvtable3; // +8
    uint32_t recvtable4; // +12
    uint32_t recvtable5; // +16
    uint32_t recvtable6; // +20
} phyif_utils_recvtable_t;


int phyif_utils_decode(phyif_utils_recvtable_t *vec, int8_t *ppm);

#endif // __PHYIF_UTILS_H__
