int phyif_utils_decode(phyif_utils_recvtable_t * vec, int8_t * ppm);
typedef struct phyif_utils_recvtable_priv_t phyif_utils_recvtable_priv_t, *phyif_utils_recvtable_priv_t;

struct phyif_utils_recvtable_priv_t {
    uint32_t leg_length:12;
    uint32_t leg_rate:4;
    uint32_t ht_length:16;
    uint32_t _ht_length:4;
    uint32_t short_gi:1;
    uint32_t stbc:2;
    uint32_t smoothing:1;
    uint32_t mcs:7;
    uint32_t pre_type:1;
    uint32_t format_mod:3;
    uint32_t ch_bw:2;
    uint32_t n_sts:3;
    uint32_t lsig_valid:1;
    uint32_t sounding:1;
    uint32_t num_extn_ss:2;
    uint32_t aggregation:1;
    uint32_t fec_coding:1;
    uint32_t dyn_bw:1;
    uint32_t doze_not_allowed:1;
    uint32_t antenna_set:8;
    uint32_t partial_aid:9;
    uint32_t group_id:6;
    uint32_t reserved_1c:1;
    int32_t rssi1:8;
    int32_t rssi2:8;
    int32_t rssi3:8;
    int32_t rssi4:8;
    uint32_t reserved_1d:8;
    uint32_t rcpi:8;
    uint32_t evm1:8;
    uint32_t evm2:8;
    uint32_t evm3:8;
    uint32_t evm4:8;
    uint32_t reserved2b_1:8;
    uint32_t reserved2b_2:8;
    uint32_t reserved2b_3:8;
};

#if 0 //TODO EXISTS ALEADY
/**
* @file phyif_utils.c
* Source file for BL602
*/
#include "phyif_utils.h"


typedef struct {
    uint32_t leg_length:12;
 // +0
    uint32_t leg_rate:4;
 // +0
    uint32_t ht_length:16;
 // +0
    uint32_t _ht_length:4;
 // +4
    uint32_t short_gi:1;
 // +4
    uint32_t stbc:2;
 // +4
    uint32_t smoothing:1;
 // +4
    uint32_t mcs:7;
 // +4
    uint32_t pre_type:1;
 // +4
    uint32_t format_mod:3;
 // +4
    uint32_t ch_bw:2;
 // +4
    uint32_t n_sts:3;
 // +4
    uint32_t lsig_valid:1;
 // +4
    uint32_t sounding:1;
 // +4
    uint32_t num_extn_ss:2;
 // +4
    uint32_t aggregation:1;
 // +4
    uint32_t fec_coding:1;
 // +4
    uint32_t dyn_bw:1;
 // +4
    uint32_t doze_not_allowed:1;
 // +4
    uint32_t antenna_set:8;
 // +8
    uint32_t partial_aid:9;
 // +8
    uint32_t group_id:6;
 // +8
    uint32_t reserved_1c:1;
 // +8
    int32_t rssi1:8;
 // +8
    int32_t rssi2:8;
 // +12
    int32_t rssi3:8;
 // +12
    int32_t rssi4:8;
 // +12
    uint32_t reserved_1d:8;
 // +12
    uint32_t rcpi:8;
 // +16
    uint32_t evm1:8;
 // +16
    uint32_t evm2:8;
 // +16
    uint32_t evm3:8;
 // +16
    uint32_t evm4:8;
 // +20
    uint32_t reserved2b_1:8;
 // +20
    uint32_t reserved2b_2:8;
 // +20
    uint32_t reserved2b_3:8;
 // +20
} phyif_utils_recvtable_priv_t;

int phyif_utils_decode(phyif_utils_recvtable_t *vec, int8_t *ppm);




/** phyif_utils_decode
 */
int phyif_utils_decode(phyif_utils_recvtable_t *vec, int8_t *ppm)
{
	ASSER_ERR(FALSE);
	return -1;
}
#endf 0 //TODO EXISTS ALEADY
