#ifndef __SCANU_TASK_H__
#define __SCANU_TASK_H__

#include <stdbool.h>
#include <stdint.h>

#include <scan/scan.h>
#include <ke_task.h>
#include <mac.h>


struct scanu_start_req {
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

struct scanu_raw_send_req {
    void *pkt; // +0
    uint32_t len; // +4
};

struct scanu_raw_send_cfm {
    uint32_t status; // +0
};

struct scanu_start_cfm {
    uint8_t status; // +0
};


extern const struct ke_state_handler scanu_state_handler[2];
extern const struct ke_state_handler scanu_default_handler;
extern ke_state_t scanu_state[1];

#endif // __SCANU_TASK_H__
