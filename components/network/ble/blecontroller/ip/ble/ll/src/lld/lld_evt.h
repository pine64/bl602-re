#ifndef __LLD_EVT_H__
#define __LLD_EVT_H__

#include <stdbool.h>
#include <stdint.h>

#include <co_list.h>

enum lld_evt_flag {
    LLD_EVT_FLAG_WAITING_ACK = 1,
    LLD_EVT_FLAG_WAITING_SYNC = 2,
    LLD_EVT_FLAG_WAITING_TXPROG = 4,
    LLD_EVT_FLAG_WAITING_INSTANT = 8,
    LLD_EVT_FLAG_WAITING_EOEVT_TO_DELETE = 16,
    LLD_EVT_FLAG_NO_RESTART = 32,
    LLD_EVT_FLAG_APFM = 64,
    LLD_EVT_FLAG_LATENCY_ACTIVE = 128,
};
enum lld_evt_mode {
    LLD_EVT_ADV_MODE = 0,
    LLD_EVT_SCAN_MODE = 1,
    LLD_EVT_TEST_MODE = 2,
    LLD_EVT_MST_MODE = 3,
    LLD_EVT_SLV_MODE = 4,
    LLD_EVT_EXT_ADV_MODE = 5,
    LLD_EVT_PER_ADV_MODE = 6,
    LLD_EVT_EXT_SCAN_MODE = 7,
    LLD_EVT_MODE_MAX = 8,
};
enum lld_evt_cs_format {
    LLD_MASTER_CONNECTED = 2,
    LLD_SLAVE_CONNECTED = 3,
    LLD_LD_ADVERTISER = 4,
    LLD_HD_ADVERTISER = 5,
    LLD_PASSIVE_SCANNING = 8,
    LLD_ACTIVE_SCANNING = 9,
    LLD_INITIATING = 15,
    LLD_TXTEST_MODE = 28,
    LLD_RXTEST_MODE = 29,
    LLD_TXRXTEST_MODE = 30,
};
struct lld_evt_anchor {
    uint32_t basetime_cnt; // +0
    uint16_t finetime_cnt; // +4
    uint16_t evt_cnt; // +6
};
struct lld_non_conn {
    uint32_t window; // +0
    uint32_t anchor; // +4
    uint32_t end_ts; // +8
    bool initiate; // +12
    bool connect_req_sent; // +13
};
struct lld_conn {
    uint32_t sync_win_size; // +0
    uint32_t sca_drift; // +4
    uint16_t instant; // +8
    uint16_t latency; // +10
    uint16_t counter; // +12
    uint16_t missed_cnt; // +14
    uint16_t duration_dft; // +16
    uint16_t update_offset; // +18
    uint16_t eff_max_tx_time; // +20
    uint16_t eff_max_tx_size; // +22
    uint8_t update_size; // +24
    uint8_t instant_action; // +25
    uint8_t mst_sca; // +26
    uint8_t last_md_rx; // +27
    uint8_t tx_prog_pkt_cnt; // +28
    bool wait_con_up_sync; // +29
};
union lld_evt_info {
	struct lld_non_conn non_conn;
	struct lld_conn conn;
};
struct lld_evt_tag {
    struct lld_evt_anchor anchor_point; // +0
    struct co_list tx_acl_rdy; // +8
    struct co_list tx_acl_tofree; // +16
    struct co_list tx_llcp_pdu_rdy; // +24
    struct co_list tx_prog; // +32
    struct ea_interval_tag *interval_elt; // +40
    union lld_evt_info evt; // +44
    uint16_t conhdl; // +76
    uint16_t cs_ptr; // +78
    uint16_t interval; // +80
    uint8_t rx_cnt; // +82
    uint8_t mode; // +83
    uint8_t tx_pwr; // +84
    uint8_t default_prio; // +85
    uint8_t evt_flag; // +86
    bool delete_ongoing; // +87
};
struct lld_evt_update_tag {
    uint16_t win_offset; // +0
    uint16_t instant; // +2
    uint8_t win_size; // +4
};
struct lld_evt_env_tag {
    struct co_list elt_prog; // +0
    struct co_list elt_wait; // +8
    struct co_list elt_deferred; // +16
    struct co_list rx_pkt_deferred; // +24
    struct co_list elt_to_be_deleted; // +32
    uint8_t sca; // +40
    bool renew; // +41
    uint8_t hw_wa_sleep_compensation; // +42
};
struct lld_evt_wait_tag {
    struct co_list_hdr hdr; // +0
    struct ea_elt_tag *elt_ptr; // +4
};
struct lld_evt_deferred_tag {
    struct co_list_hdr hdr; // +0
    struct ea_elt_tag *elt_ptr; // +4
    uint8_t type; // +8
    uint8_t rx_desc_cnt; // +9
};
struct lld_evt_delete_tag {
    struct co_list_hdr hdr; // +0
    struct ea_elt_tag *elt_ptr; // +4
    bool flush; // +8
    bool send_ind; // +9
};
struct lld_evt_env_tag lld_evt_env;

#endif // __LLD_EVT_H__
