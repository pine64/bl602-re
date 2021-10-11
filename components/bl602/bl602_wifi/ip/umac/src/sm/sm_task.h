#ifndef __SM_TASK_H__
#define __SM_TASK_H__

#include <stdbool.h>
#include <stdint.h>

#include <scan/scan.h>
#include <ke_task.h>
#include <mac.h>


enum sm_state_tag {
    SM_IDLE = 0,
    SM_SCANNING = 1,
    SM_JOINING = 2,
    SM_STA_ADDING = 3,
    SM_BSS_PARAM_SETTING = 4,
    SM_AUTHENTICATING = 5,
    SM_ASSOCIATING = 6,
    SM_ACTIVATING = 7,
    SM_DISCONNECTING = 8,
    SM_STATE_MAX = 9,
};

enum sm_msg_tag {
    SM_CONNECT_REQ = 6144,
    SM_CONNECT_CFM = 6145,
    SM_CONNECT_IND = 6146,
    SM_DISCONNECT_REQ = 6147,
    SM_DISCONNECT_CFM = 6148,
    SM_DISCONNECT_IND = 6149,
    SM_RSP_TIMEOUT_IND = 6150,
};

struct sm_connect_req {
    struct mac_ssid ssid; // +0
    struct mac_addr bssid; // +34
    struct scan_chan_tag chan; // +40
    uint32_t flags; // +48
    uint16_t ctrl_port_ethertype; // +52
    uint16_t ie_len; // +54
    uint16_t listen_interval; // +56
    bool dont_wait_bcmc; // +58
    uint8_t auth_type; // +59
    uint8_t uapsd_queues; // +60
    uint8_t vif_idx; // +61
    uint32_t ie_buf[64]; // +64
    bool is_supplicant_enabled; // +320
    uint8_t phrase[64]; // +321
    uint8_t phrase_pmk[64]; // +385
};

struct sm_connect_cfm {
    uint8_t status; // +0
};

struct sm_connect_ind {
    uint16_t status_code; // +0
    struct mac_addr bssid; // +2
    bool roamed; // +8
    uint8_t vif_idx; // +9
    uint8_t ap_idx; // +10
    uint8_t ch_idx; // +11
    bool qos; // +12
    uint8_t acm; // +13
    uint16_t assoc_req_ie_len; // +14
    uint16_t assoc_rsp_ie_len; // +16
    uint32_t assoc_ie_buf[200]; // +20
    uint16_t aid; // +820
    uint8_t band; // +822
    uint16_t center_freq; // +824
    uint8_t width; // +826
    uint32_t center_freq1; // +828
    uint32_t center_freq2; // +832
    uint32_t ac_param[4]; // +836
};

struct sm_disconnect_req {
    uint16_t reason_code; // +0
    uint8_t vif_idx; // +2
};

struct sm_disconnect_ind {
    uint16_t reason_code; // +0
    uint8_t vif_idx; // +2
    bool ft_over_ds; // +3
};


extern const struct ke_state_handler sm_default_handler;
extern ke_state_t sm_state[1];

#endif // __SM_TASK_H__
