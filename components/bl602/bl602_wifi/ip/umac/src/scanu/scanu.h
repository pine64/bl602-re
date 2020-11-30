
typedef struct scanu_add_ie_tag scanu_add_ie_tag, *scanu_add_ie_tag;

typedef struct dma_desc dma_desc, *dma_desc;

typedef ulong uint32_t;

typedef ushort uint16_t;

struct dma_desc {
    uint32_t src;
    uint32_t dest;
    uint16_t length;
    uint16_t ctrl;
    uint32_t next;
};

struct scanu_add_ie_tag {
    struct dma_desc dma_desc;
    uint32_t buf[50];
};

void scanu_confirm(void);
typedef struct scanu_env_tag scanu_env_tag, *scanu_env_tag;

typedef struct scanu_start_req scanu_start_req, *scanu_start_req;

typedef struct hal_dma_desc_tag hal_dma_desc_tag, *hal_dma_desc_tag;

typedef struct mac_scan_result mac_scan_result, *mac_scan_result;

typedef uint16_t ke_task_id_t;

typedef bool _Bool;

typedef uchar uint8_t;

typedef struct mac_addr mac_addr, *mac_addr;

typedef struct mac_ssid mac_ssid, *mac_ssid;

typedef struct scan_chan_tag scan_chan_tag, *scan_chan_tag;

typedef struct mac_addr mac_addr, *mac_addr;

typedef uint32_t u32_l;

typedef uint16_t u16_l;

typedef uint8_t u8_l;

typedef struct co_list_hdr co_list_hdr, *co_list_hdr;

void cb_dma_func_ptr(void * , int );
typedef char int8_t;

struct mac_ssid {
    uint8_t length;
    uint8_t array[32];
    uint8_t array_tail[1];
};

struct co_list_hdr {
    struct co_list_hdr * next;
};

struct hal_dma_desc_tag {
    struct co_list_hdr hdr;
    struct dma_desc * dma_desc;
    void (* cb)(void *, int);
    void * env;
};

struct mac_addr {
    uint16_t array[3];
};

struct mac_scan_result {
    struct mac_addr bssid;
    struct mac_ssid ssid;
    uint16_t bsstype;
    undefined field_0x2a;
    undefined field_0x2b;
    struct scan_chan_tag * chan;
    uint16_t beacon_period;
    uint16_t cap_info;
    _Bool valid_flag;
    int8_t rssi;
    int8_t ppm_rel;
    int8_t ppm_abs;
};

struct scanu_env_tag {
    struct scanu_start_req * param;
    struct hal_dma_desc_tag dma_desc;
    uint16_t result_cnt;
    undefined field_0x16;
    undefined field_0x17;
    struct mac_scan_result scan_result[6];
    ke_task_id_t src_id;
    _Bool joining;
    uint8_t band;
    struct mac_addr bssid;
    struct mac_ssid ssid;
};

struct mac_addr {
    u8_l array[6];
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

void scanu_frame_handler(void);
void scanu_init(void);
void scanu_raw_send_cfm.conflict1(void);
void scanu_rm_exist_ssid(void);
void scanu_search_by_bssid(void);
void scanu_search_by_ssid(void);
#if 0 //TODO EXISTS ALEADY
/**
* @file scanu.h
* Header file for BL602
*/
#ifndef __SCANU_H__
#define __SCANU_H__

struct scanu_env_tag {
    const struct scanu_start_req *param; // +0
    struct hal_dma_desc_tag dma_desc; // +4
    uint16_t result_cnt; // +20
    struct mac_scan_result scan_result[6]; // +24
    ke_task_id_t src_id; // +360
    bool joining; // +362
    uint8_t band; // +363
    struct mac_addr bssid; // +364
    struct mac_ssid ssid; // +370
};
struct scanu_add_ie_tag {
    struct dma_desc dma_desc; // +0
    uint32_t buf[50]; // +16
};
struct scanu_env_tag scanu_env;struct scanu_add_ie_tag scanu_add_ie;

#endif // __SCANU_H__
#endf 0 //TODO EXISTS ALEADY
