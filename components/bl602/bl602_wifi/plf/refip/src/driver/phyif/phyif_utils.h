void phyif_utils_decode(void);
typedef struct phyif_utils_recvtable_t phyif_utils_recvtable_t, *phyif_utils_recvtable_t;

struct phyif_utils_recvtable_t {
    uint32_t recvtable1;
    uint32_t recvtable2;
    uint32_t recvtable3;
    uint32_t recvtable4;
    uint32_t recvtable5;
    uint32_t recvtable6;
};

#if 0 //TODO EXISTS ALEADY
/**
* @file phyif_utils.h
* Header file for BL602
*/
#ifndef __PHYIF_UTILS_H__
#define __PHYIF_UTILS_H__

typedef struct {
    uint32_t recvtable1; // +0
    uint32_t recvtable2; // +4
    uint32_t recvtable3; // +8
    uint32_t recvtable4; // +12
    uint32_t recvtable5; // +16
    uint32_t recvtable6; // +20
} phyif_utils_recvtable_t;

#endif // __PHYIF_UTILS_H__
#endf 0 //TODO EXISTS ALEADY
