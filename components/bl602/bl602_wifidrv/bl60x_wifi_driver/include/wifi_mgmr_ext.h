
void scan_complete_cb_t(void * , void * );
void scan_item_cb_t(wifi_mgmr_ap_item_t * , uint32_t * , wifi_mgmr_ap_item_t * );
void sniffer_cb_t(void * , uint8_t * , int );
typedef struct wifi_conf wifi_conf, *wifi_conf;

struct wifi_conf {
    char country_code[3];
    undefined field_0x3;
    int channel_nums;
};

typedef struct wifi_conf wifi_conf_t;

typedef void * wifi_interface_t;

void wifi_mgmr_ap_enable(void);
typedef struct wifi_mgmr_ap_item wifi_mgmr_ap_item, *wifi_mgmr_ap_item;

typedef ulong uint32_t;

typedef uchar uint8_t;

typedef char int8_t;

struct wifi_mgmr_ap_item {
    char ssid[32];
    char ssid_tail[1];
    undefined field_0x21;
    undefined field_0x22;
    undefined field_0x23;
    uint32_t ssid_len;
    uint8_t bssid[6];
    uint8_t channel;
    uint8_t auth;
    int8_t rssi;
    undefined field_0x31;
    undefined field_0x32;
    undefined field_0x33;
};

typedef struct wifi_mgmr_ap_item wifi_mgmr_ap_item_t;

void wifi_mgmr_ap_sta_cnt_get(void);
void wifi_mgmr_ap_sta_delete(void);
void wifi_mgmr_ap_sta_info_get(void);
void wifi_mgmr_ap_start(void);
void wifi_mgmr_ap_stop(void);
void wifi_mgmr_cfg_req(void);
void wifi_mgmr_cli_init(void);
void wifi_mgmr_cli_scanlist(void);
void wifi_mgmr_conf_max_sta(void);
void wifi_mgmr_drv_init(void);
void wifi_mgmr_ext_dump_needed(void);
void wifi_mgmr_init(void);
void wifi_mgmr_psk_cal(void);
void wifi_mgmr_rate_config(void);
void wifi_mgmr_raw_80211_send(void);
void wifi_mgmr_rssi_get(void);
void wifi_mgmr_scan(void);
void wifi_mgmr_scan_complete_callback(void);
void wifi_mgmr_scan_filter_hidden_ssid(void);
void wifi_mgmr_sniffer_disable(void);
void wifi_mgmr_sniffer_enable(void);
void wifi_mgmr_sniffer_register(void);
void wifi_mgmr_sniffer_unregister(void);
void wifi_mgmr_sta_autoconnect_disable(void);
void wifi_mgmr_sta_autoconnect_enable(void);
void wifi_mgmr_sta_connect(void);
typedef struct wifi_mgmr_sta_connect_ind_stat_info wifi_mgmr_sta_connect_ind_stat_info, *wifi_mgmr_sta_connect_ind_stat_info;

typedef ushort uint16_t;

struct wifi_mgmr_sta_connect_ind_stat_info {
    uint16_t status_code;
    uint8_t type_ind;
    char ssid[32];
    char psk[65];
    char pmk[64];
    uint8_t bssid[6];
    uint16_t chan_freq;
    uint8_t chan_band;
    undefined field_0xad;
};

typedef struct wifi_mgmr_sta_connect_ind_stat_info wifi_mgmr_sta_connect_ind_stat_info_t;

void wifi_mgmr_sta_disable(void);
void wifi_mgmr_sta_disconnect(void);
void wifi_mgmr_sta_dns_get(void);
void wifi_mgmr_sta_enable(void);
void wifi_mgmr_sta_ip_get(void);
void wifi_mgmr_sta_ip_set(void);
void wifi_mgmr_sta_ip_unset(void);
void wifi_mgmr_sta_powersaving(void);
void wifi_mgmr_start_background(void);
void wifi_mgmr_state_get(void);
void wifi_mgmr_status_code_str(void);
typedef enum WIFI_SCAN_DONE_EVENT_TYPE {
    WIFI_SCAN_DONE_EVENT_BUSY=1,
    WIFI_SCAN_DONE_EVENT_OK=0
} WIFI_SCAN_DONE_EVENT_TYPE;

typedef struct wifi_sta_basic_info wifi_sta_basic_info, *wifi_sta_basic_info;

struct wifi_sta_basic_info {
    uint8_t sta_idx;
    uint8_t is_used;
    uint8_t sta_mac[6];
    uint32_t tsfhi;
    uint32_t tsflo;
    int rssi;
    uint8_t data_rate;
    undefined field_0x15;
    undefined field_0x16;
    undefined field_0x17;
};

typedef enum WIFI_STATE_ENUM_LIST {
    WIFI_STATE_WITH_AP_DISCONNECT=21,
    WIFI_STATE_WITH_AP_CONNECTED_IP_GETTING=19,
    WIFI_STATE_CONNECTED_IP_GOT=4,
    WIFI_STATE_IDLE=1,
    WIFI_STATE_IFDOWN=6,
    WIFI_STATE_CONNECTED_IP_GETTING=3,
    WIFI_STATE_DISCONNECT=5,
    WIFI_STATE_CONNECTING=2,
    WIFI_STATE_WITH_AP_CONNECTED_IP_GOT=20,
    WIFI_STATE_NO_AP_FOUND=9,
    WIFI_STATE_PSK_ERROR=8,
    WIFI_STATE_WITH_AP_CONNECTING=18,
    WIFI_STATE_UNKNOWN=0,
    WIFI_STATE_WITH_AP_IDLE=17,
    WIFI_STATE_SNIFFER=7
} WIFI_STATE_ENUM_LIST;

