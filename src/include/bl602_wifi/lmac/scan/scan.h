#ifndef _SCAN_H_
#define _SCAN_H_

#include <stdbool.h>
#include <stdint.h>

#include <dma/dma.h>
#include <hal/hal_desc.h>
#include <hal/hal_dma.h>
#include <modules/ke/ke_msg.h>


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

#define SCAN_MAX_IE_LEN 200

#define SCAN_PASSIVE_BIT CO_BIT(0)
#define SCAN_DISABLED_BIT CO_BIT(31)

#define SCAN_ACTIVE_DURATION 90000
#define SCAN_PASSIVE_DURATION 220000

#endif // _SCAN_H_
