
void cfm_raw_send(void * env, uint32_t status);
int packet_send_test(uint8_t * frm, size_t data_len);
int scan_done_ind_handler(ke_msg_id_t msgid, void * param, ke_task_id_t dest_id, ke_task_id_t src_id);
int scan_start_cfm_handler(ke_msg_id_t msgid, scan_start_cfm * param, ke_task_id_t dest_id, ke_task_id_t src_id);
int scanu_join_req_handler(ke_msg_id_t msgid, scanu_start_req * param, ke_task_id_t dest_id, ke_task_id_t src_id);
int scanu_raw_send_req_handler(ke_msg_id_t msgid, scanu_raw_send_req * param, ke_task_id_t dest_id, ke_task_id_t src_id);
int scanu_start_req_handler(ke_msg_id_t msgid, scanu_start_req * param, ke_task_id_t dest_id, ke_task_id_t src_id);
#if 0 //TODO EXISTS ALEADY
/**
* @file scanu_task.c
* Source file for BL602
*/
#include "scanu_task.h"


static int scanu_start_req_handler(const ke_msg_id_t msgid, const struct scanu_start_req *param, const ke_task_id_t dest_id, const ke_task_id_t src_id);
static void cfm_raw_send(void *env, uint32_t status);
static int scanu_raw_send_req_handler(const ke_msg_id_t msgid, const struct scanu_raw_send_req *param, const ke_task_id_t dest_id, const ke_task_id_t src_id);
static int scanu_join_req_handler(const ke_msg_id_t msgid, const struct scanu_start_req *param, const ke_task_id_t dest_id, const ke_task_id_t src_id);
static int scan_start_cfm_handler(const ke_msg_id_t msgid, const struct scan_start_cfm *param, const ke_task_id_t dest_id, const ke_task_id_t src_id);
static int scan_done_ind_handler(const ke_msg_id_t msgid, const void *param, const ke_task_id_t dest_id, const ke_task_id_t src_id);
static int rxu_mgt_ind_handler(const ke_msg_id_t msgid, const struct rxu_mgt_ind *param, const ke_task_id_t dest_id, const ke_task_id_t src_id);

const struct ke_msg_handler scanu_idle[3];
const struct ke_msg_handler scanu_scanning[3];
const struct ke_msg_handler scanu_default_state[3];
const struct ke_state_handler scanu_state_handler[2];
const struct ke_state_handler scanu_default_handler;
ke_state_t scanu_state[1];




/** scanu_start_req_handler
 */
static int scanu_start_req_handler(const ke_msg_id_t msgid, const struct scanu_start_req *param, const ke_task_id_t dest_id, const ke_task_id_t src_id)
{
	ASSER_ERR(FALSE);
	return -1;
}

/** cfm_raw_send
 */
static void cfm_raw_send(void *env, uint32_t status)
{
	ASSER_ERR(FALSE);
	return;
}

/** scanu_raw_send_req_handler
 */
static int scanu_raw_send_req_handler(const ke_msg_id_t msgid, const struct scanu_raw_send_req *param, const ke_task_id_t dest_id, const ke_task_id_t src_id)
{
	ASSER_ERR(FALSE);
	return -1;
}

/** scanu_join_req_handler
 */
static int scanu_join_req_handler(const ke_msg_id_t msgid, const struct scanu_start_req *param, const ke_task_id_t dest_id, const ke_task_id_t src_id)
{
	ASSER_ERR(FALSE);
	return -1;
}

/** scan_start_cfm_handler
 */
static int scan_start_cfm_handler(const ke_msg_id_t msgid, const struct scan_start_cfm *param, const ke_task_id_t dest_id, const ke_task_id_t src_id)
{
	ASSER_ERR(FALSE);
	return -1;
}

/** scan_done_ind_handler
 */
static int scan_done_ind_handler(const ke_msg_id_t msgid, const void *param, const ke_task_id_t dest_id, const ke_task_id_t src_id)
{
	ASSER_ERR(FALSE);
	return -1;
}

/** rxu_mgt_ind_handler
 */
static int rxu_mgt_ind_handler(const ke_msg_id_t msgid, const struct rxu_mgt_ind *param, const ke_task_id_t dest_id, const ke_task_id_t src_id)
{
	ASSER_ERR(FALSE);
	return -1;
}
#endf 0 //TODO EXISTS ALEADY
