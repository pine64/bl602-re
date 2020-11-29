
int mm_scan_channel_end_ind_handler(ke_msg_id_t msgid, void * param, ke_task_id_t dest_id, ke_task_id_t src_id);
int mm_scan_channel_start_ind_handler(ke_msg_id_t msgid, void * param, ke_task_id_t dest_id, ke_task_id_t src_id);
int scan_cancel_req_handler(ke_msg_id_t msgid, void * param, ke_task_id_t dest_id, ke_task_id_t src_id);
int scan_start_req_handler(ke_msg_id_t msgid, scan_start_req * param, ke_task_id_t dest_id, ke_task_id_t src_id);
#if 0 //TODO EXISTS ALEADY
/**
* @file scan_task.c
* Source file for BL602
*/
#include "scan_task.h"


static int scan_start_req_handler(const ke_msg_id_t msgid, const struct scan_start_req *param, const ke_task_id_t dest_id, const ke_task_id_t src_id);
static int scan_cancel_req_handler(const ke_msg_id_t msgid, const void *param, const ke_task_id_t dest_id, const ke_task_id_t src_id);
static int mm_scan_channel_start_ind_handler(const ke_msg_id_t msgid, const void *param, const ke_task_id_t dest_id, const ke_task_id_t src_id);
static int mm_scan_channel_end_ind_handler(const ke_msg_id_t msgid, const void *param, const ke_task_id_t dest_id, const ke_task_id_t src_id);

const struct ke_msg_handler scan_default_state[4];
const struct ke_state_handler scan_default_handler;
ke_state_t scan_state[1];




/** scan_start_req_handler
 */
static int scan_start_req_handler(const ke_msg_id_t msgid, const struct scan_start_req *param, const ke_task_id_t dest_id, const ke_task_id_t src_id)
{
	ASSER_ERR(FALSE);
	return -1;
}

/** scan_cancel_req_handler
 */
static int scan_cancel_req_handler(const ke_msg_id_t msgid, const void *param, const ke_task_id_t dest_id, const ke_task_id_t src_id)
{
	ASSER_ERR(FALSE);
	return -1;
}

/** mm_scan_channel_start_ind_handler
 */
static int mm_scan_channel_start_ind_handler(const ke_msg_id_t msgid, const void *param, const ke_task_id_t dest_id, const ke_task_id_t src_id)
{
	ASSER_ERR(FALSE);
	return -1;
}

/** mm_scan_channel_end_ind_handler
 */
static int mm_scan_channel_end_ind_handler(const ke_msg_id_t msgid, const void *param, const ke_task_id_t dest_id, const ke_task_id_t src_id)
{
	ASSER_ERR(FALSE);
	return -1;
}
#endf 0 //TODO EXISTS ALEADY
