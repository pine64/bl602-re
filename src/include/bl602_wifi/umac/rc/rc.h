#ifndef _RC_H_
#define _RC_H_

#include <stdbool.h>
#include <stdint.h>

#include <lmac/sta/sta_mgmt.h>


struct rc_rate_stats {
    uint16_t attempts; // +0
    uint16_t success; // +2
    uint16_t probability; // +4
    uint16_t rate_config; // +6
    uint8_t sample_skipped; // +8
    bool old_prob_available; // +9
    uint8_t n_retry; // +10
    bool rate_allowed; // +11
};

struct step {
    uint32_t tp; // +0
    uint16_t idx; // +4
};

struct rc_sta_stats {
    uint32_t last_rc_time; // +0
    struct rc_rate_stats rate_stats[10]; // +4
    struct step retry[4]; // +124
    struct step max_tp_2_trial; // +156
    uint16_t ampdu_len; // +164
    uint16_t ampdu_packets; // +166
    uint32_t avg_ampdu_len; // +168
    uint8_t sample_wait; // +172
    uint8_t sample_slow; // +173
    uint8_t trial_status; // +174
    uint8_t info; // +175
    uint8_t sw_retry_step; // +176
    uint8_t format_mod; // +177
    union {
        uint8_t ht[4];
    } rate_map; // +178
    uint16_t rate_map_l; // +182
    uint8_t mcs_max; // +184
    uint8_t r_idx_min; // +185
    uint8_t r_idx_max; // +186
    uint8_t bw_max; // +187
    uint8_t no_ss; // +188
    uint8_t short_gi; // +189
    uint8_t p_type; // +190
    uint16_t no_samples; // +192
    uint16_t max_amsdu_len; // +194
    uint16_t curr_amsdu_len; // +196
    uint16_t fixed_rate_cfg; // +198
};


uint16_t rc_get_max_amsdu_len(struct sta_info_tag *sta_entry);
void rc_init(struct sta_info_tag *sta_entry);
void rc_update_counters(uint8_t sta_idx, uint32_t attempts, uint32_t failures, bool tx_ampdu, bool retry_required);
void rc_check(uint8_t sta_idx, bool *tx_ampdu);
void rc_update_bw_nss_max(uint8_t sta_idx, uint8_t bw_max, uint8_t nss_max);
void rc_init_bcmc_rate(struct sta_info_tag *sta_entry, uint8_t basic_rate_idx);
uint32_t rc_calc_tp(struct rc_sta_stats *rc_ss, uint8_t sample_idx);
bool rc_check_fixed_rate_config(struct rc_sta_stats *rc_ss, uint16_t fixed_rate_config);

#endif
