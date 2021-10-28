#include <phyif/phyif_utils.h>

typedef struct {
    uint32_t leg_length:12; // +0
    uint32_t leg_rate:4; // +0
    uint32_t ht_length:16; // +0
    uint32_t _ht_length:4; // +4
    uint32_t short_gi:1; // +4
    uint32_t stbc:2; // +4
    uint32_t smoothing:1; // +4
    uint32_t mcs:7; // +4
    uint32_t pre_type:1; // +4
    uint32_t format_mod:3; // +4
    uint32_t ch_bw:2; // +4
    uint32_t n_sts:3; // +4
    uint32_t lsig_valid:1; // +4
    uint32_t sounding:1; // +4
    uint32_t num_extn_ss:2; // +4
    uint32_t aggregation:1; // +4
    uint32_t fec_coding:1; // +4
    uint32_t dyn_bw:1; // +4
    uint32_t doze_not_allowed:1; // +4
    uint32_t antenna_set:8; // +8
    uint32_t partial_aid:9; // +8
    uint32_t group_id:6; // +8
    uint32_t reserved_1c:1; // +8
    int32_t rssi1:8; // +8
    int32_t rssi2:8; // +12
    union {
        int32_t rssi34:16;
        struct {
            int32_t rssi3:8; // +12
            int32_t rssi4:8; // +12
        };
    };
    uint32_t reserved_1d:8; // +12
    uint32_t rcpi:8; // +16
    uint32_t evm1:8; // +16
    uint32_t evm2:8; // +16
    uint32_t evm3:8; // +16
    uint32_t evm4:8; // +20
    uint32_t reserved2b_1:8; // +20
    uint32_t reserved2b_2:8; // +20
    uint32_t reserved2b_3:8; // +20
} phyif_utils_recvtable_priv_t; // :47:3

int phyif_utils_decode(phyif_utils_recvtable_t *vec,int8_t *ppm) {
    phyif_utils_recvtable_priv_t* pvec = (phyif_utils_recvtable_priv_t*) vec;
    int8_t vppm = 0;
    if (pvec->format_mod < 2 && pvec->leg_rate < 4) {
        vppm = (int)((double)(-(int)pvec->rssi3) * 0.7);
    } else {
        vppm = ((int)pvec->rssi34 / 0x7a);
    }
    *ppm = vppm;
}
