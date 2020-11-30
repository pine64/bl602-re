/**
* @file llc_llcp.c
* Source file for BL602
*/
#include "llc_llcp.h"


enum llc_instant_state {
    LLC_INSTANT_IGNORED = 0,
    LLC_INSTANT_ACCEPTED = 1,
    LLC_INSTANT_COLLISION = 2,
    LLC_INSTANT_PASSED = 3,
    LLC_INSTANT_MIC_FAILURE = 4,
    LLC_INSTANT_REJECT = 5,
};

typedef int (*llcp_pdu_handler_func_t)(uint16_t, ke_task_id_t, bool, union llcp_pdu *);

struct llcp_pdu_handler_info {
    llcp_pdu_handler_func_t handler;
 // +0
    bool int_ctx_allowed;
 // +4
    uint8_t enc_auth;
 // +5
};

static const struct llcp_pdu_handler_info llcp_pdu_handler[22];

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
static void llc_llcp_send(uint8_t conhdl, void *param, uint8_t opcode);
static void llc_llcp_reject_ind(uint16_t conhdl, const ke_task_id_t dest_id, uint8_t err_code, bool extended);
int llc_llcp_recv_handler(ke_task_id_t dest_id, uint8_t status, union llcp_pdu *pdu, bool int_ctx);
static int llcp_con_upd_ind_handler(uint16_t conhdl, ke_task_id_t dest_id, bool int_ctx, struct llcp_con_upd_ind *param);
static int llcp_channel_map_ind_handler(uint16_t conhdl, ke_task_id_t dest_id, bool int_ctx, struct llcp_channel_map_ind *param);
static int llcp_terminate_ind_handler(uint16_t conhdl, ke_task_id_t dest_id, bool int_ctx, struct llcp_terminate_ind *param);
static int llcp_feats_req_handler(uint16_t conhdl, ke_task_id_t dest_id, bool int_ctx, struct llcp_feats_req *param);
static int llcp_slave_feature_req_handler(uint16_t conhdl, ke_task_id_t dest_id, bool int_ctx, struct llcp_slave_feature_req *param);
static int llcp_feats_rsp_handler(uint16_t conhdl, ke_task_id_t dest_id, bool int_ctx, struct llcp_feats_rsp *param);
static int llcp_vers_ind_handler(uint16_t conhdl, ke_task_id_t dest_id, bool int_ctx, struct llcp_vers_ind *param);
static int llcp_con_param_req_handler(uint16_t conhdl, ke_task_id_t dest_id, bool int_ctx, struct llcp_con_param_req *param);
static int llcp_con_param_rsp_handler(uint16_t conhdl, ke_task_id_t dest_id, bool int_ctx, struct llcp_con_param_rsp *param);
static int llcp_enc_req_handler(uint16_t conhdl, ke_task_id_t dest_id, bool int_ctx, struct llcp_enc_req *param);
static int llcp_enc_rsp_handler(uint16_t conhdl, ke_task_id_t dest_id, bool int_ctx, struct llcp_enc_rsp *param);
static int llcp_start_enc_req_handler(uint16_t conhdl, ke_task_id_t dest_id, bool int_ctx, struct llcp_start_enc_req *param);
static int llcp_start_enc_rsp_handler(uint16_t conhdl, ke_task_id_t dest_id, bool int_ctx, struct llcp_start_enc_rsp *param);
static int llcp_pause_enc_req_handler(uint16_t conhdl, ke_task_id_t dest_id, bool int_ctx, struct llcp_pause_enc_req *param);
static int llcp_pause_enc_rsp_handler(uint16_t conhdl, ke_task_id_t dest_id, bool int_ctx, struct llcp_pause_enc_rsp *param);
static int llcp_reject_ind_handler(uint16_t conhdl, ke_task_id_t dest_id, bool int_ctx, struct llcp_reject_ind *param);
static int llcp_reject_ind_ext_handler(uint16_t conhdl, ke_task_id_t dest_id, bool int_ctx, struct llcp_reject_ind_ext *param);
static int llcp_ping_req_handler(uint16_t conhdl, ke_task_id_t dest_id, bool int_ctx, void *param);
static int llcp_ping_rsp_handler(uint16_t conhdl, ke_task_id_t dest_id, bool int_ctx, void *param);
static int llcp_length_req_handler(uint16_t conhdl, ke_task_id_t dest_id, bool int_ctx, struct llcp_length_req *param);
static int llcp_length_rsp_handler(uint16_t conhdl, ke_task_id_t dest_id, bool int_ctx, struct llcp_length_rsp *param);
static int llcp_unknown_rsp_handler(uint16_t conhdl, ke_task_id_t dest_id, bool int_ctx, struct llcp_unknown_rsp *param);
uint8_t llc_llcp_get_autorize(uint8_t opcode);




/** llc_llcp_version_ind_pdu_send
 */
void llc_llcp_version_ind_pdu_send(uint16_t conhdl)
{
	ASSER_ERR(FALSE);
	return;
}

/** llc_llcp_ch_map_update_pdu_send
 */
void llc_llcp_ch_map_update_pdu_send(uint16_t conhdl)
{
	ASSER_ERR(FALSE);
	return;
}

/** llc_llcp_pause_enc_req_pdu_send
 */
void llc_llcp_pause_enc_req_pdu_send(uint16_t conhdl)
{
	ASSER_ERR(FALSE);
	return;
}

/** llc_llcp_pause_enc_rsp_pdu_send
 */
void llc_llcp_pause_enc_rsp_pdu_send(uint16_t conhdl)
{
	ASSER_ERR(FALSE);
	return;
}

/** llc_llcp_enc_req_pdu_send
 */
void llc_llcp_enc_req_pdu_send(uint16_t conhdl, struct hci_le_start_enc_cmd *param)
{
	ASSER_ERR(FALSE);
	return;
}

/** llc_llcp_enc_rsp_pdu_send
 */
void llc_llcp_enc_rsp_pdu_send(uint16_t conhdl, struct llcp_enc_req *param)
{
	ASSER_ERR(FALSE);
	return;
}

/** llc_llcp_start_enc_rsp_pdu_send
 */
void llc_llcp_start_enc_rsp_pdu_send(uint16_t conhdl)
{
	ASSER_ERR(FALSE);
	return;
}

/** llc_llcp_reject_ind_pdu_send
 */
void llc_llcp_reject_ind_pdu_send(uint16_t conhdl, uint8_t rej_opcode, uint8_t reason)
{
	ASSER_ERR(FALSE);
	return;
}

/** llc_llcp_con_update_pdu_send
 */
void llc_llcp_con_update_pdu_send(uint16_t conhdl, struct llcp_con_upd_ind *param)
{
	ASSER_ERR(FALSE);
	return;
}

/** llc_llcp_con_param_req_pdu_send
 */
void llc_llcp_con_param_req_pdu_send(uint16_t conhdl, struct llc_con_upd_req_ind *param)
{
	ASSER_ERR(FALSE);
	return;
}

/** llc_llcp_con_param_rsp_pdu_send
 */
void llc_llcp_con_param_rsp_pdu_send(uint16_t conhdl, struct llc_con_upd_req_ind *param)
{
	ASSER_ERR(FALSE);
	return;
}

/** llc_llcp_feats_req_pdu_send
 */
void llc_llcp_feats_req_pdu_send(uint16_t conhdl)
{
	ASSER_ERR(FALSE);
	return;
}

/** llc_llcp_feats_rsp_pdu_send
 */
void llc_llcp_feats_rsp_pdu_send(uint16_t conhdl)
{
	ASSER_ERR(FALSE);
	return;
}

/** llc_llcp_start_enc_req_pdu_send
 */
void llc_llcp_start_enc_req_pdu_send(uint16_t conhdl)
{
	ASSER_ERR(FALSE);
	return;
}

/** llc_llcp_terminate_ind_pdu_send
 */
void llc_llcp_terminate_ind_pdu_send(uint16_t conhdl, uint8_t err_code)
{
	ASSER_ERR(FALSE);
	return;
}

/** llc_llcp_unknown_rsp_send_pdu
 */
void llc_llcp_unknown_rsp_send_pdu(uint16_t conhdl, uint8_t unk_type)
{
	ASSER_ERR(FALSE);
	return;
}

/** llc_llcp_ping_req_pdu_send
 */
void llc_llcp_ping_req_pdu_send(uint16_t conhdl)
{
	ASSER_ERR(FALSE);
	return;
}

/** llc_llcp_ping_rsp_pdu_send
 */
void llc_llcp_ping_rsp_pdu_send(uint16_t conhdl)
{
	ASSER_ERR(FALSE);
	return;
}

/** llc_llcp_length_req_pdu_send
 */
void llc_llcp_length_req_pdu_send(uint16_t conhdl)
{
	ASSER_ERR(FALSE);
	return;
}

/** llc_llcp_length_rsp_pdu_send
 */
void llc_llcp_length_rsp_pdu_send(uint16_t conhdl)
{
	ASSER_ERR(FALSE);
	return;
}

/** llc_llcp_recv_handler
 */
int llc_llcp_recv_handler(ke_task_id_t dest_id, uint8_t status, union llcp_pdu *pdu, bool int_ctx)
{
	ASSER_ERR(FALSE);
	return -1;
}

/** llc_llcp_get_autorize
 */
uint8_t llc_llcp_get_autorize(uint8_t opcode)
{
	ASSER_ERR(FALSE);
	return 0xff;
}

/** llc_llcp_send
 */
static void llc_llcp_send(uint8_t conhdl, void *param, uint8_t opcode)
{
	ASSER_ERR(FALSE);
	return;
}

/** llc_llcp_reject_ind
 */
static void llc_llcp_reject_ind(uint16_t conhdl, const ke_task_id_t dest_id, uint8_t err_code, bool extended)
{
	ASSER_ERR(FALSE);
	return;
}

/** llcp_con_upd_ind_handler
 */
static int llcp_con_upd_ind_handler(uint16_t conhdl, ke_task_id_t dest_id, bool int_ctx, struct llcp_con_upd_ind *param)
{
	ASSER_ERR(FALSE);
	return -1;
}

/** llcp_channel_map_ind_handler
 */
static int llcp_channel_map_ind_handler(uint16_t conhdl, ke_task_id_t dest_id, bool int_ctx, struct llcp_channel_map_ind *param)
{
	ASSER_ERR(FALSE);
	return -1;
}

/** llcp_terminate_ind_handler
 */
static int llcp_terminate_ind_handler(uint16_t conhdl, ke_task_id_t dest_id, bool int_ctx, struct llcp_terminate_ind *param)
{
	ASSER_ERR(FALSE);
	return -1;
}

/** llcp_feats_req_handler
 */
static int llcp_feats_req_handler(uint16_t conhdl, ke_task_id_t dest_id, bool int_ctx, struct llcp_feats_req *param)
{
	ASSER_ERR(FALSE);
	return -1;
}

/** llcp_slave_feature_req_handler
 */
static int llcp_slave_feature_req_handler(uint16_t conhdl, ke_task_id_t dest_id, bool int_ctx, struct llcp_slave_feature_req *param)
{
	ASSER_ERR(FALSE);
	return -1;
}

/** llcp_feats_rsp_handler
 */
static int llcp_feats_rsp_handler(uint16_t conhdl, ke_task_id_t dest_id, bool int_ctx, struct llcp_feats_rsp *param)
{
	ASSER_ERR(FALSE);
	return -1;
}

/** llcp_vers_ind_handler
 */
static int llcp_vers_ind_handler(uint16_t conhdl, ke_task_id_t dest_id, bool int_ctx, struct llcp_vers_ind *param)
{
	ASSER_ERR(FALSE);
	return -1;
}

/** llcp_con_param_req_handler
 */
static int llcp_con_param_req_handler(uint16_t conhdl, ke_task_id_t dest_id, bool int_ctx, struct llcp_con_param_req *param)
{
	ASSER_ERR(FALSE);
	return -1;
}

/** llcp_con_param_rsp_handler
 */
static int llcp_con_param_rsp_handler(uint16_t conhdl, ke_task_id_t dest_id, bool int_ctx, struct llcp_con_param_rsp *param)
{
	ASSER_ERR(FALSE);
	return -1;
}

/** llcp_enc_req_handler
 */
static int llcp_enc_req_handler(uint16_t conhdl, ke_task_id_t dest_id, bool int_ctx, struct llcp_enc_req *param)
{
	ASSER_ERR(FALSE);
	return -1;
}

/** llcp_enc_rsp_handler
 */
static int llcp_enc_rsp_handler(uint16_t conhdl, ke_task_id_t dest_id, bool int_ctx, struct llcp_enc_rsp *param)
{
	ASSER_ERR(FALSE);
	return -1;
}

/** llcp_start_enc_req_handler
 */
static int llcp_start_enc_req_handler(uint16_t conhdl, ke_task_id_t dest_id, bool int_ctx, struct llcp_start_enc_req *param)
{
	ASSER_ERR(FALSE);
	return -1;
}

/** llcp_start_enc_rsp_handler
 */
static int llcp_start_enc_rsp_handler(uint16_t conhdl, ke_task_id_t dest_id, bool int_ctx, struct llcp_start_enc_rsp *param)
{
	ASSER_ERR(FALSE);
	return -1;
}

/** llcp_pause_enc_req_handler
 */
static int llcp_pause_enc_req_handler(uint16_t conhdl, ke_task_id_t dest_id, bool int_ctx, struct llcp_pause_enc_req *param)
{
	ASSER_ERR(FALSE);
	return -1;
}

/** llcp_pause_enc_rsp_handler
 */
static int llcp_pause_enc_rsp_handler(uint16_t conhdl, ke_task_id_t dest_id, bool int_ctx, struct llcp_pause_enc_rsp *param)
{
	ASSER_ERR(FALSE);
	return -1;
}

/** llcp_reject_ind_handler
 */
static int llcp_reject_ind_handler(uint16_t conhdl, ke_task_id_t dest_id, bool int_ctx, struct llcp_reject_ind *param)
{
	ASSER_ERR(FALSE);
	return -1;
}

/** llcp_reject_ind_ext_handler
 */
static int llcp_reject_ind_ext_handler(uint16_t conhdl, ke_task_id_t dest_id, bool int_ctx, struct llcp_reject_ind_ext *param)
{
	ASSER_ERR(FALSE);
	return -1;
}

/** llcp_ping_req_handler
 */
static int llcp_ping_req_handler(uint16_t conhdl, ke_task_id_t dest_id, bool int_ctx, void *param)
{
	ASSER_ERR(FALSE);
	return -1;
}

/** llcp_ping_rsp_handler
 */
static int llcp_ping_rsp_handler(uint16_t conhdl, ke_task_id_t dest_id, bool int_ctx, void *param)
{
	ASSER_ERR(FALSE);
	return -1;
}

/** llcp_length_req_handler
 */
static int llcp_length_req_handler(uint16_t conhdl, ke_task_id_t dest_id, bool int_ctx, struct llcp_length_req *param)
{
	ASSER_ERR(FALSE);
	return -1;
}

/** llcp_length_rsp_handler
 */
static int llcp_length_rsp_handler(uint16_t conhdl, ke_task_id_t dest_id, bool int_ctx, struct llcp_length_rsp *param)
{
	ASSER_ERR(FALSE);
	return -1;
}

/** llcp_unknown_rsp_handler
 */
static int llcp_unknown_rsp_handler(uint16_t conhdl, ke_task_id_t dest_id, bool int_ctx, struct llcp_unknown_rsp *param)
{
	ASSER_ERR(FALSE);
	return -1;
}
