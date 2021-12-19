#ifndef _PHY_ADAPT_H_
#define _PHY_ADAPT_H_
#include <stdint.h>
#include <phy_rf/hal_desc.h>

typedef struct {
    int8_t rssi; // +0
    int8_t lna; // +1
    float ppm; // +4
    uint8_t new; // +8
} input_t; // :53:3

typedef struct {
    uint8_t used; // +0
    uint32_t vif_tag; // +4
    input_t input_buffer[8]; // +8
    int8_t input_buffer_ptr; // +104
    // input_buffer is something like a ring buffer
    // input_buffer[input_buffer_ptr] is the in-coming data buffer
    // and input_buffer[input_buffer_ptr -1, -2, -3, ..., -6]
    // are available datas
    // the most recent one is input_buffer[input_buffer_ptr -1]
    // wrapped by math mod
    uint32_t last_update; // +108
    int8_t rss; // +112
    int8_t rss_acq; // +113
    int8_t rss_trk; // +114
    int8_t rss_state; // +115
    uint8_t rss_hit_count; // +116
    uint32_t rss_count; // +120
    int8_t ris; // +124
    float ce; // +128
    int8_t ce_in; // +132
    int8_t ce_acq; // +133
    int8_t ce_trk; // +134
    int8_t ce_state; // +135
    int8_t ce_num_up_cmds; // +136
    int8_t ce_num_dn_cmds; // +137
} pa_state_t; // :83:3

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
    int32_t agc_lna:4; // +12
    int32_t agc_rbb1:5; // +12
    int32_t agc_dg:7; // +12
    uint32_t reserved_1d:8; // +12
    uint32_t rcpi:8; // +16
    uint32_t evm1:8; // +16
    uint32_t evm2:8; // +16
    union {
        uint32_t freqoff:16;
        struct {
            uint32_t freqoff_lo:8; // +16
            uint32_t freqoff_hi:8; // +20
        };
    };
    uint32_t reserved2b_1:8; // +20
    uint32_t reserved2b_2:8; // +20
    uint32_t reserved2b_3:8; // +20
} rvec_t; // :134:3

void pa_adapt(uint8_t id);
void pa_init(void);
void pa_input(uint8_t id, struct rx_hd *rhd); 
int8_t pa_alloc(uint32_t vif_addr);
void pa_reset(uint8_t id);
void pa_free(uint8_t id);

float calc_ppm_dsss(uint8_t rxv_freqoff);
float calc_ppm_ofdm(uint16_t rxv_freqoff);
#endif