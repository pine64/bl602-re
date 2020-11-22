
void mm_check_beacon(void);
typedef struct mm_env_tag mm_env_tag, *mm_env_tag;

typedef ulong uint32_t;

typedef ushort uint16_t;

typedef uchar uint8_t;

typedef bool _Bool;

struct mm_env_tag {
    uint32_t rx_filter_umac;
    uint32_t rx_filter_lmac_enable;
    uint16_t ampdu_max_dur[5];
    uint8_t prev_mm_state;
    uint8_t prev_hw_state;
    uint32_t basic_rates[2];
    uint32_t uapsd_timeout;
    uint16_t lp_clk_accuracy;
    uint8_t host_idle;
    _Bool keep_alive_status_enabled;
    uint32_t keep_alive_packet_counter;
    uint32_t keep_alive_time_last_received;
};

typedef enum mm_features {
    MM_FEAT_P2P_BIT=13,
    MM_FEAT_MROLE_BIT=4,
    MM_FEAT_AUTOBCN_BIT=1,
    MM_FEAT_UMAC_BIT=15,
    MM_FEAT_MFP_BIT=20,
    MM_FEAT_REORD_BIT=12,
    MM_FEAT_P2P_GO_BIT=14,
    MM_FEAT_BCN_BIT=0,
    MM_FEAT_UAPSD_BIT=7,
    MM_FEAT_MU_MIMO_TX_BIT=22,
    MM_FEAT_HWSCAN_BIT=2,
    MM_FEAT_CHNL_CTXT_BIT=11,
    MM_FEAT_MESH_BIT=23,
    MM_FEAT_TDLS_BIT=24,
    MM_FEAT_RADAR_BIT=5,
    MM_FEAT_DPSM_BIT=8,
    MM_FEAT_WAPI_BIT=19,
    MM_FEAT_MU_MIMO_RX_BIT=21,
    MM_FEAT_CMON_BIT=3,
    MM_FEAT_AMPDU_BIT=9,
    MM_FEAT_BFMEE_BIT=17,
    MM_FEAT_PS_BIT=6,
    MM_FEAT_BFMER_BIT=18,
    MM_FEAT_VHT_BIT=16,
    MM_FEAT_AMSDU_BIT=10
} mm_features;

void mm_hw_info_set(void);
void mm_ps_change_ind(uint8_t sta_idx, uint8_t ps_state);
void mm_rx_filter_lmac_enable_clear(uint32_t filter);
void mm_rx_filter_lmac_enable_set(uint32_t filter);
void mm_rx_filter_set(void);
void mm_rx_filter_umac_set(uint32_t filter);
void mm_sec_machwkey_del(void);
void mm_sec_machwkey_wr(void);
void mm_send_connection_loss_ind(void);
void mm_send_csa_traffic_ind(void);
void mm_sta_add(void);
void mm_sta_del(void);
void mm_traffic_req_ind(uint8_t sta_idx, uint8_t pkt_cnt, _Bool uapsd);
