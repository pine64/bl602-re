#ifndef __LLC_TASK_H__
#define __LLC_TASK_H__

#include <stdint.h>

#include <co_bt_defines.h>
#include <co_llcp.h>

enum llc_op_type {
    LLC_OP_LOC_PARAM_UPD = 0,
    LLC_OP_REM_PARAM_UPD = 1,
    LLC_OP_ENCRYPT = 2,
    LLC_OP_DLE_UPD = 3,
    LLC_OP_MAX = 4,
};
enum llc_proc_field {
    LLC_LOC_PROC = 0,
    LLC_REM_PROC = 1,
    LLC_TRAFFIC_PAUSED = 2,
    LLC_DISC = 3,
};
enum llc_state_id {
    LLC_CONNECTED = 0,
    LLC_LOC_PROC_BUSY = 1,
    LLC_REM_PROC_BUSY = 2,
    LLC_TRAFFIC_PAUSED_BUSY = 4,
    LLC_DISC_BUSY = 15,
    LLC_FREE = 127,
    LLC_STATE_MAX = 128,
};
enum llc_loc_proc_state {
    LLC_LOC_IDLE = 0,
    LLC_LOC_WAIT_FEAT_RSP = 1,
    LLC_LOC_WAIT_VERS_IND = 2,
    LLC_LOC_WAIT_TERM_ACK = 3,
    LLC_LOC_WAIT_LENGTH_RSP = 4,
    LLC_LOC_WAIT_PING_RSP = 5,
    LLC_LOC_WAIT_MAP_UPD_INSTANT = 6,
    LLC_LOC_WAIT_CON_PARAM_RSP = 7,
    LLC_LOC_WAIT_CON_UPD_REQ = 8,
    LLC_LOC_WAIT_CON_UPD_INSTANT = 9,
    LLC_LOC_WAIT_TRAFFIC_PAUSED = 10,
    LLC_LOC_WAIT_PAUSE_ENC_RSP = 11,
    LLC_LOC_WAIT_PAUSE_ENC_RSP_SENT = 12,
    LLC_LOC_WAIT_ENC_RSP = 13,
    LLC_LOC_WAIT_SK_AND_START_ENC_REQ = 14,
    LLC_LOC_WAIT_SK = 15,
    LLC_LOC_WAIT_START_ENC_REQ = 16,
    LLC_LOC_SEND_START_ENC_RSP = 17,
    LLC_LOC_WAIT_START_ENC_RSP = 18,
    LLC_LOC_WAIT_RANDN_GEN_IND = 19,
};
enum llc_rem_proc_state {
    LLC_REM_IDLE = 0,
    LLC_REM_WAIT_MAP_UPD_INSTANT = 1,
    LLC_REM_WAIT_CON_PARAM_HOST_RSP = 2,
    LLC_REM_WAIT_CON_UPD_REQ = 3,
    LLC_REM_WAIT_CON_UPD_INSTANT = 4,
    LLC_REM_WAIT_TP_FOR_PAUSE_ENC_REQ = 5,
    LLC_REM_WAIT_PAUSE_ENC_RSP = 6,
    LLC_REM_WAIT_ENC_REQ = 7,
    LLC_REM_WAIT_TP_FOR_ENC_REQ = 8,
    LLC_REM_WAIT_LTK = 9,
    LLC_REM_WAIT_SK = 10,
    LLC_REM_WAIT_START_ENC_RSP = 11,
    LLC_REM_WAIT_START_ENC_RSP_ACK = 12,
    LLC_REM_WAIT_ENC_REJECT_ACK = 13,
    LLC_REM_WAIT_RANDN_GEN_IND = 14,
};
enum LLC_MSG {
    LLC_DATA_IND = 256,
    LLC_LE_LINK_SUP_TO = 257,
    LLC_LLCP_RSP_TO = 258,
    LLC_AUTH_PAYL_NEARLY_TO = 259,
    LLC_AUTH_PAYL_REAL_TO = 260,
    LLC_CHNL_ASSESS_TO = 261,
    LLC_ENC_MGT_IND = 262,
    LLC_LENGTH_REQ_IND = 263,
    LLC_CHMAP_UPDATE_REQ_IND = 264,
    LLC_CON_UPD_REQ_IND = 265,
    LLC_LLCP_RECV_IND = 266,
};
struct llc_create_con_req_ind {
    uint16_t con_int; // +0
    uint16_t con_lat; // +2
    uint16_t sup_to; // +4
    uint16_t ral_ptr; // +6
    struct bd_addr peer_addr; // +8
    uint8_t peer_addr_type; // +14
    uint8_t hop_inc; // +15
    uint8_t sleep_clk_acc; // +16
    uint8_t filter_policy; // +17
};
struct llc_data_ind {
    uint16_t conhdl; // +0
    uint8_t pb_bc_flag; // +2
    uint16_t length; // +4
    uint8_t rx_hdl; // +6
};
struct llc_llcp_recv_ind {
    uint8_t status; // +0
    uint8_t dummy; // +1
    union llcp_pdu pdu; // +2
};
enum llc_con_up_op {
    LLC_CON_UP_HCI_REQ = 0,
    LLC_CON_UP_MOVE_ANCHOR = 1,
    LLC_CON_UP_FORCE = 2,
    LLC_CON_UP_PEER_REQ = 3,
    LLC_CON_UP_LOC_REQ = 4,
};
struct llc_con_upd_req_ind {
    uint8_t operation; // +0
    uint16_t con_intv_min; // +2
    uint16_t con_intv_max; // +4
    uint16_t con_latency; // +6
    uint16_t superv_to; // +8
    uint16_t ce_len_min; // +10
    uint16_t ce_len_max; // +12
    uint16_t interval_min; // +14
    uint16_t interval_max; // +16
    uint8_t pref_period; // +18
    uint16_t ref_con_event_count; // +20
    uint16_t offset0; // +22
    uint16_t offset1; // +24
    uint16_t offset2; // +26
    uint16_t offset3; // +28
    uint16_t offset4; // +30
    uint16_t offset5; // +32
};
extern const struct ke_state_handler llc_default_handler;
extern ke_state_t llc_state[2];

#endif // __LLC_TASK_H__
