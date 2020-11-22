
typedef union anon_union.conflictc3d7_for_rate_map anon_union.conflictc3d7_for_rate_map, *anon_union.conflictc3d7_for_rate_map;

typedef uchar uint8_t;

union anon_union.conflictc3d7_for_rate_map {
    uint8_t ht[4];
};

typedef union anon_union.conflictc3d7 anon_union.conflictc3d7, *anon_union.conflictc3d7;

union anon_union.conflictc3d7 {
    uint8_t ht[4];
};

void rc_calc_tp(void);
void rc_check(void);
void rc_check_fixed_rate_config(void);
uint16_t rc_get_max_amsdu_len(sta_info_tag * sta_entry);
void rc_init(void);
void rc_init_bcmc_rate(void);
typedef struct rc_rate_stats rc_rate_stats, *rc_rate_stats;

typedef ushort uint16_t;

typedef bool _Bool;

struct rc_rate_stats {
    uint16_t attempts;
    uint16_t success;
    uint16_t probability;
    uint16_t rate_config;
    uint8_t sample_skipped;
    _Bool old_prob_available;
    uint8_t n_retry;
    _Bool rate_allowed;
};

typedef struct rc_sta_stats rc_sta_stats, *rc_sta_stats;

typedef ulong uint32_t;

typedef struct step step, *step;

struct step {
    uint32_t tp;
    uint16_t idx;
    undefined field_0x6;
    undefined field_0x7;
};

struct rc_sta_stats {
    uint32_t last_rc_time;
    struct rc_rate_stats rate_stats[10];
    struct step retry[4];
    struct step max_tp_2_trial;
    uint16_t ampdu_len;
    uint16_t ampdu_packets;
    uint32_t avg_ampdu_len;
    uint8_t sample_wait;
    uint8_t sample_slow;
    uint8_t trial_status;
    uint8_t info;
    uint8_t sw_retry_step;
    uint8_t format_mod;
    union anon_union.conflictc3d7_for_rate_map rate_map;
    uint16_t rate_map_l;
    uint8_t mcs_max;
    uint8_t r_idx_min;
    uint8_t r_idx_max;
    uint8_t bw_max;
    uint8_t no_ss;
    uint8_t short_gi;
    uint8_t p_type;
    undefined field_0xbf;
    uint16_t no_samples;
    uint16_t max_amsdu_len;
    uint16_t curr_amsdu_len;
    uint16_t fixed_rate_cfg;
};

void rc_update_bw_nss_max(void);
void rc_update_counters(void);
