/**
* @file llc.h
* Header file for BL602
*/
#ifndef __LLC_H__
#define __LLC_H__

enum llc_status_flag {
    LLC_STAT_INSTANT_PROCEED_MASK = 2048,
    LLC_STAT_INSTANT_PROCEED_LSB = 11,
    LLC_STAT_LLCP_INSTANT_EXTRACTED_MASK = 1024,
    LLC_STAT_LLCP_INSTANT_EXTRACTED_LSB = 10,
    LLC_STAT_DISC_REM_REQ_MASK = 512,
    LLC_STAT_DISC_REM_REQ_LSB = 9,
    LLC_STAT_SYNC_FOUND_MASK = 256,
    LLC_STAT_SYNC_FOUND_LSB = 8,
    LLC_STAT_UPDATE_EVT_SENT_MASK = 128,
    LLC_STAT_UPDATE_EVT_SENT_LSB = 7,
    LLC_STAT_UPDATE_HOST_REQ_MASK = 64,
    LLC_STAT_UPDATE_HOST_REQ_LSB = 6,
    LLC_STAT_UPDATE_PENDING_MASK = 32,
    LLC_STAT_UPDATE_PENDING_LSB = 5,
    LLC_STAT_TO_PENDING_MASK = 16,
    LLC_STAT_TO_PENDING_LSB = 4,
    LLC_STAT_LLCP_DISCARD_MASK = 8,
    LLC_STAT_LLCP_DISCARD_LSB = 3,
    LLC_STAT_WAIT_TRAFFIC_PAUSED_MASK = 4,
    LLC_STAT_WAIT_TRAFFIC_PAUSED_LSB = 2,
    LLC_STAT_PEER_VERS_KNOWN_MASK = 2,
    LLC_STAT_PEER_VERS_KNOWN_LSB = 1,
    LLC_STAT_FEAT_EXCH_MASK = 1,
    LLC_STAT_FEAT_EXCH_LSB = 0,
};
enum llc_dle_flag {
    LLC_DLE_EVT_SENT_MASK = 2,
    LLC_DLE_EVT_SENT_LSB = 1,
    LLC_DLE_REQ_RCVD_MASK = 1,
    LLC_DLE_REQ_RCVD_LSB = 0,
};
struct rem_version {
    uint8_t vers; // +0
    uint16_t compid; // +2
    uint16_t subvers; // +4
};
struct encrypt {
    struct sess_k_div skd; // +0
    struct ltk ltk; // +16
    uint8_t randn[16]; // +32
};
struct data_len_ext_tag {
    uint16_t conn_max_tx_octets; // +0
    uint16_t conn_max_rx_octets; // +2
    uint16_t conn_eff_max_tx_octets; // +4
    uint16_t conn_eff_max_rx_octets; // +6
    uint16_t conn_max_tx_time; // +8
    uint16_t conn_max_rx_time; // +10
    uint16_t conn_eff_max_tx_time; // +12
    uint16_t conn_eff_max_rx_time; // +14
    bool send_req_not_allowed; // +16
    uint8_t data_len_ext_flag; // +17
};
struct llc_env_tag {
    void *operation[4]; // +0
    struct ea_elt_tag *elt; // +16
    struct llc_ch_asses_tag chnl_assess; // +20
    struct rem_version peer_version; // +60
    struct data_len_ext_tag data_len_ext_info; // +66
    uint16_t sup_to; // +84
    uint16_t n_sup_to; // +86
    uint16_t auth_payl_to; // +88
    uint16_t auth_payl_to_margin; // +90
    uint16_t llc_status; // +92
    struct le_chnl_map ch_map; // +94
    struct le_chnl_map n_ch_map; // +99
    int8_t rssi; // +104
    struct le_features feats_used; // +105
    struct encrypt encrypt; // +113
    uint8_t disc_reason; // +161
    bool disc_event_sent; // +162
    uint8_t loc_proc_state; // +163
    uint8_t rem_proc_state; // +164
    uint8_t encryption_state; // +165
    bool peer_sup_conn_param_req; // +166
};
struct llc_env_tag *llc_env[2];

#endif // __LLC_H__
