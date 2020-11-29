
int cfg_start_req_handler(ke_msg_id_t msgid, cfg_start_req * param, ke_task_id_t dest_id, ke_task_id_t src_id);
void dump_cfg_entries(void);
#if 0 //TODO EXISTS ALEADY
/**
* @file cfg_task.c
* Source file for BL602
*/
#include "cfg_task.h"


void dump_cfg_entries(void);
static int cfg_start_req_handler(const ke_msg_id_t msgid, struct cfg_start_req *param, const ke_task_id_t dest_id, const ke_task_id_t src_id);

const struct ke_msg_handler cfg_default_state[1];
const struct ke_state_handler cfg_default_handler;
ke_state_t cfg_state[1];




/** dump_cfg_entries
 */
void dump_cfg_entries(void)
{
	ASSER_ERR(FALSE);
	return;
}

/** cfg_start_req_handler
 */
static int cfg_start_req_handler(const ke_msg_id_t msgid, struct cfg_start_req *param, const ke_task_id_t dest_id, const ke_task_id_t src_id)
{
	ASSER_ERR(FALSE);
	return -1;
}
#endf 0 //TODO EXISTS ALEADY
