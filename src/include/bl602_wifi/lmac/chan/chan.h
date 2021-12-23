#ifndef _CHAN_H_
#define _CHAN_H_

#include <stdint.h>

#include <lmac/mm/mm_task.h>
#include <lmac/mm/mm_timer.h>
#include <modules/common/co_list.h>
#include <modules/ke/ke_task.h>


struct vif_info_tag;

enum chan_ctxt_status {
    CHAN_NOT_SCHEDULED = 0,
    CHAN_NOT_PROG = 1,
    CHAN_GOTO_IDLE = 2,
    CHAN_WAIT_NOA_CFM = 3,
    CHAN_WAITING_END = 4,
    CHAN_PRESENT = 5,
    CHAN_SENDING_NOA = 6,
    CHAN_CTXT_STATUS_MAX = 7,
};

enum chan_tbtt_status {
    CHAN_TBTT_NOT_PROG = 0,
    CHAN_TBTT_PROG = 1,
    CHAN_TBTT_PRESENCE = 2,
    CHAN_TBTT_STATUS_MAX = 3,
};

enum chan_env_status_bit {
    CHAN_ENV_ROC_WAIT_BIT = 0,
    CHAN_ENV_SCAN_WAIT_BIT = 1,
    CHAN_ENV_ROC_BIT = 2,
    CHAN_ENV_SCAN_BIT = 3,
    CHAN_ENV_DELAY_PROG_BIT = 4,
    CHAN_ENV_TIMEOUT_BIT = 5,
    CHAN_ENV_BCN_DETECT_BIT = 6,
    CHAN_ENV_BIT_MAX = 7,
};

struct chan_tbtt_tag {
    struct co_list_hdr list_hdr; // +0
    uint32_t time; // +4
    uint8_t vif_index; // +8
    uint8_t priority; // +9
    uint8_t status; // +10
};

struct chan_ctxt_tag {
    struct co_list_hdr list_hdr; // +0
    struct mm_chan_ctxt_add_req channel; // +4
    ke_task_id_t taskid; // +14
    uint16_t nb_slots; // +16
    uint16_t nb_rem_slots; // +18
    uint16_t nb_res_slots; // +20
    uint8_t status; // +22
    uint8_t idx; // +23
    uint8_t nb_linked_vif; // +24
    uint8_t vif_index; // +25
};

struct chan_env_tag {
    struct co_list list_free_ctxt; // +0
    struct co_list list_sched_ctxt; // +8
    struct co_list list_tbtt; // +16
    struct co_list list_tbtt_delay; // +24
    struct chan_ctxt_tag *current_channel; // +32
    struct chan_ctxt_tag *chan_switch; // +36
    struct mm_timer_tag tmr_tbtt_switch; // +40
    struct mm_timer_tag tmr_cde; // +56
    struct mm_timer_tag tmr_ctxt_op; // +72
    struct mm_timer_tag tmr_conn_less; // +88
    uint32_t cde_dur_us; // +104
    uint32_t cde_time; // +108
    uint8_t status; // +112
    uint8_t cfm_cnt; // +113
    uint8_t nb_sched_ctxt; // +114
    uint8_t pm; // +115
};


extern struct chan_env_tag chan_env;


void chan_init(void);
void chan_scan_req(uint8_t band, uint16_t freq, int8_t pwr, uint32_t duration_us, uint8_t vif_index);
uint8_t chan_roc_req(const struct mm_remain_on_channel_req *req, ke_task_id_t taskid);
uint8_t chan_ctxt_add(const struct mm_chan_ctxt_add_req *p_add_req, uint8_t *idx);
void chan_ctxt_link(uint8_t vif_idx, uint8_t chan_idx);
void chan_ctxt_unlink(uint8_t vif_idx);
void chan_ctxt_update(const struct mm_chan_ctxt_update_req *p_upd_req);
void chan_tbtt_switch_update(struct vif_info_tag *p_vif_entry, uint32_t tbtt_time);
void chan_bcn_to_evt(struct vif_info_tag *p_vif_entry);
void chan_bcn_detect_start(struct vif_info_tag *p_vif_entry);
bool chan_is_on_channel(struct vif_info_tag *p_vif_entry);
bool chan_is_on_operational_channel(struct vif_info_tag *p_vif_entry);
bool chan_is_tx_allowed(struct vif_info_tag *p_vif_entry);
void chan_update_tx_power(struct chan_ctxt_tag *p_chan_entry);

#endif