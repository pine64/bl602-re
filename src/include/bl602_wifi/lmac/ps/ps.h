#ifndef _PS_H_
#define _PS_H_

#include <stdbool.h>
#include <stdint.h>

#include <lmac/mm/mm.h>
#include <modules/ke/ke_task.h>
#include <lmac/vif/vif_mgmt.h>
#include <lmac/chan/chan.h>

#include <modules/common/co_math.h>

enum ps_dpsm_state_bit_pos {
    PS_DPSM_STATE_ON = 0,
    PS_DPSM_STATE_PAUSING = 1,
    PS_DPSM_STATE_RESUMING = 2,
    PS_DPSM_STATE_PAUSE = 3,
    PS_DPSM_STATE_SET_MODE_REQ = 4,
};

/// Power Save mode setting
enum
{
    /// Power-save off
    PS_MODE_OFF,
    /// Power-save on - Normal mode
    PS_MODE_ON,
    /// Power-save on - Dynamic mode
    PS_MODE_ON_DYN,
    PS_DENOISE,
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

static inline bool ps_uapsd_enabled(void) {
    return (ps_env.uapsd_timeout != 0);
}

static inline bool ps_sleep_check(void) {
    // TODO; check if this is correct?
    if (!ps_env.ps_on) {
        return false;
    }
    if (ps_env.prevent_sleep)
        return false;
    for (struct vif_info_tag *cur = (struct vif_info_tag *)co_list_pick(&vif_mgmt_env.used_list); cur; cur = (struct vif_info_tag *)co_list_next(&cur->list_hdr)) {
		if (chan_is_on_channel(cur) && cur->prevent_sleep)
			return false; // can't sleep
	}
    return true; // can sleep
}

void ps_init(void);
void ps_set_mode(uint8_t mode, ke_task_id_t taskid);
void ps_check_beacon(uint32_t tim, uint16_t len, struct vif_info_tag *vif_entry);
void ps_check_frame(uint8_t *frame, uint32_t statinfo, struct vif_info_tag *vif_entry);
void ps_uapsd_set(struct vif_info_tag *vif_entry, uint8_t hw_queue, bool uapsd);
void ps_check_tx_frame(uint8_t staid, uint8_t tid);
void ps_traffic_status_update(uint8_t vif_index, uint8_t new_status);


// Definition of bits preventing from going to sleep (per VIF)
/// Station is waiting for beacon reception
#define PS_VIF_WAITING_BCN         CO_BIT(0)
/// Station is waiting for broadcast/multicast traffic from AP
#define PS_VIF_WAITING_BCMC        CO_BIT(1)
/// Station is waiting for unicast traffic from AP
#define PS_VIF_WAITING_UC          CO_BIT(2)
/// Station is waiting for WMM-PS end of service period
#define PS_VIF_WAITING_EOSP        CO_BIT(3)
/// Station is waiting for the end of the association procedure
#define PS_VIF_ASSOCIATING         CO_BIT(4)
/// P2P GO is supposed to be present
#define PS_VIF_P2P_GO_PRESENT      CO_BIT(5)

// Definition of bits preventing from going to sleep (global)
/// Upload of TX confirmations is ongoing
#define PS_TX_CFM_UPLOADING        CO_BIT(0)
/// A scanning process is ongoing
#define PS_SCAN_ONGOING            CO_BIT(1)
/// A request for going to IDLE is pending
#define PS_IDLE_REQ_PENDING        CO_BIT(2)
/// PSM is paused in order to allow data traffic
#define PS_PSM_PAUSED              CO_BIT(3)
/// A CAC period is active
#define PS_CAC_STARTED             CO_BIT(4)

//  Station is waiting for data
#define PS_WAITING_ADD_KEY        CO_BIT(6)

/// Mask showing that all ACs UAPSD enabled
#define PS_ALL_UAPSD_ACS           0x0F

#endif // _PS_H_
