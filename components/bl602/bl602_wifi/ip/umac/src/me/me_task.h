
typedef struct me_chan_config_req me_chan_config_req, *me_chan_config_req;

typedef struct scan_chan_tag scan_chan_tag, *scan_chan_tag;

typedef uchar uint8_t;

typedef ushort uint16_t;

typedef char int8_t;

struct scan_chan_tag {
    uint16_t freq;
    uint8_t band;
    uint8_t flags;
    int8_t tx_power;
    undefined field_0x5;
};

struct me_chan_config_req {
    struct scan_chan_tag chan2G4[14];
    struct scan_chan_tag chan5G[28];
    uint8_t chan2G4_cnt;
    uint8_t chan5G_cnt;
};

typedef struct me_config_req me_config_req, *me_config_req;

typedef struct mac_htcapability mac_htcapability, *mac_htcapability;

typedef struct mac_vhtcapability mac_vhtcapability, *mac_vhtcapability;

typedef bool _Bool;

typedef ulong uint32_t;

struct mac_vhtcapability {
    uint32_t vht_capa_info;
    uint16_t rx_mcs_map;
    uint16_t rx_highest;
    uint16_t tx_mcs_map;
    uint16_t tx_highest;
};

struct mac_htcapability {
    uint16_t ht_capa_info;
    uint8_t a_mpdu_param;
    uint8_t mcs_rate[16];
    undefined field_0x13;
    uint16_t ht_extended_capa;
    undefined field_0x16;
    undefined field_0x17;
    uint32_t tx_beamforming_capa;
    uint8_t asel_capa;
    undefined field_0x1d;
    undefined field_0x1e;
    undefined field_0x1f;
};

struct me_config_req {
    struct mac_htcapability ht_cap;
    struct mac_vhtcapability vht_cap;
    uint16_t tx_lft;
    _Bool ht_supp;
    _Bool vht_supp;
    _Bool ps_on;
    undefined field_0x31;
    undefined field_0x32;
    undefined field_0x33;
};

typedef struct me_rc_set_rate_req me_rc_set_rate_req, *me_rc_set_rate_req;

struct me_rc_set_rate_req {
    uint8_t sta_idx;
    undefined field_0x1;
    uint16_t fixed_rate_cfg;
};

typedef struct me_rc_stats_cfm me_rc_stats_cfm, *me_rc_stats_cfm;

typedef struct step step, *step;

typedef struct rc_rate_stats rc_rate_stats, *rc_rate_stats;

struct step {
    uint32_t tp;
    uint16_t idx;
    undefined field_0x6;
    undefined field_0x7;
};

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

struct me_rc_stats_cfm {
    uint8_t sta_idx;
    undefined field_0x1;
    uint16_t no_samples;
    uint16_t ampdu_len;
    uint16_t ampdu_packets;
    uint32_t avg_ampdu_len;
    uint8_t sw_retry_step;
    uint8_t sample_wait;
    undefined field_0xe;
    undefined field_0xf;
    struct step retry[4];
    struct rc_rate_stats rate_stats[10];
    uint32_t tp[10];
};

typedef struct me_rc_stats_req me_rc_stats_req, *me_rc_stats_req;

struct me_rc_stats_req {
    uint8_t sta_idx;
};

typedef struct me_set_active_req me_set_active_req, *me_set_active_req;

struct me_set_active_req {
    _Bool active;
    uint8_t vif_idx;
};

typedef struct me_set_control_port_req me_set_control_port_req, *me_set_control_port_req;

struct me_set_control_port_req {
    uint8_t sta_idx;
    _Bool control_port_open;
};

typedef struct me_set_ps_disable_req me_set_ps_disable_req, *me_set_ps_disable_req;

struct me_set_ps_disable_req {
    _Bool ps_disable;
    uint8_t vif_idx;
};

typedef struct me_sta_add_cfm me_sta_add_cfm, *me_sta_add_cfm;

struct me_sta_add_cfm {
    uint8_t sta_idx;
    uint8_t status;
    uint8_t pm_state;
};

typedef struct me_sta_add_req me_sta_add_req, *me_sta_add_req;

typedef struct mac_addr mac_addr, *mac_addr;

typedef struct mac_rateset mac_rateset, *mac_rateset;

struct mac_addr {
    uint16_t array[3];
};

struct mac_rateset {
    uint8_t length;
    uint8_t array[12];
};

struct me_sta_add_req {
    struct mac_addr mac_addr;
    struct mac_rateset rate_set;
    undefined field_0x13;
    struct mac_htcapability ht_cap;
    struct mac_vhtcapability vht_cap;
    uint32_t flags;
    uint16_t aid;
    uint8_t uapsd_queues;
    uint8_t max_sp_len;
    uint8_t opmode;
    uint8_t vif_idx;
    _Bool tdls_sta;
    undefined field_0x4b;
    uint32_t tsflo;
    uint32_t tsfhi;
    int8_t rssi;
    uint8_t data_rate;
    undefined field_0x56;
    undefined field_0x57;
};

typedef struct me_sta_del_req me_sta_del_req, *me_sta_del_req;

struct me_sta_del_req {
    uint8_t sta_idx;
    _Bool tdls_sta;
};

typedef struct me_tkip_mic_failure_ind me_tkip_mic_failure_ind, *me_tkip_mic_failure_ind;

typedef ulonglong __uint64_t;

typedef __uint64_t uint64_t;

struct me_tkip_mic_failure_ind {
    struct mac_addr addr;
    undefined field_0x6;
    undefined field_0x7;
    uint64_t tsc;
    _Bool ga;
    uint8_t keyid;
    uint8_t vif_idx;
    undefined field_0x13;
    undefined field_0x14;
    undefined field_0x15;
    undefined field_0x16;
    undefined field_0x17;
};

typedef struct me_traffic_ind_req me_traffic_ind_req, *me_traffic_ind_req;

struct me_traffic_ind_req {
    uint8_t sta_idx;
    uint8_t tx_avail;
    _Bool uapsd;
};

#if 0 //TODO EXISTS ALEADY
/**
* @file me_task.h
* Header file for BL602
*/
#ifndef __ME_TASK_H__
#define __ME_TASK_H__

struct me_config_req {
    struct mac_htcapability ht_cap; // +0
    struct mac_vhtcapability vht_cap; // +32
    uint16_t tx_lft; // +44
    bool ht_supp; // +46
    bool vht_supp; // +47
    bool ps_on; // +48
};
struct me_chan_config_req {
    struct scan_chan_tag chan2G4[14]; // +0
    struct scan_chan_tag chan5G[28]; // +84
    uint8_t chan2G4_cnt; // +252
    uint8_t chan5G_cnt; // +253
};
struct me_set_control_port_req {
    uint8_t sta_idx; // +0
    bool control_port_open; // +1
};
struct me_tkip_mic_failure_ind {
    struct mac_addr addr; // +0
    uint64_t tsc; // +8
    bool ga; // +16
    uint8_t keyid; // +17
    uint8_t vif_idx; // +18
};
struct me_sta_add_req {
    struct mac_addr mac_addr; // +0
    struct mac_rateset rate_set; // +6
    struct mac_htcapability ht_cap; // +20
    struct mac_vhtcapability vht_cap; // +52
    uint32_t flags; // +64
    uint16_t aid; // +68
    uint8_t uapsd_queues; // +70
    uint8_t max_sp_len; // +71
    uint8_t opmode; // +72
    uint8_t vif_idx; // +73
    bool tdls_sta; // +74
    uint32_t tsflo; // +76
    uint32_t tsfhi; // +80
    int8_t rssi; // +84
    uint8_t data_rate; // +85
};
struct me_sta_add_cfm {
    uint8_t sta_idx; // +0
    uint8_t status; // +1
    uint8_t pm_state; // +2
};
struct me_sta_del_req {
    uint8_t sta_idx; // +0
    bool tdls_sta; // +1
};
struct me_set_active_req {
    bool active; // +0
    uint8_t vif_idx; // +1
};
struct me_set_ps_disable_req {
    bool ps_disable; // +0
    uint8_t vif_idx; // +1
};
struct me_traffic_ind_req {
    uint8_t sta_idx; // +0
    uint8_t tx_avail; // +1
    bool uapsd; // +2
};
struct me_rc_stats_req {
    uint8_t sta_idx; // +0
};
struct me_rc_stats_cfm {
    uint8_t sta_idx; // +0
    uint16_t no_samples; // +2
    uint16_t ampdu_len; // +4
    uint16_t ampdu_packets; // +6
    uint32_t avg_ampdu_len; // +8
    uint8_t sw_retry_step; // +12
    uint8_t sample_wait; // +13
    struct step retry[4]; // +16
    struct rc_rate_stats rate_stats[10]; // +48
    uint32_t tp[10]; // +168
};
struct me_rc_set_rate_req {
    uint8_t sta_idx; // +0
    uint16_t fixed_rate_cfg; // +2
};
const struct ke_state_handler me_default_handler;ke_state_t me_state[1];

#endif // __ME_TASK_H__
#endf 0 //TODO EXISTS ALEADY
