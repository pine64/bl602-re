
typedef struct scan_cancel_cfm scan_cancel_cfm, *scan_cancel_cfm;

typedef uchar uint8_t;

struct scan_cancel_cfm {
    uint8_t status;
};

typedef enum scan_msg_tag {
    SCAN_START_REQ=2048,
    SCAN_START_CFM=2049,
    SCAN_CANCEL_CFM=2052,
    SCAN_MAX=2054,
    SCAN_CANCEL_REQ=2051,
    SCAN_TIMER=2053,
    SCAN_DONE_IND=2050
} scan_msg_tag;

typedef struct scan_start_cfm scan_start_cfm, *scan_start_cfm;

struct scan_start_cfm {
    uint8_t status;
};

typedef struct scan_start_req scan_start_req, *scan_start_req;

typedef struct scan_chan_tag scan_chan_tag, *scan_chan_tag;

typedef struct mac_ssid mac_ssid, *mac_ssid;

typedef struct mac_addr mac_addr, *mac_addr;

typedef ulong uint32_t;

typedef ushort uint16_t;

typedef bool _Bool;

typedef char int8_t;

struct scan_chan_tag {
    uint16_t freq;
    uint8_t band;
    uint8_t flags;
    int8_t tx_power;
    undefined field_0x5;
};

struct mac_addr {
    uint16_t array[3];
};

struct mac_ssid {
    uint8_t length;
    uint8_t array[32];
    uint8_t array_tail[1];
};

struct scan_start_req {
    struct scan_chan_tag chan[42];
    struct mac_ssid ssid[2];
    struct mac_addr bssid;
    undefined field_0x146;
    undefined field_0x147;
    uint32_t add_ies;
    uint16_t add_ie_len;
    uint8_t vif_idx;
    uint8_t chan_cnt;
    uint8_t ssid_cnt;
    _Bool no_cck;
    undefined field_0x152;
    undefined field_0x153;
};

typedef enum scan_state_tag {
    SCAN_STATE_MAX=4,
    SCAN_WAIT_BEACON_PROBE_RSP=3,
    SCAN_WAIT_IE_DWNLD=1,
    SCAN_IDLE=0,
    SCAN_WAIT_CHANNEL=2
} scan_state_tag;

