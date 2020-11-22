
typedef struct scanu_raw_send_cfm scanu_raw_send_cfm, *scanu_raw_send_cfm;

typedef ulong uint32_t;

struct scanu_raw_send_cfm {
    uint32_t status;
};

typedef struct scanu_raw_send_req scanu_raw_send_req, *scanu_raw_send_req;

struct scanu_raw_send_req {
    void * pkt;
    uint32_t len;
};

typedef struct scanu_start_cfm scanu_start_cfm, *scanu_start_cfm;

typedef uchar uint8_t;

struct scanu_start_cfm {
    uint8_t status;
};

typedef struct scanu_start_req scanu_start_req, *scanu_start_req;

typedef struct scan_chan_tag scan_chan_tag, *scan_chan_tag;

typedef struct mac_ssid mac_ssid, *mac_ssid;

typedef struct mac_addr mac_addr, *mac_addr;

typedef uint32_t u32_l;

typedef ushort uint16_t;

typedef uint16_t u16_l;

typedef uint8_t u8_l;

typedef bool _Bool;

typedef char int8_t;

struct mac_addr {
    u8_l array[6];
};

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

struct scanu_start_req {
    struct scan_chan_tag chan[42];
    struct mac_ssid ssid[2];
    struct mac_addr bssid;
    undefined field_0x146;
    undefined field_0x147;
    u32_l add_ies;
    u16_l add_ie_len;
    u8_l vif_idx;
    u8_l chan_cnt;
    u8_l ssid_cnt;
    _Bool no_cck;
    undefined field_0x152;
    undefined field_0x153;
};

