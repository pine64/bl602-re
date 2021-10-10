#include "apm_task.h"

#include <me/me_task.h>
#include <rxu/rxu_task.h>
#include <ke_task.h>


static int apm_start_req_handler(const ke_msg_id_t msgid, struct apm_start_req *param, const ke_task_id_t dest_id, const ke_task_id_t src_id)
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

static int mm_bcn_change_cfm_handler(const ke_msg_id_t msgid, const void *param, const ke_task_id_t dest_id, const ke_task_id_t src_id)
{
	__builtin_trap();
}

static int apm_stop_req_handler(const ke_msg_id_t msgid, const struct apm_stop_req *param, const ke_task_id_t dest_id, const ke_task_id_t src_id)
{
	__builtin_trap();
}

static int apm_conf_max_sta_req_handler(const ke_msg_id_t msgid, const struct apm_conf_max_sta_req *param, const ke_task_id_t dest_id, const ke_task_id_t src_id)
{
	__builtin_trap();
}

static int apm_start_cac_req_handler(const ke_msg_id_t msgid, const struct apm_start_cac_req *param, const ke_task_id_t dest_id, const ke_task_id_t src_id)
{
	__builtin_trap();
}

static int apm_stop_cac_req_handler(const ke_msg_id_t msgid, const struct apm_stop_cac_req *param, const ke_task_id_t dest_id, const ke_task_id_t src_id)
{
	__builtin_trap();
}

static int apm_sta_del_req_handler(const ke_msg_id_t msgid, const struct apm_sta_del_req *param, const ke_task_id_t dest_id, const ke_task_id_t src_id)
{
	__builtin_trap();
}

static int apm_sta_add_cfm_handler(const ke_msg_id_t msgid, const struct me_sta_add_cfm *param, const ke_task_id_t dest_id, const ke_task_id_t src_id)
{
	__builtin_trap();
}

static int rxu_mgt_ind_handler(const ke_msg_id_t msgid, const struct rxu_mgt_ind *param, const ke_task_id_t dest_id, const ke_task_id_t src_id)
{
	__builtin_trap();
}

static int apm_sta_connect_timeout_ind_handler(const ke_msg_id_t msgid, const void *param, const ke_task_id_t dest_id, const ke_task_id_t src_id)
{
	__builtin_trap();
}

extern const struct ke_msg_handler apm_default_state[16];
