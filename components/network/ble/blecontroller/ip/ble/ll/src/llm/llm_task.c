/**
* @file llm_task.c
* Source file for BL602
*/
#include "llm_task.h"


static int llm_enc_req_handler(const ke_msg_id_t msgid, const struct llm_enc_req *param, const ke_task_id_t dest_id, const ke_task_id_t src_id);
static int llm_ecc_result_ind_handler(const ke_msg_id_t msgid, const struct ecc_result_ind *param, const ke_task_id_t dest_id, const ke_task_id_t src_id);
static int lld_stop_ind_handler(const ke_msg_id_t msgid, const void *param, const ke_task_id_t dest_id, const ke_task_id_t src_id);
static int llm_dft_handler(const ke_msg_id_t msgid, void *param, const ke_task_id_t dest_id, const ke_task_id_t src_id);
static int llm_le_set_host_ch_class_cmd_sto_handler(const ke_msg_id_t msgid, const void *param, const ke_task_id_t dest_id, const ke_task_id_t src_id);

static const struct ke_msg_handler llm_default_state[7];
const struct ke_state_handler llm_default_handler;
ke_state_t llm_state[1];




/** llm_enc_req_handler
 */
static int llm_enc_req_handler(const ke_msg_id_t msgid, const struct llm_enc_req *param, const ke_task_id_t dest_id, const ke_task_id_t src_id)
{
	ASSER_ERR(FALSE);
	return -1;
}

/** llm_ecc_result_ind_handler
 */
static int llm_ecc_result_ind_handler(const ke_msg_id_t msgid, const struct ecc_result_ind *param, const ke_task_id_t dest_id, const ke_task_id_t src_id)
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

/** llm_dft_handler
 */
static int llm_dft_handler(const ke_msg_id_t msgid, void *param, const ke_task_id_t dest_id, const ke_task_id_t src_id)
{
	ASSER_ERR(FALSE);
	return -1;
}

/** llm_le_set_host_ch_class_cmd_sto_handler
 */
static int llm_le_set_host_ch_class_cmd_sto_handler(const ke_msg_id_t msgid, const void *param, const ke_task_id_t dest_id, const ke_task_id_t src_id)
{
	ASSER_ERR(FALSE);
	return -1;
}
