#ifndef _ME_TASK_H_
#define _ME_TASK_H_

#include <stdbool.h>
#include <stdint.h>

#include <umac/rc/rc.h>
#include <lmac/scan/scan.h>
#include <modules/mac/mac.h>



struct me_config_req {
    struct mac_htcapability ht_cap; // +0
    struct mac_vhtcapability vht_cap; // +32
    uint16_t tx_lft; // +44
    bool ht_supp; // +46
    bool vht_supp; // +47
    bool ps_on; // +48
};
struct me_chan_config_req {
    struct scan_chan_tag chan2G4[14]; // +0
    struct scan_chan_tag chan5G[28]; // +84
    uint8_t chan2G4_cnt; // +252
    uint8_t chan5G_cnt; // +253
};
struct me_set_control_port_req {
    uint8_t sta_idx; // +0
    bool control_port_open; // +1
};
struct me_tkip_mic_failure_ind {
    struct mac_addr addr; // +0
    uint64_t tsc; // +8
    bool ga; // +16
    uint8_t keyid; // +17
    uint8_t vif_idx; // +18
};
struct me_sta_add_req {
    struct mac_addr mac_addr; // +0
    struct mac_rateset rate_set; // +6
    struct mac_htcapability ht_cap; // +20
    struct mac_vhtcapability vht_cap; // +52
    uint32_t flags; // +64
    uint16_t aid; // +68
    uint8_t uapsd_queues; // +70
    uint8_t max_sp_len; // +71
    uint8_t opmode; // +72
    uint8_t vif_idx; // +73
    bool tdls_sta; // +74
    uint32_t tsflo; // +76
    uint32_t tsfhi; // +80
    int8_t rssi; // +84
    uint8_t data_rate; // +85
};
struct me_sta_add_cfm {
    uint8_t sta_idx; // +0
    uint8_t status; // +1
    uint8_t pm_state; // +2
};
struct me_sta_del_req {
    uint8_t sta_idx; // +0
    bool tdls_sta; // +1
};
struct me_set_active_req {
    bool active; // +0
    uint8_t vif_idx; // +1
};
struct me_set_ps_disable_req {
    bool ps_disable; // +0
    uint8_t vif_idx; // +1
};
struct me_traffic_ind_req {
    uint8_t sta_idx; // +0
    uint8_t tx_avail; // +1
    bool uapsd; // +2
};
struct me_rc_stats_req {
    uint8_t sta_idx; // +0
};
struct me_rc_stats_cfm {
    uint8_t sta_idx; // +0
    uint16_t no_samples; // +2
    uint16_t ampdu_len; // +4
    uint16_t ampdu_packets; // +6
    uint32_t avg_ampdu_len; // +8
    uint8_t sw_retry_step; // +12
    uint8_t sample_wait; // +13
    struct step retry[4]; // +16
    struct rc_rate_stats rate_stats[10]; // +48
    uint32_t tp[10]; // +168
};
struct me_rc_set_rate_req {
    uint8_t sta_idx; // +0
    uint16_t fixed_rate_cfg; // +2
};

extern const struct ke_state_handler me_default_handler;
extern ke_state_t me_state[1];

#endif 
