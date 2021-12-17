#ifndef __LLC_LLCP_H__
#define __LLC_LLCP_H__

#include <stdint.h>

#include <co_hci.h>
#include <co_list.h>
#include <llc/llc_task.h>

struct llcp_pdu_tag {
    struct co_list_hdr hdr; // +0
    uint16_t idx; // +4
    void *ptr; // +8
    uint8_t opcode; // +12
};
enum llc_llcp_authorize {
    LLC_LLCP_NO_AUTHZED = 0,
    LLC_LLCP_START_ENC_AUTHZED = 1,
    LLC_LLCP_PAUSE_ENC_AUTHZED = 2,
};

void llc_llcp_version_ind_pdu_send(uint16_t conhdl);
void llc_llcp_ch_map_update_pdu_send(uint16_t conhdl);
void llc_llcp_pause_enc_req_pdu_send(uint16_t conhdl);
void llc_llcp_pause_enc_rsp_pdu_send(uint16_t conhdl);
void llc_llcp_enc_req_pdu_send(uint16_t conhdl, struct hci_le_start_enc_cmd *param);
void llc_llcp_enc_rsp_pdu_send(uint16_t conhdl, struct llcp_enc_req *param);
void llc_llcp_start_enc_rsp_pdu_send(uint16_t conhdl);
void llc_llcp_reject_ind_pdu_send(uint16_t conhdl, uint8_t rej_opcode, uint8_t reason);
void llc_llcp_con_update_pdu_send(uint16_t conhdl, struct llcp_con_upd_ind *param);
void llc_llcp_con_param_req_pdu_send(uint16_t conhdl, struct llc_con_upd_req_ind *param);
void llc_llcp_con_param_rsp_pdu_send(uint16_t conhdl, struct llc_con_upd_req_ind *param);
void llc_llcp_feats_req_pdu_send(uint16_t conhdl);
void llc_llcp_feats_rsp_pdu_send(uint16_t conhdl);
void llc_llcp_start_enc_req_pdu_send(uint16_t conhdl);
void llc_llcp_terminate_ind_pdu_send(uint16_t conhdl, uint8_t err_code);
void llc_llcp_unknown_rsp_send_pdu(uint16_t conhdl, uint8_t unk_type);
void llc_llcp_ping_req_pdu_send(uint16_t conhdl);
void llc_llcp_ping_rsp_pdu_send(uint16_t conhdl);
void llc_llcp_length_req_pdu_send(uint16_t conhdl);
void llc_llcp_length_rsp_pdu_send(uint16_t conhdl);

#endif // __LLC_LLCP_H__
