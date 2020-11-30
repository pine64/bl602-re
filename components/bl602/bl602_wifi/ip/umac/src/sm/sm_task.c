
int me_set_active_cfm_handler(ke_msg_id_t msgid, void * param, ke_task_id_t dest_id, ke_task_id_t src_id);
int me_set_ps_disable_cfm_handler(ke_msg_id_t msgid, void * param, ke_task_id_t dest_id, ke_task_id_t src_id);
int mm_bss_param_setting_handler(ke_msg_id_t msgid, void * param, ke_task_id_t dest_id, ke_task_id_t src_id);
int mm_connection_loss_ind_handler(ke_msg_id_t msgid, mm_connection_loss_ind * param, ke_task_id_t dest_id, ke_task_id_t src_id);
int mm_set_vif_state_cfm_handler(ke_msg_id_t msgid, void * param, ke_task_id_t dest_id, ke_task_id_t src_id);
int mm_sta_add_cfm_handler(ke_msg_id_t msgid, mm_sta_add_cfm * param, ke_task_id_t dest_id, ke_task_id_t src_id);
int scanu_join_cfm_handler(ke_msg_id_t msgid, void * param, ke_task_id_t dest_id, ke_task_id_t src_id);
int scanu_start_cfm_handler(ke_msg_id_t msgid, void * param, ke_task_id_t dest_id, ke_task_id_t src_id);
int sm_connect_req_handler(ke_msg_id_t msgid, sm_connect_req * param, ke_task_id_t dest_id, ke_task_id_t src_id);
int sm_disconnect_req_handler(ke_msg_id_t msgid, sm_disconnect_req * param, ke_task_id_t dest_id, ke_task_id_t src_id);
int sm_rsp_timeout_ind_handler(ke_msg_id_t msgid, void * param, ke_task_id_t dest_id, ke_task_id_t src_id);
#if 0 //TODO EXISTS ALEADY
/**
* @file sm_task.c
* Source file for BL602
*/
#include "sm_task.h"


static int sm_connect_req_handler(const ke_msg_id_t msgid, const struct sm_connect_req *param, const ke_task_id_t dest_id, const ke_task_id_t src_id);
static int sm_disconnect_req_handler(const ke_msg_id_t msgid, const struct sm_disconnect_req *param, const ke_task_id_t dest_id, const ke_task_id_t src_id);
static int mm_connection_loss_ind_handler(const ke_msg_id_t msgid, const struct mm_connection_loss_ind *param, const ke_task_id_t dest_id, const ke_task_id_t src_id);
static int sm_rsp_timeout_ind_handler(const ke_msg_id_t msgid, const void *param, const ke_task_id_t dest_id, const ke_task_id_t src_id);
static int scanu_start_cfm_handler(const ke_msg_id_t msgid, const void *param, const ke_task_id_t dest_id, const ke_task_id_t src_id);
static int scanu_join_cfm_handler(const ke_msg_id_t msgid, const void *param, const ke_task_id_t dest_id, const ke_task_id_t src_id);
static int mm_sta_add_cfm_handler(const ke_msg_id_t msgid, const struct mm_sta_add_cfm *param, const ke_task_id_t dest_id, const ke_task_id_t src_id);
static int me_set_ps_disable_cfm_handler(const ke_msg_id_t msgid, const void *param, const ke_task_id_t dest_id, const ke_task_id_t src_id);
static int mm_bss_param_setting_handler(const ke_msg_id_t msgid, const void *param, const ke_task_id_t dest_id, const ke_task_id_t src_id);
static int me_set_active_cfm_handler(const ke_msg_id_t msgid, const void *param, const ke_task_id_t dest_id, const ke_task_id_t src_id);
static int mm_set_vif_state_cfm_handler(const ke_msg_id_t msgid, const void *param, const ke_task_id_t dest_id, const ke_task_id_t src_id);
static int rxu_mgt_ind_handler(const ke_msg_id_t msgid, const struct rxu_mgt_ind *param, const ke_task_id_t dest_id, const ke_task_id_t src_id);

const struct ke_msg_handler sm_default_state[17];
const struct ke_state_handler sm_default_handler;
ke_state_t sm_state[1];




/** sm_connect_req_handler
 */
static int sm_connect_req_handler(const ke_msg_id_t msgid, const struct sm_connect_req *param, const ke_task_id_t dest_id, const ke_task_id_t src_id)
{
	ASSER_ERR(FALSE);
	return -1;
}

/** sm_disconnect_req_handler
 */
static int sm_disconnect_req_handler(const ke_msg_id_t msgid, const struct sm_disconnect_req *param, const ke_task_id_t dest_id, const ke_task_id_t src_id)
{
	ASSER_ERR(FALSE);
	return -1;
}

/** mm_connection_loss_ind_handler
 */
static int mm_connection_loss_ind_handler(const ke_msg_id_t msgid, const struct mm_connection_loss_ind *param, const ke_task_id_t dest_id, const ke_task_id_t src_id)
{
	ASSER_ERR(FALSE);
	return -1;
}

/** sm_rsp_timeout_ind_handler
 */
static int sm_rsp_timeout_ind_handler(const ke_msg_id_t msgid, const void *param, const ke_task_id_t dest_id, const ke_task_id_t src_id)
{
	ASSER_ERR(FALSE);
	return -1;
}

/** scanu_start_cfm_handler
 */
static int scanu_start_cfm_handler(const ke_msg_id_t msgid, const void *param, const ke_task_id_t dest_id, const ke_task_id_t src_id)
{
	ASSER_ERR(FALSE);
	return -1;
}

/** scanu_join_cfm_handler
 */
static int scanu_join_cfm_handler(const ke_msg_id_t msgid, const void *param, const ke_task_id_t dest_id, const ke_task_id_t src_id)
{
	ASSER_ERR(FALSE);
	return -1;
}

/** mm_sta_add_cfm_handler
 */
static int mm_sta_add_cfm_handler(const ke_msg_id_t msgid, const struct mm_sta_add_cfm *param, const ke_task_id_t dest_id, const ke_task_id_t src_id)
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

/** mm_set_vif_state_cfm_handler
 */
static int mm_set_vif_state_cfm_handler(const ke_msg_id_t msgid, const void *param, const ke_task_id_t dest_id, const ke_task_id_t src_id)
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
