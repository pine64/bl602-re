
typedef struct mac_bss_info mac_bss_info, *mac_bss_info;

typedef struct mac_htcapability mac_htcapability, *mac_htcapability;

typedef struct mac_addr mac_addr, *mac_addr;

typedef struct mac_ssid mac_ssid, *mac_ssid;

typedef ushort uint16_t;

typedef struct scan_chan_tag scan_chan_tag, *scan_chan_tag;

typedef struct mac_rateset mac_rateset, *mac_rateset;

typedef struct mac_edca_param_set mac_edca_param_set, *mac_edca_param_set;

typedef char int8_t;

typedef uchar uint8_t;

typedef ulong uint32_t;

typedef struct mobility_domain mobility_domain, *mobility_domain;

typedef bool _Bool;

typedef struct SecurityMode_t SecurityMode_t, *SecurityMode_t;

typedef struct Cipher_t Cipher_t, *Cipher_t;

typedef ushort UINT16;

typedef uchar UINT8;

struct mobility_domain {
    uint16_t mdid;
    uint8_t ft_capability_policy;
    undefined field_0x3;
};

struct Cipher_t {
    UINT8 wep40:1;
    UINT8 wep104:1;
    UINT8 tkip:1;
    UINT8 ccmp:1;
    UINT8 rsvd:4;
};

struct mac_addr {
    uint16_t array[3];
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

struct mac_edca_param_set {
    uint8_t qos_info;
    uint8_t acm;
    undefined field_0x2;
    undefined field_0x3;
    uint32_t ac_param[4];
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

struct mac_rateset {
    uint8_t length;
    uint8_t array[12];
};

struct SecurityMode_t {
    UINT16 noRsn:1;
    UINT16 wepStatic:1;
    UINT16 wepDynamic:1;
    UINT16 wpa:1;
    UINT16 wpaNone:1;
    UINT16 wpa2:1;
    UINT16 cckm:1;
    UINT16 wapi:1;
    UINT16 wpa3:1;
    UINT16 rsvd:7;
};

struct mac_bss_info {
    struct mac_htcapability ht_cap;
    struct mac_addr bssid;
    struct mac_ssid ssid;
    uint16_t bsstype;
    undefined field_0x4a;
    undefined field_0x4b;
    struct scan_chan_tag * chan;
    uint16_t center_freq1;
    uint16_t center_freq2;
    uint16_t beacon_period;
    uint16_t cap_info;
    struct mac_rateset rate_set;
    undefined field_0x65;
    undefined field_0x66;
    undefined field_0x67;
    struct mac_edca_param_set edca_param;
    int8_t rssi;
    int8_t ppm_rel;
    int8_t ppm_abs;
    uint8_t high_11b_rate;
    uint16_t prot_status;
    uint8_t bw;
    uint8_t phy_bw;
    uint8_t power_constraint;
    undefined field_0x85;
    undefined field_0x86;
    undefined field_0x87;
    uint32_t valid_flags;
    struct mobility_domain mde;
    _Bool is_supplicant_enabled;
    struct SecurityMode_t wpa_wpa2_wep;
    struct Cipher_t wpa_mcstCipher;
    struct Cipher_t wpa_ucstCipher;
    struct Cipher_t rsn_mcstCipher;
    struct Cipher_t rsn_ucstCipher;
    _Bool is_pmf_required;
    _Bool is_wpa2_prefered;
    uint8_t rsn_wpa_ie[32];
    uint8_t rsn_wpa_ie_len;
    uint16_t beacon_interval;
    uint16_t aid_bitmap;
    uint16_t max_listen_interval;
    uint8_t sec_type;
    undefined field_0xc1;
    undefined field_0xc2;
    undefined field_0xc3;
};

typedef struct me_env_tag me_env_tag, *me_env_tag;

typedef uint16_t ke_task_id_t;

typedef struct me_chan_config_req me_chan_config_req, *me_chan_config_req;

struct me_chan_config_req {
    struct scan_chan_tag chan2G4[14];
    struct scan_chan_tag chan5G[28];
    uint8_t chan2G4_cnt;
    uint8_t chan5G_cnt;
};

struct me_env_tag {
    uint32_t active_vifs;
    uint32_t ps_disable_vifs;
    ke_task_id_t requester_id;
    undefined field_0xa;
    undefined field_0xb;
    struct mac_htcapability ht_cap;
    uint16_t tx_lft;
    _Bool ht_supported;
    undefined field_0x2f;
    struct me_chan_config_req chan;
    uint8_t stbc_nss;
    uint8_t phy_bw_max;
    _Bool ps_on;
    undefined field_0x131;
    undefined field_0x132;
    undefined field_0x133;
};

void me_freq_to_chan_ptr(void);
void process_rsn_ie(void);
void process_wpa_ie(void);
#if 0 //TODO EXISTS ALEADY
/**
* @file me.h
* Header file for BL602
*/
#ifndef __ME_H__
#define __ME_H__

struct me_env_tag {
    uint32_t active_vifs; // +0
    uint32_t ps_disable_vifs; // +4
    ke_task_id_t requester_id; // +8
    struct mac_htcapability ht_cap; // +12
    uint16_t tx_lft; // +44
    bool ht_supported; // +46
    struct me_chan_config_req chan; // +48
    uint8_t stbc_nss; // +302
    uint8_t phy_bw_max; // +303
    bool ps_on; // +304
};
struct mobility_domain {
    uint16_t mdid; // +0
    uint8_t ft_capability_policy; // +2
};
struct mac_bss_info {
    struct mac_htcapability ht_cap; // +0
    struct mac_addr bssid; // +32
    struct mac_ssid ssid; // +38
    uint16_t bsstype; // +72
    struct scan_chan_tag *chan; // +76
    uint16_t center_freq1; // +80
    uint16_t center_freq2; // +82
    uint16_t beacon_period; // +84
    uint16_t cap_info; // +86
    struct mac_rateset rate_set; // +88
    struct mac_edca_param_set edca_param; // +104
    int8_t rssi; // +124
    int8_t ppm_rel; // +125
    int8_t ppm_abs; // +126
    uint8_t high_11b_rate; // +127
    uint16_t prot_status; // +128
    uint8_t bw; // +130
    uint8_t phy_bw; // +131
    uint8_t power_constraint; // +132
    uint32_t valid_flags; // +136
    struct mobility_domain mde; // +140
    bool is_supplicant_enabled; // +144
    SecurityMode_t wpa_wpa2_wep; // +145
    Cipher_t wpa_mcstCipher; // +147
    Cipher_t wpa_ucstCipher; // +148
    Cipher_t rsn_mcstCipher; // +149
    Cipher_t rsn_ucstCipher; // +150
    bool is_pmf_required; // +151
    bool is_wpa2_prefered; // +152
    uint8_t rsn_wpa_ie[32]; // +153
    uint8_t rsn_wpa_ie_len; // +185
    uint16_t beacon_interval; // +186
    uint16_t aid_bitmap; // +188
    uint16_t max_listen_interval; // +190
    uint8_t sec_type; // +192
};
struct me_env_tag me_env;

#endif // __ME_H__
#endf 0 //TODO EXISTS ALEADY
