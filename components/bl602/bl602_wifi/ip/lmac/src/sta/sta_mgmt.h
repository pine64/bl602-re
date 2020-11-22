
typedef struct sta_info_env_tag sta_info_env_tag, *sta_info_env_tag;

typedef struct co_list co_list, *co_list;

typedef struct co_list_hdr co_list_hdr, *co_list_hdr;

struct co_list_hdr {
    struct co_list_hdr * next;
};

struct co_list {
    struct co_list_hdr * first;
    struct co_list_hdr * last;
};

struct sta_info_env_tag {
    struct co_list free_sta_list;
};

typedef struct sta_info_tag sta_info_tag, *sta_info_tag;

typedef ulong uint32_t;

typedef ushort uint16_t;

typedef uchar uint8_t;

typedef bool _Bool;

typedef struct mac_addr mac_addr, *mac_addr;

typedef char int8_t;

typedef enum sta_ps_traffic {
    PS_TRAFFIC=3,
    UAPSD_TRAFFIC_HOST=4,
    UAPSD_TRAFFIC_INT=8,
    PS_TRAFFIC_HOST=1,
    PS_TRAFFIC_INT=2,
    UAPSD_TRAFFIC=12
} sta_ps_traffic;

typedef int sta_ps_sp_t;

typedef struct sta_mgmt_sec_info sta_mgmt_sec_info, *sta_mgmt_sec_info;

typedef struct mac_sta_info mac_sta_info, *mac_sta_info;

typedef struct sta_pol_tbl_cntl sta_pol_tbl_cntl, *sta_pol_tbl_cntl;

typedef struct sta_mgmt_ba_info sta_mgmt_ba_info, *sta_mgmt_ba_info;

typedef struct key_info_tag key_info_tag, *key_info_tag;

typedef struct mac_rateset mac_rateset, *mac_rateset;

typedef struct mac_htcapability mac_htcapability, *mac_htcapability;

typedef struct mac_vhtcapability mac_vhtcapability, *mac_vhtcapability;

typedef struct txl_buffer_control txl_buffer_control, *txl_buffer_control;

typedef struct rc_sta_stats rc_sta_stats, *rc_sta_stats;

typedef ulonglong __uint64_t;

typedef __uint64_t uint64_t;

typedef union anon_union.conflict97f3_for_u anon_union.conflict97f3_for_u, *anon_union.conflict97f3_for_u;

typedef union anon_union.conflictbf1b_for_field_0 anon_union.conflictbf1b_for_field_0, *anon_union.conflictbf1b_for_field_0;

typedef struct rc_rate_stats rc_rate_stats, *rc_rate_stats;

typedef struct step step, *step;

typedef union anon_union.conflictc3d7_for_rate_map anon_union.conflictc3d7_for_rate_map, *anon_union.conflictc3d7_for_rate_map;

typedef struct anon_struct.conflict9793 anon_struct.conflict9793, *anon_struct.conflict9793;

typedef struct anon_struct.conflict97ca anon_struct.conflict97ca, *anon_struct.conflict97ca;

typedef struct tx_policy_tbl tx_policy_tbl, *tx_policy_tbl;

typedef struct tx_compressed_policy_tbl tx_compressed_policy_tbl, *tx_compressed_policy_tbl;

struct sta_mgmt_ba_info {
    uint32_t last_tx_time;
    uint32_t last_ba_add_time;
    uint8_t bam_idx_rx;
    uint8_t bam_idx_tx;
    int8_t credit_oft;
    undefined field_0xb;
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

union anon_union.conflictc3d7_for_rate_map {
    uint8_t ht[4];
};

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

struct tx_compressed_policy_tbl {
    uint32_t upatterntx;
    uint32_t sec_user_control;
};

struct tx_policy_tbl {
    uint32_t upatterntx;
    uint32_t phycntrlinfo1;
    uint32_t phycntrlinfo2;
    uint32_t maccntrlinfo1;
    uint32_t maccntrlinfo2;
    uint32_t ratecntrlinfo[4];
    uint32_t powercntrlinfo[4];
};

union anon_union.conflictbf1b_for_field_0 {
    struct tx_policy_tbl policy_tbl;
    struct tx_compressed_policy_tbl comp_pol_tbl;
};

struct sta_pol_tbl_cntl {
    struct txl_buffer_control * buf_ctrl;
    struct rc_sta_stats * sta_stats;
    uint32_t prot_cfg;
    uint16_t ppdu_tx_cfg;
    uint8_t upd_field;
    undefined field_0xf;
};

struct mac_rateset {
    uint8_t length;
    uint8_t array[12];
};

struct anon_struct.conflict97ca {
    uint32_t key[4];
};

struct anon_struct.conflict9793 {
    uint32_t tx_key[2];
    uint32_t rx_key[2];
};

union anon_union.conflict97f3_for_u {
    struct anon_struct.conflict9793 mic;
    struct anon_struct.conflict97ca mfp;
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

struct mac_vhtcapability {
    uint32_t vht_capa_info;
    uint16_t rx_mcs_map;
    uint16_t rx_highest;
    uint16_t tx_mcs_map;
    uint16_t tx_highest;
};

struct mac_sta_info {
    struct mac_rateset rate_set;
    undefined field_0xd;
    undefined field_0xe;
    undefined field_0xf;
    struct mac_htcapability ht_cap;
    struct mac_vhtcapability vht_cap;
    uint32_t capa_flags;
    uint8_t phy_bw_max;
    uint8_t bw_cur;
    uint8_t uapsd_queues;
    uint8_t max_sp_len;
    uint8_t stbc_nss;
    undefined field_0x45;
    undefined field_0x46;
    undefined field_0x47;
};

struct key_info_tag {
    uint64_t rx_pn[9];
    uint64_t tx_pn;
    union anon_union.conflict97f3_for_u u;
    uint8_t cipher;
    uint8_t key_idx;
    uint8_t hw_key_idx;
    _Bool valid;
    undefined field_0x64;
    undefined field_0x65;
    undefined field_0x66;
    undefined field_0x67;
};

struct sta_mgmt_sec_info {
    struct key_info_tag key_info;
    struct key_info_tag * pairwise_key;
    struct key_info_tag * * cur_key;
};

struct mac_addr {
    uint16_t array[3];
};

struct sta_info_tag {
    struct co_list_hdr list_hdr;
    uint32_t bcn_int;
    uint32_t ampdu_size_max_vht;
    uint16_t ampdu_size_max_ht;
    undefined field_0xe;
    undefined field_0xf;
    uint32_t paid_gid;
    uint8_t ampdu_spacing_min;
    undefined field_0x15;
    uint16_t drift;
    uint16_t aid;
    uint8_t inst_nbr;
    uint8_t staid;
    uint8_t ps_state;
    _Bool valid;
    struct mac_addr mac_addr;
    int8_t rssi;
    undefined field_0x25;
    undefined field_0x26;
    undefined field_0x27;
    uint32_t tsflo;
    uint32_t tsfhi;
    uint8_t data_rate;
    uint8_t ctrl_port_state;
    enum sta_ps_traffic traffic_avail;
    undefined field_0x33;
    sta_ps_sp_t ps_service_period;
    uint16_t ctrl_port_ethertype;
    undefined field_0x3a;
    undefined field_0x3b;
    undefined field_0x3c;
    undefined field_0x3d;
    undefined field_0x3e;
    undefined field_0x3f;
    struct sta_mgmt_sec_info sta_sec_info;
    struct mac_sta_info info;
    uint16_t seq_nbr[9];
    undefined field_0x10a;
    undefined field_0x10b;
    struct sta_pol_tbl_cntl pol_tbl;
    struct sta_mgmt_ba_info ba_info[9];
    uint16_t rx_nqos_last_seqcntl;
    uint16_t rx_qos_last_seqcntl[9];
    struct co_list tx_desc_post;
    void * suppData;
    uint32_t time_last_seen;
    undefined field_0x1ac;
    undefined field_0x1ad;
    undefined field_0x1ae;
    undefined field_0x1af;
};

struct txl_buffer_control {
    union anon_union.conflictbf1b_for_field_0 field_0;
    uint32_t mac_control_info;
    uint32_t phy_control_info;
};

void sta_mgmt_add_key(void);
void sta_mgmt_del_key(void);
mac_addr * sta_mgmt_get_peer_addr(uint8_t sta_idx);
uint16_t sta_mgmt_get_port_ethertype(uint8_t sta_idx);
uint8_t sta_mgmt_get_port_state(uint8_t sta_idx);
uint16_t sta_mgmt_get_tx_ssn_and_inc(uint8_t sta_idx, uint8_t tid);
uint8_t sta_mgmt_get_vif_idx(uint8_t sta_idx);
void sta_mgmt_init(void);
_Bool sta_mgmt_is_valid(uint8_t sta_idx);
typedef enum sta_mgmt_pol_upd {
    STA_MGMT_POL_UPD_RATE=0,
    STA_MGMT_POL_UPD_PPDU_TX=2,
    STA_MGMT_POL_UPD_PROT=1,
    STA_MGMT_POL_UPD_BW=3,
    STA_MGMT_POL_UPD_MAX=5,
    STA_MGMT_POL_UPD_TX_POWER=4
} sta_mgmt_pol_upd;

void sta_mgmt_register(void);
void sta_mgmt_send_postponed_frame(void);
void sta_mgmt_unregister(void);
typedef enum sta_ps_sp {
    ANY_SERVICE_PERIOD_INT=3,
    PS_SERVICE_PERIOD=1,
    UAPSD_SERVICE_PERIOD_HOST=4,
    BCN_SERVICE_PERIOD=8,
    UAPSD_SERVICE_PERIOD=6,
    UAPSD_SERVICE_PERIOD_INT=2,
    NO_SERVICE_PERIOD=0
} sta_ps_sp;

