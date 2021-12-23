#ifndef _MAC_H_
#define _MAC_H_

#include <stdbool.h>
#include <stdint.h>


struct mac_addr {
    uint16_t array[3]; // +0
};

struct mac_ssid {
    uint8_t length; // +0
    uint8_t array[32]; // +1
    uint8_t array_tail[1]; // +33
};

struct mac_rateset {
    uint8_t length; // +0
    uint8_t array[12]; // +1
};

struct key_info_tag {
    uint64_t rx_pn[9]; // +0
    uint64_t tx_pn; // +72
    union {
        struct {
            uint32_t tx_key[2]; // +0
            uint32_t rx_key[2]; // +8
        } mic;
        struct {
            uint32_t key[4]; // +0
        } mfp;
    } u; // +80
    uint8_t cipher; // +96
    uint8_t key_idx; // +97
    uint8_t hw_key_idx; // +98
    bool valid; // +99
};

struct mac_sec_key {
    uint8_t length; // +0
    uint32_t array[8]; // +4
};

struct mac_htcapability {
    uint16_t ht_capa_info; // +0
    uint8_t a_mpdu_param; // +2
    uint8_t mcs_rate[16]; // +3
    uint16_t ht_extended_capa; // +20
    uint32_t tx_beamforming_capa; // +24
    uint8_t asel_capa; // +28
};

struct mac_vhtcapability {
    uint32_t vht_capa_info; // +0
    uint16_t rx_mcs_map; // +4
    uint16_t rx_highest; // +6
    uint16_t tx_mcs_map; // +8
    uint16_t tx_highest; // +10
};

struct mac_edca_param_set {
    uint8_t qos_info; // +0
    uint8_t acm; // +1
    uint32_t ac_param[4]; // +4
};

struct mac_scan_result {
    struct mac_addr bssid; // +0
    struct mac_ssid ssid; // +6
    uint16_t bsstype; // +40
    struct scan_chan_tag *chan; // +44
    uint16_t beacon_period; // +48
    uint16_t cap_info; // +50
    bool valid_flag; // +52
    int8_t rssi; // +53
    int8_t ppm_rel; // +54
    int8_t ppm_abs; // +55
};

struct mac_sta_info {
    struct mac_rateset rate_set; // +0
    struct mac_htcapability ht_cap; // +16
    struct mac_vhtcapability vht_cap; // +48
    uint32_t capa_flags; // +60
    uint8_t phy_bw_max; // +64
    uint8_t bw_cur; // +65
    uint8_t uapsd_queues; // +66
    uint8_t max_sp_len; // +67
    uint8_t stbc_nss; // +68
};

extern const uint8_t mac_tid2ac[];
extern const uint8_t mac_ac2uapsd[4];
extern const uint8_t mac_id2rate[];
extern const struct mac_addr mac_addr_bcst;

#endif
