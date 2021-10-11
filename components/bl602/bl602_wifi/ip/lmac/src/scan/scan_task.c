#include "scan_task.h"


const struct ke_msg_handler scan_default_state[4];
const struct ke_state_handler scan_default_handler;
ke_state_t scan_state[1];


/** scan_start_req_handler
 */
static int scan_start_req_handler(const ke_msg_id_t msgid, const struct scan_start_req *param, const ke_task_id_t dest_id, const ke_task_id_t src_id)
{
	__builtin_trap();
}

/** scan_cancel_req_handler
 */
static int scan_cancel_req_handler(const ke_msg_id_t msgid, const void *param, const ke_task_id_t dest_id, const ke_task_id_t src_id)
{
	__builtin_trap();
}

/** mm_scan_channel_start_ind_handler
 */
static int mm_scan_channel_start_ind_handler(const ke_msg_id_t msgid, const void *param, const ke_task_id_t dest_id, const ke_task_id_t src_id)
{
	__builtin_trap();
}

/** mm_scan_channel_end_ind_handler
 */
static int mm_scan_channel_end_ind_handler(const ke_msg_id_t msgid, const void *param, const ke_task_id_t dest_id, const ke_task_id_t src_id)
{
	__builtin_trap();
}
