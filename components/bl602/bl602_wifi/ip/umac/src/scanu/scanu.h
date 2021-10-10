#ifndef __SCANU_H__
#define __SCANU_H__

#include <stdbool.h>
#include <stdint.h>

#include <driver/dma/dma.h>
#include <hal/hal_dma.h>
#include <mac.h>
#include <ke_task.h>
#include <rxu/rxu_task.h>


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


extern struct scanu_env_tag scanu_env;
extern struct scanu_add_ie_tag scanu_add_ie;


void scanu_init(void);
int scanu_frame_handler(const struct rxu_mgt_ind *frame);
struct mac_scan_result *scanu_search_by_bssid(const struct mac_addr *bssid);
struct mac_scan_result *scanu_search_by_ssid(const struct mac_ssid *ssid, int *idx);
void scanu_rm_exist_ssid(const struct mac_ssid *ssid, int index);
void scanu_start(void);
void scanu_scan_next(void);
void scanu_confirm(uint8_t status);
void scanu_raw_send_cfm(uint8_t status, ke_task_id_t dst_id);

#endif // __SCANU_H__
