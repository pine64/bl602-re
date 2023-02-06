#ifndef _MAC_H_
#define _MAC_H_

#include <stdbool.h>
#include <stdint.h>

#include <modules/common/co_math.h>

#include <blconfig.h>

enum {
    AC_BK = 0,
    AC_BE,
    AC_VI,
    AC_VO,
    AC_MAX
};

enum {
    TID_0,
    TID_1,
    TID_2,
    TID_3,
    TID_4,
    TID_5,
    TID_6,
    TID_7,
    TID_MGT,
    TID_MAX
};

/// SCAN type
enum {
    SCAN_PASSIVE,
    SCAN_ACTIVE
};

enum {
    MAC_RATE_1MBPS = 2,
    MAC_RATE_2MBPS = 4,
    MAC_RATE_5_5MBPS = 11,
    MAC_RATE_6MBPS = 12,
    MAC_RATE_9MBPS = 18,
    MAC_RATE_11MBPS = 22,
    MAC_RATE_12MBPS = 24,
    MAC_RATE_18MBPS = 36,
    MAC_RATE_24MBPS = 48,
    MAC_RATE_36MBPS = 72,
    MAC_RATE_48MBPS = 96,
    MAC_RATE_54MBPS = 108
};

#define MAC_QOS_INFO_STA_UAPSD_ENABLED_VO CO_BIT(0)
#define MAC_QOS_INFO_STA_UAPSD_ENABLED_VI CO_BIT(1)
#define MAC_QOS_INFO_STA_UAPSD_ENABLED_BK CO_BIT(2)
#define MAC_QOS_INFO_STA_UAPSD_ENABLED_BE CO_BIT(3)
#define MAC_QOS_INFO_STA_UAPSD_ENABLED_ALL 0x0F

#define MAC_QOS_INFO_AP_UAPSD_ENABLED CO_BIT(7)

#define MAC_DEFAULT_KEY_COUNT 4
#define MAC_DEFAULT_MFP_KEY_COUNT 6

#define MAC_SEC_KEY_LEN         32  // TKIP keys 256 bits (max length) with MIC keys

/// duration of a Time Unit in microseconds
#define TU_DURATION                     1024

struct PACKED mac_addr {
    uint16_t array[3]; // +0
};

/// Check if MAC address is a group address: test the multicast bit.
#define MAC_ADDR_GROUP(mac_addr_ptr) ((*((uint8_t *)(mac_addr_ptr))) & 1)

typedef struct PACKED mac_addr_unpack {
    uint8_t array[6]; // +0
} mac_addr_unpack;

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

void bl60x_current_time_us(long long *time_now);
#endif
