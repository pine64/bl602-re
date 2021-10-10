#include "sm_task.h"

#include <mm/mm_task.h>
#include <rxu/rxu_task.h>


static int sm_connect_req_handler(const ke_msg_id_t msgid, const struct sm_connect_req *param, const ke_task_id_t dest_id, const ke_task_id_t src_id)
{
	__builtin_trap();
}

static int sm_disconnect_req_handler(const ke_msg_id_t msgid, const struct sm_disconnect_req *param, const ke_task_id_t dest_id, const ke_task_id_t src_id)
{
	__builtin_trap();
}

static int mm_connection_loss_ind_handler(const ke_msg_id_t msgid, const struct mm_connection_loss_ind *param, const ke_task_id_t dest_id, const ke_task_id_t src_id)
{
	__builtin_trap();
}

static int sm_rsp_timeout_ind_handler(const ke_msg_id_t msgid, const void *param, const ke_task_id_t dest_id, const ke_task_id_t src_id)
{
	__builtin_trap();
}

static int scanu_start_cfm_handler(const ke_msg_id_t msgid, const void *param, const ke_task_id_t dest_id, const ke_task_id_t src_id)
{
	__builtin_trap();
}

static int scanu_join_cfm_handler(const ke_msg_id_t msgid, const void *param, const ke_task_id_t dest_id, const ke_task_id_t src_id)
{
	__builtin_trap();
}

static int mm_sta_add_cfm_handler(const ke_msg_id_t msgid, const struct mm_sta_add_cfm *param, const ke_task_id_t dest_id, const ke_task_id_t src_id)
{
	__builtin_trap();
}

static int me_set_ps_disable_cfm_handler(const ke_msg_id_t msgid, const void *param, const ke_task_id_t dest_id, const ke_task_id_t src_id)
{
	__builtin_trap();
}

static int mm_bss_param_setting_handler(const ke_msg_id_t msgid, const void *param, const ke_task_id_t dest_id, const ke_task_id_t src_id)
{
	__builtin_trap();
}

static int me_set_active_cfm_handler(const ke_msg_id_t msgid, const void *param, const ke_task_id_t dest_id, const ke_task_id_t src_id)
{
	__builtin_trap();
}

static int mm_set_vif_state_cfm_handler(const ke_msg_id_t msgid, const void *param, const ke_task_id_t dest_id, const ke_task_id_t src_id)
{
	__builtin_trap();
}

static int rxu_mgt_ind_handler(const ke_msg_id_t msgid, const struct rxu_mgt_ind *param, const ke_task_id_t dest_id, const ke_task_id_t src_id)
{
	__builtin_trap();
}


extern const struct ke_msg_handler sm_default_state[17];
const struct ke_state_handler sm_default_handler;
ke_state_t sm_state[1];
