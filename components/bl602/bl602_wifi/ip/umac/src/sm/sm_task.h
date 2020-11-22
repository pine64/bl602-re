
typedef struct sm_connect_cfm sm_connect_cfm, *sm_connect_cfm;

typedef uchar uint8_t;

struct sm_connect_cfm {
    uint8_t status;
};

typedef struct sm_connect_ind sm_connect_ind, *sm_connect_ind;

typedef ushort uint16_t;

typedef uint16_t u16_l;

typedef struct mac_addr mac_addr, *mac_addr;

typedef bool _Bool;

typedef _Bool bool_l;

typedef uint8_t u8_l;

typedef ulong uint32_t;

typedef uint32_t u32_l;

struct mac_addr {
    u8_l array[6];
};

struct sm_connect_ind {
    u16_l status_code;
    struct mac_addr bssid;
    bool_l roamed;
    u8_l vif_idx;
    u8_l ap_idx;
    u8_l ch_idx;
    bool_l qos;
    u8_l acm;
    u16_l assoc_req_ie_len;
    u16_l assoc_rsp_ie_len;
    undefined field_0x12;
    undefined field_0x13;
    u32_l assoc_ie_buf[200];
    u16_l aid;
    u8_l band;
    undefined field_0x337;
    u16_l center_freq;
    u8_l width;
    undefined field_0x33b;
    u32_l center_freq1;
    u32_l center_freq2;
    u32_l ac_param[4];
};

typedef struct sm_connect_req sm_connect_req, *sm_connect_req;

typedef struct mac_ssid mac_ssid, *mac_ssid;

typedef struct scan_chan_tag scan_chan_tag, *scan_chan_tag;

typedef char int8_t;

struct mac_ssid {
    uint8_t length;
    uint8_t array[32];
    uint8_t array_tail[1];
};

struct scan_chan_tag {
    uint16_t freq;
    uint8_t band;
    uint8_t flags;
    int8_t tx_power;
    undefined field_0x5;
};

struct sm_connect_req {
    struct mac_ssid ssid;
    struct mac_addr bssid;
    struct scan_chan_tag chan;
    undefined field_0x2e;
    undefined field_0x2f;
    u32_l flags;
    u16_l ctrl_port_ethertype;
    u16_l ie_len;
    u16_l listen_interval;
    bool_l dont_wait_bcmc;
    u8_l auth_type;
    u8_l uapsd_queues;
    u8_l vif_idx;
    undefined field_0x3e;
    undefined field_0x3f;
    u32_l ie_buf[64];
    _Bool is_supplicant_enabled;
    uint8_t phrase[64];
    uint8_t phrase_pmk[64];
    undefined field_0x1c1;
    undefined field_0x1c2;
    undefined field_0x1c3;
};

typedef struct sm_disconnect_ind sm_disconnect_ind, *sm_disconnect_ind;

struct sm_disconnect_ind {
    uint16_t reason_code;
    uint8_t vif_idx;
    _Bool ft_over_ds;
};

typedef struct sm_disconnect_req sm_disconnect_req, *sm_disconnect_req;

struct sm_disconnect_req {
    uint16_t reason_code;
    uint8_t vif_idx;
    undefined field_0x3;
};

typedef enum sm_msg_tag {
    SM_CONNECT_REQ=6144,
    SM_CONNECT_IND=6146,
    SM_MAX=6151,
    SM_CONNECT_CFM=6145,
    SM_DISCONNECT_IND=6149,
    SM_RSP_TIMEOUT_IND=6150,
    SM_DISCONNECT_REQ=6147,
    SM_DISCONNECT_CFM=6148
} sm_msg_tag;

typedef enum sm_state_tag {
    SM_DISCONNECTING=8,
    SM_STA_ADDING=3,
    SM_SCANNING=1,
    SM_BSS_PARAM_SETTING=4,
    SM_ACTIVATING=7,
    SM_JOINING=2,
    SM_STATE_MAX=9,
    SM_AUTHENTICATING=5,
    SM_ASSOCIATING=6,
    SM_IDLE=0
} sm_state_tag;

