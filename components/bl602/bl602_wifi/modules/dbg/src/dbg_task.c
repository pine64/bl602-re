
int dbg_get_sys_stat_req_handler(ke_msg_id_t msgid, void * param, ke_task_id_t dest_id, ke_task_id_t src_id);
int dbg_mem_read_req_handler(ke_msg_id_t msgid, dbg_mem_read_req * param, ke_task_id_t dest_id, ke_task_id_t src_id);
int dbg_mem_write_req_handler(ke_msg_id_t msgid, dbg_mem_write_req * param, ke_task_id_t dest_id, ke_task_id_t src_id);
int dbg_set_mod_filter_req_handler(ke_msg_id_t msgid, dbg_set_mod_filter_req * param, ke_task_id_t dest_id, ke_task_id_t src_id);
int dbg_set_sev_filter_req_handler(ke_msg_id_t msgid, dbg_set_sev_filter_req * param, ke_task_id_t dest_id, ke_task_id_t src_id);
#if 0 //TODO EXISTS ALEADY
/**
* @file dbg_task.c
* Source file for BL602
*/
#include "dbg_task.h"


static int dbg_mem_read_req_handler(const ke_msg_id_t msgid, const struct dbg_mem_read_req *param, const ke_task_id_t dest_id, const ke_task_id_t src_id);
static int dbg_mem_write_req_handler(const ke_msg_id_t msgid, const struct dbg_mem_write_req *param, const ke_task_id_t dest_id, const ke_task_id_t src_id);
static int dbg_set_mod_filter_req_handler(const ke_msg_id_t msgid, const struct dbg_set_mod_filter_req *param, const ke_task_id_t dest_id, const ke_task_id_t src_id);
static int dbg_set_sev_filter_req_handler(const ke_msg_id_t msgid, const struct dbg_set_sev_filter_req *param, const ke_task_id_t dest_id, const ke_task_id_t src_id);
static int dbg_get_sys_stat_req_handler(const ke_msg_id_t msgid, const void *param, const ke_task_id_t dest_id, const ke_task_id_t src_id);

const struct ke_msg_handler dbg_default_state[5];
const struct ke_state_handler dbg_default_handler;




/** dbg_mem_read_req_handler
 */
static int dbg_mem_read_req_handler(const ke_msg_id_t msgid, const struct dbg_mem_read_req *param, const ke_task_id_t dest_id, const ke_task_id_t src_id)
{
	ASSER_ERR(FALSE);
	return -1;
}

/** dbg_mem_write_req_handler
 */
static int dbg_mem_write_req_handler(const ke_msg_id_t msgid, const struct dbg_mem_write_req *param, const ke_task_id_t dest_id, const ke_task_id_t src_id)
{
	ASSER_ERR(FALSE);
	return -1;
}

/** dbg_set_mod_filter_req_handler
 */
static int dbg_set_mod_filter_req_handler(const ke_msg_id_t msgid, const struct dbg_set_mod_filter_req *param, const ke_task_id_t dest_id, const ke_task_id_t src_id)
{
	ASSER_ERR(FALSE);
	return -1;
}

/** dbg_set_sev_filter_req_handler
 */
static int dbg_set_sev_filter_req_handler(const ke_msg_id_t msgid, const struct dbg_set_sev_filter_req *param, const ke_task_id_t dest_id, const ke_task_id_t src_id)
{
	ASSER_ERR(FALSE);
	return -1;
}

/** dbg_get_sys_stat_req_handler
 */
static int dbg_get_sys_stat_req_handler(const ke_msg_id_t msgid, const void *param, const ke_task_id_t dest_id, const ke_task_id_t src_id)
{
	ASSER_ERR(FALSE);
	return -1;
}
#endf 0 //TODO EXISTS ALEADY
