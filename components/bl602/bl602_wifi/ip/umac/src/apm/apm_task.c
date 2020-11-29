
int apm_conf_max_sta_req_handler(ke_msg_id_t msgid, apm_conf_max_sta_req * param, ke_task_id_t dest_id, ke_task_id_t src_id);
int apm_sta_add_cfm_handler(ke_msg_id_t msgid, me_sta_add_cfm * param, ke_task_id_t dest_id, ke_task_id_t src_id);
int apm_sta_connect_timeout_ind_handler(ke_msg_id_t msgid, void * param, ke_task_id_t dest_id, ke_task_id_t src_id);
int apm_sta_del_req_handler(ke_msg_id_t msgid, apm_sta_del_req * param, ke_task_id_t dest_id, ke_task_id_t src_id);
int apm_start_cac_req_handler(ke_msg_id_t msgid, apm_start_cac_req * param, ke_task_id_t dest_id, ke_task_id_t src_id);
int apm_start_req_handler(ke_msg_id_t msgid, apm_start_req * param, ke_task_id_t dest_id, ke_task_id_t src_id);
int apm_stop_cac_req_handler(ke_msg_id_t msgid, apm_stop_cac_req * param, ke_task_id_t dest_id, ke_task_id_t src_id);
int apm_stop_req_handler(ke_msg_id_t msgid, apm_stop_req * param, ke_task_id_t dest_id, ke_task_id_t src_id);
int mm_bcn_change_cfm_handler(ke_msg_id_t msgid, void * param, ke_task_id_t dest_id, ke_task_id_t src_id);
#if 0 //TODO EXISTS ALEADY
/**
* @file apm_task.c
* Source file for BL602
*/
#include "apm_task.h"


static int apm_start_req_handler(const ke_msg_id_t msgid, struct apm_start_req *param, const ke_task_id_t dest_id, const ke_task_id_t src_id);
static int me_set_ps_disable_cfm_handler(const ke_msg_id_t msgid, const void *param, const ke_task_id_t dest_id, const ke_task_id_t src_id);
static int mm_bss_param_setting_handler(const ke_msg_id_t msgid, const void *param, const ke_task_id_t dest_id, const ke_task_id_t src_id);
static int me_set_active_cfm_handler(const ke_msg_id_t msgid, const void *param, const ke_task_id_t dest_id, const ke_task_id_t src_id);
static int mm_bcn_change_cfm_handler(const ke_msg_id_t msgid, const void *param, const ke_task_id_t dest_id, const ke_task_id_t src_id);
static int apm_stop_req_handler(const ke_msg_id_t msgid, const struct apm_stop_req *param, const ke_task_id_t dest_id, const ke_task_id_t src_id);
static int apm_conf_max_sta_req_handler(const ke_msg_id_t msgid, const struct apm_conf_max_sta_req *param, const ke_task_id_t dest_id, const ke_task_id_t src_id);
static int apm_start_cac_req_handler(const ke_msg_id_t msgid, const struct apm_start_cac_req *param, const ke_task_id_t dest_id, const ke_task_id_t src_id);
static int apm_stop_cac_req_handler(const ke_msg_id_t msgid, const struct apm_stop_cac_req *param, const ke_task_id_t dest_id, const ke_task_id_t src_id);
static int apm_sta_del_req_handler(const ke_msg_id_t msgid, const struct apm_sta_del_req *param, const ke_task_id_t dest_id, const ke_task_id_t src_id);
static int apm_sta_add_cfm_handler(const ke_msg_id_t msgid, const struct me_sta_add_cfm *param, const ke_task_id_t dest_id, const ke_task_id_t src_id);
static int rxu_mgt_ind_handler(const ke_msg_id_t msgid, const struct rxu_mgt_ind *param, const ke_task_id_t dest_id, const ke_task_id_t src_id);
static int apm_sta_connect_timeout_ind_handler(const ke_msg_id_t msgid, const void *param, const ke_task_id_t dest_id, const ke_task_id_t src_id);

const struct ke_msg_handler apm_default_state[16];
const struct ke_state_handler apm_default_handler;
ke_state_t apm_state[1];




/** apm_start_req_handler
 */
static int apm_start_req_handler(const ke_msg_id_t msgid, struct apm_start_req *param, const ke_task_id_t dest_id, const ke_task_id_t src_id)
{
	ASSER_ERR(FALSE);
	return -1;
}

/** me_set_ps_disable_cfm_handler
 */
static int me_set_ps_disable_cfm_handler(const ke_msg_id_t msgid, const void *param, const ke_task_id_t dest_id, const ke_task_id_t src_id)
{
	ASSER_ERR(FALSE);
	return -1;
}

/** mm_bss_param_setting_handler
 */
static int mm_bss_param_setting_handler(const ke_msg_id_t msgid, const void *param, const ke_task_id_t dest_id, const ke_task_id_t src_id)
{
	ASSER_ERR(FALSE);
	return -1;
}

/** me_set_active_cfm_handler
 */
static int me_set_active_cfm_handler(const ke_msg_id_t msgid, const void *param, const ke_task_id_t dest_id, const ke_task_id_t src_id)
{
	ASSER_ERR(FALSE);
	return -1;
}

/** mm_bcn_change_cfm_handler
 */
static int mm_bcn_change_cfm_handler(const ke_msg_id_t msgid, const void *param, const ke_task_id_t dest_id, const ke_task_id_t src_id)
{
	ASSER_ERR(FALSE);
	return -1;
}

/** apm_stop_req_handler
 */
static int apm_stop_req_handler(const ke_msg_id_t msgid, const struct apm_stop_req *param, const ke_task_id_t dest_id, const ke_task_id_t src_id)
{
	ASSER_ERR(FALSE);
	return -1;
}

/** apm_conf_max_sta_req_handler
 */
static int apm_conf_max_sta_req_handler(const ke_msg_id_t msgid, const struct apm_conf_max_sta_req *param, const ke_task_id_t dest_id, const ke_task_id_t src_id)
{
	ASSER_ERR(FALSE);
	return -1;
}

/** apm_start_cac_req_handler
 */
static int apm_start_cac_req_handler(const ke_msg_id_t msgid, const struct apm_start_cac_req *param, const ke_task_id_t dest_id, const ke_task_id_t src_id)
{
	ASSER_ERR(FALSE);
	return -1;
}

/** apm_stop_cac_req_handler
 */
static int apm_stop_cac_req_handler(const ke_msg_id_t msgid, const struct apm_stop_cac_req *param, const ke_task_id_t dest_id, const ke_task_id_t src_id)
{
	ASSER_ERR(FALSE);
	return -1;
}

/** apm_sta_del_req_handler
 */
static int apm_sta_del_req_handler(const ke_msg_id_t msgid, const struct apm_sta_del_req *param, const ke_task_id_t dest_id, const ke_task_id_t src_id)
{
	ASSER_ERR(FALSE);
	return -1;
}

/** apm_sta_add_cfm_handler
 */
static int apm_sta_add_cfm_handler(const ke_msg_id_t msgid, const struct me_sta_add_cfm *param, const ke_task_id_t dest_id, const ke_task_id_t src_id)
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

/** apm_sta_connect_timeout_ind_handler
 */
static int apm_sta_connect_timeout_ind_handler(const ke_msg_id_t msgid, const void *param, const ke_task_id_t dest_id, const ke_task_id_t src_id)
{
	ASSER_ERR(FALSE);
	return -1;
}
#endf 0 //TODO EXISTS ALEADY
