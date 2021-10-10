#ifndef __MM_TASK_H__
#define __MM_TASK_H__

#include <stdbool.h>
#include <stdint.h>

#include <driver/phy/phy.h>
#include <ke_msg.h>
#include <ke_task.h>
#include <mac.h>


enum mm_state_tag {
    MM_IDLE = 0,
    MM_ACTIVE = 1,
    MM_GOING_TO_IDLE = 2,
    MM_HOST_BYPASSED = 3,
    MM_STATE_MAX = 4,
};

enum mm_remain_on_channel_op {
    MM_ROC_OP_START = 0,
    MM_ROC_OP_CANCEL = 1,
    MM_ROC_OP_MAX = 2,
};

enum mm_msg_tag {
    MM_RESET_REQ = 0,
    MM_RESET_CFM = 1,
    MM_START_REQ = 2,
    MM_START_CFM = 3,
    MM_VERSION_REQ = 4,
    MM_VERSION_CFM = 5,
    MM_ADD_IF_REQ = 6,
    MM_ADD_IF_CFM = 7,
    MM_REMOVE_IF_REQ = 8,
    MM_REMOVE_IF_CFM = 9,
    MM_STA_ADD_REQ = 10,
    MM_STA_ADD_CFM = 11,
    MM_STA_DEL_REQ = 12,
    MM_STA_DEL_CFM = 13,
    MM_SET_FILTER_REQ = 14,
    MM_SET_FILTER_CFM = 15,
    MM_SET_CHANNEL_REQ = 16,
    MM_SET_CHANNEL_CFM = 17,
    MM_SET_DTIM_REQ = 18,
    MM_SET_DTIM_CFM = 19,
    MM_SET_BEACON_INT_REQ = 20,
    MM_SET_BEACON_INT_CFM = 21,
    MM_SET_BASIC_RATES_REQ = 22,
    MM_SET_BASIC_RATES_CFM = 23,
    MM_SET_BSSID_REQ = 24,
    MM_SET_BSSID_CFM = 25,
    MM_SET_EDCA_REQ = 26,
    MM_SET_EDCA_CFM = 27,
    MM_SET_MODE_REQ = 28,
    MM_SET_MODE_CFM = 29,
    MM_SET_VIF_STATE_REQ = 30,
    MM_SET_VIF_STATE_CFM = 31,
    MM_SET_SLOTTIME_REQ = 32,
    MM_SET_SLOTTIME_CFM = 33,
    MM_SET_IDLE_REQ = 34,
    MM_SET_IDLE_CFM = 35,
    MM_KEY_ADD_REQ = 36,
    MM_KEY_ADD_CFM = 37,
    MM_KEY_DEL_REQ = 38,
    MM_KEY_DEL_CFM = 39,
    MM_BA_ADD_REQ = 40,
    MM_BA_ADD_CFM = 41,
    MM_BA_DEL_REQ = 42,
    MM_BA_DEL_CFM = 43,
    MM_PRIMARY_TBTT_IND = 44,
    MM_SECONDARY_TBTT_IND = 45,
    MM_SET_POWER_REQ = 46,
    MM_SET_POWER_CFM = 47,
    MM_DENOISE_REQ = 48,
    MM_SET_PS_MODE_REQ = 49,
    MM_SET_PS_MODE_CFM = 50,
    MM_CHAN_CTXT_ADD_REQ = 51,
    MM_CHAN_CTXT_ADD_CFM = 52,
    MM_CHAN_CTXT_DEL_REQ = 53,
    MM_CHAN_CTXT_DEL_CFM = 54,
    MM_CHAN_CTXT_LINK_REQ = 55,
    MM_CHAN_CTXT_LINK_CFM = 56,
    MM_CHAN_CTXT_UNLINK_REQ = 57,
    MM_CHAN_CTXT_UNLINK_CFM = 58,
    MM_CHAN_CTXT_UPDATE_REQ = 59,
    MM_CHAN_CTXT_UPDATE_CFM = 60,
    MM_CHAN_CTXT_SCHED_REQ = 61,
    MM_CHAN_CTXT_SCHED_CFM = 62,
    MM_BCN_CHANGE_REQ = 63,
    MM_BCN_CHANGE_CFM = 64,
    MM_TIM_UPDATE_REQ = 65,
    MM_TIM_UPDATE_CFM = 66,
    MM_CONNECTION_LOSS_IND = 67,
    MM_CHANNEL_SWITCH_IND = 68,
    MM_CHANNEL_PRE_SWITCH_IND = 69,
    MM_REMAIN_ON_CHANNEL_REQ = 70,
    MM_REMAIN_ON_CHANNEL_CFM = 71,
    MM_REMAIN_ON_CHANNEL_EXP_IND = 72,
    MM_PS_CHANGE_IND = 73,
    MM_TRAFFIC_REQ_IND = 74,
    MM_SET_PS_OPTIONS_REQ = 75,
    MM_SET_PS_OPTIONS_CFM = 76,
    MM_P2P_VIF_PS_CHANGE_IND = 77,
    MM_CSA_COUNTER_IND = 78,
    MM_CHANNEL_SURVEY_IND = 79,
    MM_BFMER_ENABLE_REQ = 80,
    MM_SET_P2P_NOA_REQ = 81,
    MM_SET_P2P_OPPPS_REQ = 82,
    MM_SET_P2P_NOA_CFM = 83,
    MM_SET_P2P_OPPPS_CFM = 84,
    MM_P2P_NOA_UPD_IND = 85,
    MM_CFG_RSSI_REQ = 86,
    MM_RSSI_STATUS_IND = 87,
    MM_CSA_FINISH_IND = 88,
    MM_CSA_TRAFFIC_IND = 89,
    MM_MU_GROUP_UPDATE_REQ = 90,
    MM_MU_GROUP_UPDATE_CFM = 91,
    MM_MONITOR_REQ = 92,
    MM_MONITOR_CFM = 93,
    MM_MONITOR_CHANNEL_REQ = 94,
    MM_MONITOR_CHANNEL_CFM = 95,
    MM_FORCE_IDLE_REQ = 96,
    MM_SCAN_CHANNEL_START_IND = 97,
    MM_SCAN_CHANNEL_END_IND = 98,
    MM_MAX = 99,
};

struct mm_monitor_cfm {
    uint32_t status; // +0
    uint32_t enable; // +4
    uint32_t data[8]; // +8
};

struct mm_monitor_req {
    uint32_t enable; // +0
};

struct mm_monitor_channel_cfm {
    uint32_t status; // +0
    uint32_t freq; // +4
    uint32_t data[8]; // +8
};

struct mm_monitor_channel_req {
    uint32_t freq; // +0
    uint32_t use_40Mhz; // +4
    uint32_t higher_band; // +8
};

struct mm_start_req {
    struct phy_cfg_tag phy_cfg; // +0
    uint32_t uapsd_timeout; // +64
    uint16_t lp_clk_accuracy; // +68
};

struct mm_set_channel_req {
    uint8_t band; // +0
    uint8_t type; // +1
    uint16_t prim20_freq; // +2
    uint16_t center1_freq; // +4
    uint16_t center2_freq; // +6
    uint8_t index; // +8
    int8_t tx_power; // +9
};

struct mm_set_channel_cfm {
    uint8_t radio_idx; // +0
    int8_t power; // +1
};

struct mm_set_dtim_req {
    uint8_t dtim_period; // +0
};

struct mm_set_power_req {
    uint8_t inst_nbr; // +0
    int8_t power; // +1
};

struct mm_set_power_cfm {
    uint8_t radio_idx; // +0
    int8_t power; // +1
};

struct mm_set_beacon_int_req {
    uint16_t beacon_int; // +0
    uint8_t inst_nbr; // +2
};

struct mm_set_basic_rates_req {
    uint32_t rates; // +0
    uint8_t inst_nbr; // +4
    uint8_t band; // +5
};

struct mm_set_bssid_req {
    struct mac_addr bssid; // +0
    uint8_t inst_nbr; // +6
};

struct mm_set_filter_req {
    uint32_t filter; // +0
};

struct mm_add_if_req {
    uint8_t type; // +0
    struct mac_addr addr; // +1
    bool p2p; // +7
};

struct mm_set_edca_req {
    uint32_t ac_param; // +0
    bool uapsd; // +4
    uint8_t hw_queue; // +5
    uint8_t inst_nbr; // +6
};

struct mm_set_slottime_req {
    uint8_t slottime; // +0
};

struct mm_set_mode_req {
    uint8_t abgnmode; // +0
};

struct mm_set_vif_state_req {
    uint16_t aid; // +0
    bool active; // +2
    uint8_t inst_nbr; // +3
};

struct mm_add_if_cfm {
    uint8_t status; // +0
    uint8_t inst_nbr; // +1
};

struct mm_remove_if_req {
    uint8_t inst_nbr; // +0
};

struct mm_version_cfm {
    uint32_t version_lmac; // +0
    uint32_t version_machw_1; // +4
    uint32_t version_machw_2; // +8
    uint32_t version_phy_1; // +12
    uint32_t version_phy_2; // +16
    uint32_t features; // +20
};

struct mm_sta_add_req {
    uint32_t ampdu_size_max_vht; // +0
    uint32_t paid_gid; // +4
    uint16_t ampdu_size_max_ht; // +8
    struct mac_addr mac_addr; // +10
    uint8_t ampdu_spacing_min; // +16
    uint8_t inst_nbr; // +17
    bool tdls_sta; // +18
    int8_t rssi; // +19
    uint32_t tsflo; // +20
    uint32_t tsfhi; // +24
    uint8_t data_rate; // +28
};

struct mm_sta_add_cfm {
    uint8_t status; // +0
    uint8_t sta_idx; // +1
    uint8_t hw_sta_idx; // +2
};

struct mm_sta_del_req {
    uint8_t sta_idx; // +0
};

struct mm_set_idle_req {
    uint8_t hw_idle; // +0
};

struct mm_key_add_req {
    uint8_t key_idx; // +0
    uint8_t sta_idx; // +1
    struct mac_sec_key key; // +4
    uint8_t cipher_suite; // +40
    uint8_t inst_nbr; // +41
    uint8_t spp; // +42
    bool pairwise; // +43
};

struct mm_key_add_cfm {
    uint8_t status; // +0
    uint8_t hw_key_idx; // +1
};
struct mm_key_del_req {
    uint8_t hw_key_idx; // +0
};

struct mm_ba_add_req {
    uint8_t type; // +0
    uint8_t sta_idx; // +1
    uint8_t tid; // +2
    uint8_t bufsz; // +3
    uint16_t ssn; // +4
};

struct mm_ba_add_cfm {
    uint8_t sta_idx; // +0
    uint8_t tid; // +1
    uint8_t status; // +2
};

struct mm_connection_loss_ind {
    uint8_t inst_nbr; // +0
};

struct mm_set_ps_mode_req {
    uint8_t new_state; // +0
};

struct mm_chan_ctxt_add_req {
    uint8_t band; // +0
    uint8_t type; // +1
    uint16_t prim20_freq; // +2
    uint16_t center1_freq; // +4
    uint16_t center2_freq; // +6
    int8_t tx_power; // +8
};

struct mm_chan_ctxt_update_req {
    uint8_t chan_index; // +0
    uint8_t band; // +1
    uint8_t type; // +2
    uint16_t prim20_freq; // +4
    uint16_t center1_freq; // +6
    uint16_t center2_freq; // +8
    int8_t tx_power; // +10
};

struct mm_bcn_change_req {
    uint32_t bcn_ptr; // +0
    uint16_t bcn_len; // +4
    uint16_t tim_oft; // +6
    uint8_t tim_len; // +8
    uint8_t inst_nbr; // +9
    uint8_t csa_oft[2]; // +10
    uint8_t bcn_buf[0]; // +12
};

struct mm_tim_update_req {
    uint16_t aid; // +0
    uint8_t tx_avail; // +2
    uint8_t inst_nbr; // +3
};

struct mm_ps_change_ind {
    uint8_t sta_idx; // +0
    uint8_t ps_state; // +1
};

struct mm_traffic_req_ind {
    uint8_t sta_idx; // +0
    uint8_t pkt_cnt; // +1
    bool uapsd; // +2
};

struct mm_remain_on_channel_req {
    uint8_t op_code; // +0
    uint8_t vif_index; // +1
    uint8_t band; // +2
    uint8_t type; // +3
    uint16_t prim20_freq; // +4
    uint16_t center1_freq; // +6
    uint16_t center2_freq; // +8
    uint32_t duration_ms; // +12
    int8_t tx_power; // +16
};

struct mm_remain_on_channel_cfm {
    uint8_t op_code; // +0
    uint8_t status; // +1
    uint8_t chan_ctxt_index; // +2
};

struct mm_set_ps_options_req {
    uint8_t vif_index; // +0
    uint16_t listen_interval; // +2
    bool dont_listen_bc_mc; // +4
};

struct mm_csa_counter_ind {
    uint8_t vif_index; // +0
    uint8_t csa_count; // +1
};

struct mm_cfg_rssi_req {
    uint8_t vif_index; // +0
    int8_t rssi_thold; // +1
    uint8_t rssi_hyst; // +2
};

struct mm_rssi_status_ind {
    uint8_t vif_index; // +0
    bool rssi_status; // +1
    int8_t rssi; // +2
};

struct mm_csa_finish_ind {
    uint8_t vif_index; // +0
    uint8_t status; // +1
    uint8_t chan_idx; // +2
};

struct mm_csa_traffic_ind {
    uint8_t vif_index; // +0
    bool enable; // +1
};

typedef void (*cb_idle_func_ptr)(void);

struct mm_force_idle_req {
    cb_idle_func_ptr cb; // +0
};

extern const struct ke_state_handler mm_state_handler[4];
extern const struct ke_state_handler mm_default_handler;
extern ke_state_t mm_state[1];

#endif // __MM_TASK_H__
