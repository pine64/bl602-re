#ifndef __PS_H__
#define __PS_H__

#include <stdbool.h>
#include <stdint.h>

#include <mm/mm.h>
#include <ke_task.h>


enum ps_dpsm_state_bit_pos {
    PS_DPSM_STATE_ON = 0,
    PS_DPSM_STATE_PAUSING = 1,
    PS_DPSM_STATE_RESUMING = 2,
    PS_DPSM_STATE_PAUSE = 3,
    PS_DPSM_STATE_SET_MODE_REQ = 4,
};

struct ps_env_tag {
    bool ps_on; // +0
    ke_task_id_t taskid; // +2
    uint32_t prevent_sleep; // +4
    uint8_t cfm_cnt; // +8
    struct mm_timer_tag uapsd_timer; // +12
    bool uapsd_tmr_on; // +28
    bool uapsd_on; // +29
    uint32_t uapsd_timeout; // +32
    uint8_t dpsm_state; // +36
    uint8_t next_mode; // +37
};


extern struct ps_env_tag ps_env;


bool ps_uapsd_enabled(void);
bool ps_sleep_check(void);
void ps_init(void);
void ps_set_mode(uint8_t mode, ke_task_id_t taskid);
void ps_check_beacon(uint32_t tim, uint16_t len, struct vif_info_tag *vif_entry);
void ps_check_frame(uint8_t *frame, uint32_t statinfo, struct vif_info_tag *vif_entry);
void ps_uapsd_set(struct vif_info_tag *vif_entry, uint8_t hw_queue, bool uapsd);
void ps_check_tx_frame(uint8_t staid, uint8_t tid);
void ps_traffic_status_update(uint8_t vif_index, uint8_t new_status);

#endif // __PS_H__
