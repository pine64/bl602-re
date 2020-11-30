/**
* @file llc_task.c
* Source file for BL602
*/
#include "llc_task.h"


static void llc_task_random_gen_request(ke_task_id_t dest_id);
static int llc_enc_mgt_ind_handler(const ke_msg_id_t msgid, const void *param, const ke_task_id_t dest_id, const ke_task_id_t src_id);
static int llc_link_sup_to_ind_handler(const ke_msg_id_t msgid, const void *param, const ke_task_id_t dest_id, const ke_task_id_t src_id);
static int llc_auth_payl_nearly_to_ind_handler(const ke_msg_id_t msgid, const void *param, const ke_task_id_t dest_id, const ke_task_id_t src_id);
static int llc_auth_payl_real_to_ind_handler(const ke_msg_id_t msgid, const void *param, const ke_task_id_t dest_id, const ke_task_id_t src_id);
static int llc_llcp_rsp_to_ind_handler(const ke_msg_id_t msgid, const void *param, const ke_task_id_t dest_id, const ke_task_id_t src_id);
static int llc_chnl_assess_timer_handler(const ke_msg_id_t msgid, const void *param, const ke_task_id_t dest_id, const ke_task_id_t src_id);
static int llc_con_upd_req_ind_handler(const ke_msg_id_t msgid, struct llc_con_upd_req_ind *param, const ke_task_id_t dest_id, const ke_task_id_t src_id);
static int llc_length_req_ind_handler(const ke_msg_id_t msgid, const void *param, const ke_task_id_t dest_id, const ke_task_id_t src_id);
static int llc_chmap_update_req_ind_handler(const ke_msg_id_t msgid, const void *param, const ke_task_id_t dest_id, const ke_task_id_t src_id);
static int llm_enc_ind_handler(const ke_msg_id_t msgid, const struct llm_enc_ind *param, const ke_task_id_t dest_id, const ke_task_id_t src_id);
static int lld_stop_ind_handler(const ke_msg_id_t msgid, const void *param, const ke_task_id_t dest_id, const ke_task_id_t src_id);
static int llc_data_ind_handler(const ke_msg_id_t msgid, const struct llc_data_ind *param, const ke_task_id_t dest_id, const ke_task_id_t src_id);
static int llc_dft_handler(const ke_msg_id_t msgid, void *param, const ke_task_id_t dest_id, const ke_task_id_t src_id);
static int llc_llcp_recv_ind_handler(const ke_msg_id_t msgid, struct llc_llcp_recv_ind *ind, ke_task_id_t dest_id, ke_task_id_t src_id);

static const struct ke_msg_handler llc_default_state[16];
const struct ke_state_handler llc_default_handler;
ke_state_t llc_state[2];




/** llc_task_random_gen_request
 */
static void llc_task_random_gen_request(ke_task_id_t dest_id)
{
	ASSER_ERR(FALSE);
	return;
}

/** llc_enc_mgt_ind_handler
 */
static int llc_enc_mgt_ind_handler(const ke_msg_id_t msgid, const void *param, const ke_task_id_t dest_id, const ke_task_id_t src_id)
{
	ASSER_ERR(FALSE);
	return -1;
}

/** llc_link_sup_to_ind_handler
 */
static int llc_link_sup_to_ind_handler(const ke_msg_id_t msgid, const void *param, const ke_task_id_t dest_id, const ke_task_id_t src_id)
{
	ASSER_ERR(FALSE);
	return -1;
}

/** llc_auth_payl_nearly_to_ind_handler
 */
static int llc_auth_payl_nearly_to_ind_handler(const ke_msg_id_t msgid, const void *param, const ke_task_id_t dest_id, const ke_task_id_t src_id)
{
	ASSER_ERR(FALSE);
	return -1;
}

/** llc_auth_payl_real_to_ind_handler
 */
static int llc_auth_payl_real_to_ind_handler(const ke_msg_id_t msgid, const void *param, const ke_task_id_t dest_id, const ke_task_id_t src_id)
{
	ASSER_ERR(FALSE);
	return -1;
}

/** llc_llcp_rsp_to_ind_handler
 */
static int llc_llcp_rsp_to_ind_handler(const ke_msg_id_t msgid, const void *param, const ke_task_id_t dest_id, const ke_task_id_t src_id)
{
	ASSER_ERR(FALSE);
	return -1;
}

/** llc_chnl_assess_timer_handler
 */
static int llc_chnl_assess_timer_handler(const ke_msg_id_t msgid, const void *param, const ke_task_id_t dest_id, const ke_task_id_t src_id)
{
	ASSER_ERR(FALSE);
	return -1;
}

/** llc_con_upd_req_ind_handler
 */
static int llc_con_upd_req_ind_handler(const ke_msg_id_t msgid, struct llc_con_upd_req_ind *param, const ke_task_id_t dest_id, const ke_task_id_t src_id)
{
	ASSER_ERR(FALSE);
	return -1;
}

/** llc_length_req_ind_handler
 */
static int llc_length_req_ind_handler(const ke_msg_id_t msgid, const void *param, const ke_task_id_t dest_id, const ke_task_id_t src_id)
{
	ASSER_ERR(FALSE);
	return -1;
}

/** llc_chmap_update_req_ind_handler
 */
static int llc_chmap_update_req_ind_handler(const ke_msg_id_t msgid, const void *param, const ke_task_id_t dest_id, const ke_task_id_t src_id)
{
	ASSER_ERR(FALSE);
	return -1;
}

/** llm_enc_ind_handler
 */
static int llm_enc_ind_handler(const ke_msg_id_t msgid, const struct llm_enc_ind *param, const ke_task_id_t dest_id, const ke_task_id_t src_id)
{
	ASSER_ERR(FALSE);
	return -1;
}

/** lld_stop_ind_handler
 */
static int lld_stop_ind_handler(const ke_msg_id_t msgid, const void *param, const ke_task_id_t dest_id, const ke_task_id_t src_id)
{
	ASSER_ERR(FALSE);
	return -1;
}

/** llc_data_ind_handler
 */
static int llc_data_ind_handler(const ke_msg_id_t msgid, const struct llc_data_ind *param, const ke_task_id_t dest_id, const ke_task_id_t src_id)
{
	ASSER_ERR(FALSE);
	return -1;
}

/** llc_dft_handler
 */
static int llc_dft_handler(const ke_msg_id_t msgid, void *param, const ke_task_id_t dest_id, const ke_task_id_t src_id)
{
	ASSER_ERR(FALSE);
	return -1;
}

/** llc_llcp_recv_ind_handler
 */
static int llc_llcp_recv_ind_handler(const ke_msg_id_t msgid, struct llc_llcp_recv_ind *ind, ke_task_id_t dest_id, ke_task_id_t src_id)
{
	ASSER_ERR(FALSE);
	return -1;
}
