
typedef struct apm_conf_max_sta_req apm_conf_max_sta_req, *apm_conf_max_sta_req;

typedef uchar uint8_t;

struct apm_conf_max_sta_req {
    uint8_t max_sta_supported;
};

typedef enum apm_msg_tag {
    APM_STA_DEL_REQ=7179,
    APM_STA_DEL_IND=7177,
    APM_MAX=7183,
    APM_STOP_CAC_CFM=7175,
    APM_STA_CONNECT_TIMEOUT_IND=7178,
    APM_START_CAC_REQ=7172,
    APM_CONF_MAX_STA_CFM=7182,
    APM_STOP_CFM=7171,
    APM_STOP_CAC_REQ=7174,
    APM_CONF_MAX_STA_REQ=7181,
    APM_STA_ADD_IND=7176,
    APM_START_REQ=7168,
    APM_START_CFM=7169,
    APM_STOP_REQ=7170,
    APM_STA_DEL_CFM=7180,
    APM_START_CAC_CFM=7173
} apm_msg_tag;

typedef struct apm_sta_add_ind apm_sta_add_ind, *apm_sta_add_ind;

typedef ulong uint32_t;

typedef struct mac_addr mac_addr, *mac_addr;

typedef char int8_t;

typedef uint8_t u8_l;

struct mac_addr {
    u8_l array[6];
};

struct apm_sta_add_ind {
    uint32_t flags;
    struct mac_addr sta_addr;
    uint8_t vif_idx;
    uint8_t sta_idx;
    int8_t rssi;
    undefined field_0xd;
    undefined field_0xe;
    undefined field_0xf;
    uint32_t tsflo;
    uint32_t tsfhi;
    uint8_t data_rate;
    undefined field_0x19;
    undefined field_0x1a;
    undefined field_0x1b;
};

typedef struct apm_sta_del_cfm apm_sta_del_cfm, *apm_sta_del_cfm;

struct apm_sta_del_cfm {
    uint8_t status;
    uint8_t vif_idx;
    uint8_t sta_idx;
};

typedef struct apm_sta_del_ind apm_sta_del_ind, *apm_sta_del_ind;

struct apm_sta_del_ind {
    uint8_t sta_idx;
};

typedef struct apm_sta_del_req apm_sta_del_req, *apm_sta_del_req;

struct apm_sta_del_req {
    uint8_t vif_idx;
    uint8_t sta_idx;
};

typedef struct apm_start_cac_cfm apm_start_cac_cfm, *apm_start_cac_cfm;

struct apm_start_cac_cfm {
    uint8_t status;
    uint8_t ch_idx;
};

typedef struct apm_start_cac_req apm_start_cac_req, *apm_start_cac_req;

typedef struct scan_chan_tag scan_chan_tag, *scan_chan_tag;

typedef ushort uint16_t;

struct scan_chan_tag {
    uint16_t freq;
    uint8_t band;
    uint8_t flags;
    int8_t tx_power;
    undefined field_0x5;
};

struct apm_start_cac_req {
    struct scan_chan_tag chan;
    undefined field_0x6;
    undefined field_0x7;
    uint32_t center_freq1;
    uint32_t center_freq2;
    uint8_t ch_width;
    uint8_t vif_idx;
    undefined field_0x12;
    undefined field_0x13;
};

typedef struct apm_start_cfm apm_start_cfm, *apm_start_cfm;

struct apm_start_cfm {
    uint8_t status;
    uint8_t vif_idx;
    uint8_t ch_idx;
    uint8_t bcmc_idx;
};

typedef struct apm_start_req apm_start_req, *apm_start_req;

typedef struct mac_rateset mac_rateset, *mac_rateset;

typedef bool _Bool;

typedef struct mac_ssid mac_ssid, *mac_ssid;

struct mac_ssid {
    uint8_t length;
    uint8_t array[32];
    uint8_t array_tail[1];
};

struct mac_rateset {
    uint8_t length;
    uint8_t array[12];
};

struct apm_start_req {
    struct mac_rateset basic_rates;
    undefined field_0xd;
    struct scan_chan_tag chan;
    uint32_t center_freq1;
    uint32_t center_freq2;
    uint8_t ch_width;
    uint8_t hidden_ssid;
    undefined field_0x1e;
    undefined field_0x1f;
    uint32_t bcn_addr;
    uint16_t bcn_len;
    uint16_t tim_oft;
    uint16_t bcn_int;
    undefined field_0x2a;
    undefined field_0x2b;
    uint32_t flags;
    uint16_t ctrl_port_ethertype;
    uint8_t tim_len;
    uint8_t vif_idx;
    _Bool apm_emb_enabled;
    struct mac_rateset rate_set;
    uint8_t beacon_period;
    uint8_t qos_supported;
    struct mac_ssid ssid;
    uint8_t ap_sec_type;
    uint8_t phrase[64];
    undefined field_0xa7;
};

typedef enum apm_state_tag {
    APM_BCN_SETTING=2,
    APM_IDLE=0,
    APM_BSS_PARAM_SETTING=1,
    APM_STATE_MAX=3
} apm_state_tag;

typedef struct apm_stop_cac_req apm_stop_cac_req, *apm_stop_cac_req;

struct apm_stop_cac_req {
    uint8_t vif_idx;
};

typedef struct apm_stop_req apm_stop_req, *apm_stop_req;

struct apm_stop_req {
    uint8_t vif_idx;
};

#if 0 //TODO EXISTS ALEADY
/**
* @file apm_task.h
* Header file for BL602
*/
#ifndef __APM_TASK_H__
#define __APM_TASK_H__

enum apm_state_tag {
    APM_IDLE = 0,
    APM_BSS_PARAM_SETTING = 1,
    APM_BCN_SETTING = 2,
    APM_STATE_MAX = 3,
};
enum apm_msg_tag {
    APM_START_REQ = 7168,
    APM_START_CFM = 7169,
    APM_STOP_REQ = 7170,
    APM_STOP_CFM = 7171,
    APM_START_CAC_REQ = 7172,
    APM_START_CAC_CFM = 7173,
    APM_STOP_CAC_REQ = 7174,
    APM_STOP_CAC_CFM = 7175,
    APM_STA_ADD_IND = 7176,
    APM_STA_DEL_IND = 7177,
    APM_STA_CONNECT_TIMEOUT_IND = 7178,
    APM_STA_DEL_REQ = 7179,
    APM_STA_DEL_CFM = 7180,
    APM_CONF_MAX_STA_REQ = 7181,
    APM_CONF_MAX_STA_CFM = 7182,
};
struct apm_start_req {
    struct mac_rateset basic_rates; // +0
    struct scan_chan_tag chan; // +14
    uint32_t center_freq1; // +20
    uint32_t center_freq2; // +24
    uint8_t ch_width; // +28
    uint8_t hidden_ssid; // +29
    uint32_t bcn_addr; // +32
    uint16_t bcn_len; // +36
    uint16_t tim_oft; // +38
    uint16_t bcn_int; // +40
    uint32_t flags; // +44
    uint16_t ctrl_port_ethertype; // +48
    uint8_t tim_len; // +50
    uint8_t vif_idx; // +51
    bool apm_emb_enabled; // +52
    struct mac_rateset rate_set; // +53
    uint8_t beacon_period; // +66
    uint8_t qos_supported; // +67
    struct mac_ssid ssid; // +68
    uint8_t ap_sec_type; // +102
    uint8_t phrase[64]; // +103
    uint8_t bcn_buf[]; // +167
};
struct apm_start_cfm {
    uint8_t status; // +0
    uint8_t vif_idx; // +1
    uint8_t ch_idx; // +2
    uint8_t bcmc_idx; // +3
};
struct apm_stop_req {
    uint8_t vif_idx; // +0
};
struct apm_conf_max_sta_req {
    uint8_t max_sta_supported; // +0
};
struct apm_start_cac_req {
    struct scan_chan_tag chan; // +0
    uint32_t center_freq1; // +8
    uint32_t center_freq2; // +12
    uint8_t ch_width; // +16
    uint8_t vif_idx; // +17
};
struct apm_start_cac_cfm {
    uint8_t status; // +0
    uint8_t ch_idx; // +1
};
struct apm_stop_cac_req {
    uint8_t vif_idx; // +0
};
struct apm_sta_del_req {
    uint8_t vif_idx; // +0
    uint8_t sta_idx; // +1
};
struct apm_sta_del_cfm {
    uint8_t status; // +0
    uint8_t vif_idx; // +1
    uint8_t sta_idx; // +2
};
struct apm_sta_add_ind {
    uint32_t flags; // +0
    struct mac_addr sta_addr; // +4
    uint8_t vif_idx; // +10
    uint8_t sta_idx; // +11
    int8_t rssi; // +12
    uint32_t tsflo; // +16
    uint32_t tsfhi; // +20
    uint8_t data_rate; // +24
};
struct apm_sta_del_ind {
    uint8_t sta_idx; // +0
};
const struct ke_state_handler apm_default_handler;ke_state_t apm_state[1];

#endif // __APM_TASK_H__
#endf 0 //TODO EXISTS ALEADY
