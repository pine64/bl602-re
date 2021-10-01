#ifndef __CO_LLCP_H__
#define __CO_LLCP_H__

#include <stdint.h>

#include <llm/llm.h>

enum co_llcp_opcode {
    LLCP_CONNECTION_UPDATE_IND_OPCODE = 0,
    LLCP_CHANNEL_MAP_IND_OPCODE = 1,
    LLCP_TERMINATE_IND_OPCODE = 2,
    LLCP_ENC_REQ_OPCODE = 3,
    LLCP_ENC_RSP_OPCODE = 4,
    LLCP_START_ENC_REQ_OPCODE = 5,
    LLCP_START_ENC_RSP_OPCODE = 6,
    LLCP_UNKNOWN_RSP_OPCODE = 7,
    LLCP_FEATURE_REQ_OPCODE = 8,
    LLCP_FEATURE_RSP_OPCODE = 9,
    LLCP_PAUSE_ENC_REQ_OPCODE = 10,
    LLCP_PAUSE_ENC_RSP_OPCODE = 11,
    LLCP_VERSION_IND_OPCODE = 12,
    LLCP_REJECT_IND_OPCODE = 13,
    LLCP_SLAVE_FEATURE_REQ_OPCODE = 14,
    LLCP_CONNECTION_PARAM_REQ_OPCODE = 15,
    LLCP_CONNECTION_PARAM_RSP_OPCODE = 16,
    LLCP_REJECT_IND_EXT_OPCODE = 17,
    LLCP_PING_REQ_OPCODE = 18,
    LLCP_PING_RSP_OPCODE = 19,
    LLCP_LENGTH_REQ_OPCODE = 20,
    LLCP_LENGTH_RSP_OPCODE = 21,
    LLCP_OPCODE_MAX_OPCODE = 22,
};
enum co_llcp_length {
    LLCP_CON_REQ_LEN = 34,
    LLCP_CON_UPD_IND_LEN = 12,
    LLCP_CH_MAP_REQ_LEN = 8,
    LLCP_TERM_IND_LEN = 2,
    LLCP_ENC_REQ_LEN = 23,
    LLCP_ENC_RSP_LEN = 13,
    LLCP_ST_ENC_REQ_LEN = 1,
    LLCP_ST_ENC_RSP_LEN = 1,
    LLCP_UNKN_RSP_LEN = 2,
    LLCP_FEAT_REQ_LEN = 9,
    LLCP_FEAT_RSP_LEN = 9,
    LLCP_PA_ENC_REQ_LEN = 1,
    LLCP_PA_ENC_RSP_LEN = 1,
    LLCP_VERS_IND_LEN = 6,
    LLCP_REJ_IND_LEN = 2,
    LLCP_SLAVE_FEATURE_REQ_LEN = 9,
    LLCP_REJECT_IND_EXT_LEN = 3,
    LLCP_CON_PARAM_REQ_LEN = 24,
    LLCP_CON_PARAM_RSP_LEN = 24,
    LLCP_PING_REQ_LEN = 1,
    LLCP_PING_RSP_LEN = 1,
    LLCP_LENGTH_REQ_LEN = 9,
    LLCP_LENGTH_RSP_LEN = 9,
    LLCP_PDU_LENGTH_MAX = 34,
};
struct llcp_con_upd_ind {
    uint8_t opcode; // +0
    uint8_t win_size; // +1
    uint16_t win_off; // +2
    uint16_t interv; // +4
    uint16_t latency; // +6
    uint16_t timeout; // +8
    uint16_t instant; // +10
};
struct llcp_channel_map_ind {
    uint8_t opcode; // +0
    struct le_chnl_map ch_map; // +1
    uint16_t instant; // +6
};
struct llcp_terminate_ind {
    uint8_t opcode; // +0
    uint8_t err_code; // +1
};
struct llcp_enc_req {
    uint8_t opcode; // +0
    struct rand_nb rand; // +1
    uint8_t ediv[2]; // +9
    struct sess_k_div_x skdm; // +11
    struct init_vect ivm; // +19
};
struct llcp_enc_rsp {
    uint8_t opcode; // +0
    struct sess_k_div_x skds; // +1
    struct init_vect ivs; // +9
};
struct llcp_start_enc_req {
    uint8_t opcode; // +0
};
struct llcp_start_enc_rsp {
    uint8_t opcode; // +0
};
struct llcp_unknown_rsp {
    uint8_t opcode; // +0
    uint8_t unk_type; // +1
};
struct llcp_feats_req {
    uint8_t opcode; // +0
    struct le_features feats; // +1
};
struct llcp_feats_rsp {
    uint8_t opcode; // +0
    struct le_features feats; // +1
};
struct llcp_pause_enc_req {
    uint8_t opcode; // +0
};
struct llcp_pause_enc_rsp {
    uint8_t opcode; // +0
};
struct llcp_vers_ind {
    uint8_t opcode; // +0
    uint8_t vers; // +1
    uint16_t compid; // +2
    uint16_t subvers; // +4
};
struct llcp_reject_ind {
    uint8_t opcode; // +0
    uint8_t err_code; // +1
};
struct llcp_slave_feature_req {
    uint8_t opcode; // +0
    struct le_features feats; // +1
};
struct llcp_con_param_req {
    uint8_t opcode; // +0
    uint16_t interval_min; // +2
    uint16_t interval_max; // +4
    uint16_t latency; // +6
    uint16_t timeout; // +8
    uint8_t pref_period; // +10
    uint16_t ref_con_event_count; // +12
    uint16_t offset0; // +14
    uint16_t offset1; // +16
    uint16_t offset2; // +18
    uint16_t offset3; // +20
    uint16_t offset4; // +22
    uint16_t offset5; // +24
};
struct llcp_con_param_rsp {
    uint8_t opcode; // +0
    uint16_t interval_min; // +2
    uint16_t interval_max; // +4
    uint16_t latency; // +6
    uint16_t timeout; // +8
    uint8_t pref_period; // +10
    uint16_t ref_con_event_count; // +12
    uint16_t offset0; // +14
    uint16_t offset1; // +16
    uint16_t offset2; // +18
    uint16_t offset3; // +20
    uint16_t offset4; // +22
    uint16_t offset5; // +24
};
struct llcp_reject_ind_ext {
    uint8_t opcode; // +0
    uint8_t rej_opcode; // +1
    uint8_t err_code; // +2
};
struct llcp_ping_req {
    uint8_t opcode; // +0
};
struct llcp_ping_rsp {
    uint8_t opcode; // +0
};
struct llcp_length_req {
    uint8_t opcode; // +0
    uint16_t max_rx_octets; // +2
    uint16_t max_rx_time; // +4
    uint16_t max_tx_octets; // +6
    uint16_t max_tx_time; // +8
};
struct llcp_length_rsp {
    uint8_t opcode; // +0
    uint16_t max_rx_octets; // +2
    uint16_t max_rx_time; // +4
    uint16_t max_tx_octets; // +6
    uint16_t max_tx_time; // +8
};
union llcp_pdu {
    uint8_t opcode;
    struct llcp_con_upd_ind con_up_req;
    struct llcp_channel_map_ind channel_map_req;
    struct llcp_terminate_ind terminate_ind;
    struct llcp_enc_req enc_req;
    struct llcp_enc_rsp enc_rsp;
    struct llcp_start_enc_req start_enc_req;
    struct llcp_start_enc_rsp start_enc_rsp;
    struct llcp_unknown_rsp unknown_rsp;
    struct llcp_feats_req feats_req;
    struct llcp_feats_rsp feats_rsp;
    struct llcp_pause_enc_req pause_enc_req;
    struct llcp_pause_enc_rsp pause_enc_rsp;
    struct llcp_vers_ind vers_ind;
    struct llcp_reject_ind reject_ind;
    struct llcp_slave_feature_req slave_feature_req;
    struct llcp_con_param_req con_param_req;
    struct llcp_con_param_rsp con_param_rsp;
    struct llcp_reject_ind_ext reject_ind_ext;
    struct llcp_ping_req ping_req;
    struct llcp_ping_rsp ping_rsp;
    struct llcp_length_req length_req;
    struct llcp_length_rsp length_rsp;
};

#endif // __CO_LLCP_H__
