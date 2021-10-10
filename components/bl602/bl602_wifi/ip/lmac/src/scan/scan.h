#ifndef __SCAN_H__
#define __SCAN_H__

#include <stdbool.h>
#include <stdint.h>

#include <driver/dma/dma.h>
#include <hal/hal_dma.h>
#include <hal/hal_desc.h>
#include <ke_msg.h>

struct scan_chan_tag {
    uint16_t freq; // +0
    uint8_t band; // +2
    uint8_t flags; // +3
    int8_t tx_power; // +4
};

struct scan_probe_req_ie_tag {
    struct dma_desc dma_desc; // +0
    struct tx_pbd pbd; // +16
    uint32_t buf[50]; // +36
};

struct scan_start_req;
struct scan_env_tag {
    struct hal_dma_desc_tag dma_desc; // +0
    const struct scan_start_req *param; // +16
    uint32_t ds_ie; // +20
    ke_task_id_t req_id; // +24
    uint8_t chan_idx; // +26
    bool abort; // +27
};

extern struct scan_env_tag scan_env;
extern struct scan_probe_req_ie_tag scan_probe_req_ie;

void scan_init(void);
void scan_ie_download(const struct scan_start_req *param);
void scan_set_channel_request(void);
void scan_probe_req_tx(void);
void scan_send_cancel_cfm(uint8_t status, ke_task_id_t dest_id);

#endif // __SCAN_H__
