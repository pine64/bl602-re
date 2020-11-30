
typedef struct anon_struct.conflictcfd0 anon_struct.conflictcfd0, *anon_struct.conflictcfd0;

typedef uchar uint8_t;

struct anon_struct.conflictcfd0 {
    uint8_t mac[6];
    uint8_t used;
};

typedef struct apm apm, *apm;

typedef struct apm_start_req apm_start_req, *apm_start_req;

typedef struct co_list co_list, *co_list;

typedef bool _Bool;

typedef struct mac_rateset mac_rateset, *mac_rateset;

typedef struct scan_chan_tag scan_chan_tag, *scan_chan_tag;

typedef ulong uint32_t;

typedef ushort uint16_t;

typedef struct mac_ssid mac_ssid, *mac_ssid;

typedef struct co_list_hdr co_list_hdr, *co_list_hdr;

typedef char int8_t;

struct co_list_hdr {
    struct co_list_hdr * next;
};

struct co_list {
    struct co_list_hdr * first;
    struct co_list_hdr * last;
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

struct apm {
    struct apm_start_req * param;
    struct co_list bss_config;
    uint8_t aging_sta_idx;
    undefined field_0xd;
    undefined field_0xe;
    undefined field_0xf;
    uint8_t * bcn_buf;
    _Bool apm_emb_enabled;
    uint8_t hidden_ssid;
    uint8_t assoc_sta_count;
    uint8_t max_sta_supported;
    struct anon_struct.conflictcfd0 aid_list[10];
    undefined field_0x5e;
    undefined field_0x5f;
};

void apm_assoc_req_handler(void);
void apm_auth_handler(void);
void apm_beacon_handler(void);
void apm_deauth_handler(void);
void apm_disassoc_handler(void);
void apm_embedded_enabled(void);
void apm_init(void);
void apm_probe_req_handler(void);
void apm_send_mlme(void);
void apm_sta_fw_delete(void);
void apm_sta_remove(void);
void apm_start_cfm.conflict1(void);
void apm_stop(void);
void apm_tx_int_ps_check(void);
void apm_tx_int_ps_clear(void);
void apm_tx_int_ps_get_postpone(void);
void apm_tx_int_ps_postpone(void);
#if 0 //TODO EXISTS ALEADY
/**
* @file apm.h
* Header file for BL602
*/
#ifndef __APM_H__
#define __APM_H__

struct apm {
    const struct apm_start_req *param; // +0
    struct co_list bss_config; // +4
    uint8_t aging_sta_idx; // +12
    uint8_t *bcn_buf; // +16
    bool apm_emb_enabled; // +20
    uint8_t hidden_ssid; // +21
    uint8_t assoc_sta_count; // +22
    uint8_t max_sta_supported; // +23
    struct {
        uint8_t mac[6]; // +0
        uint8_t used; // +6
    } aid_list[10]; // +24
};
struct apm apm_env;

#endif // __APM_H__
#endf 0 //TODO EXISTS ALEADY
