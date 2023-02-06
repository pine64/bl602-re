#ifndef _SCAN_TASK_H_
#define _SCAN_TASK_H_

#include <stdbool.h>
#include <stdint.h>

#include <lmac/scan/scan.h>
#include <modules/ke/ke_msg.h>
#include <modules/ke/ke_task.h>
#include <modules/mac/mac.h>

#define SCAN_ID_MAX 1

enum scan_state_tag {
    SCAN_IDLE = 0,
    SCAN_WAIT_IE_DWNLD = 1,
    SCAN_WAIT_CHANNEL = 2,
    SCAN_WAIT_BEACON_PROBE_RSP = 3,
    SCAN_STATE_MAX = 4,
};

enum scan_msg_tag {
    SCAN_START_REQ = 2048,
    SCAN_START_CFM = 2049,
    SCAN_DONE_IND = 2050,
    SCAN_CANCEL_REQ = 2051,
    SCAN_CANCEL_CFM = 2052,
    SCAN_TIMER = 2053,
    SCAN_MAX = 2054,
};

struct scan_start_req {
    struct scan_chan_tag chan[42]; // +0
    struct mac_ssid ssid[2]; // +252
    struct mac_addr bssid; // +320
    uint32_t add_ies; // +328
    uint16_t add_ie_len; // +332
    uint8_t vif_idx; // +334
    uint8_t chan_cnt; // +335
    uint8_t ssid_cnt; // +336
    bool no_cck; // +337
};

struct scan_start_cfm {
    uint8_t status; // +0
};

struct scan_cancel_cfm {
    uint8_t status; // +0
};

extern const struct ke_state_handler scan_default_handler;
extern ke_state_t scan_state[SCAN_ID_MAX];

#endif // _SCAN_TASK_H_
