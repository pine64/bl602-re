#include "me_task.h"


static int me_config_req_handler(const ke_msg_id_t msgid, const struct me_config_req *param, const ke_task_id_t dest_id, const ke_task_id_t src_id)
{
	__builtin_trap();
}

static int me_chan_config_req_handler(const ke_msg_id_t msgid, const struct me_chan_config_req *param, const ke_task_id_t dest_id, const ke_task_id_t src_id)
{
	__builtin_trap();
}

static int me_set_control_port_req_handler(const ke_msg_id_t msgid, const struct me_set_control_port_req *param, const ke_task_id_t dest_id, const ke_task_id_t src_id)
{
	__builtin_trap();
}

static int me_sta_add_req_handler(const ke_msg_id_t msgid, const struct me_sta_add_req *param, const ke_task_id_t dest_id, const ke_task_id_t src_id)
{
	__builtin_trap();
}

static int me_sta_del_req_handler(const ke_msg_id_t msgid, const struct me_sta_del_req *param, const ke_task_id_t dest_id, const ke_task_id_t src_id)
{
	__builtin_trap();
}

static int me_traffic_ind_req_handler(const ke_msg_id_t msgid, const struct me_traffic_ind_req *param, const ke_task_id_t dest_id, const ke_task_id_t src_id)
{
	__builtin_trap();
}

static int me_set_active_req_handler(const ke_msg_id_t msgid, const struct me_set_active_req *param, const ke_task_id_t dest_id, const ke_task_id_t src_id)
{
	__builtin_trap();
}

static int mm_set_idle_cfm_handler(const ke_msg_id_t msgid, const void *param, const ke_task_id_t dest_id, const ke_task_id_t src_id)
{
	__builtin_trap();
}

static int me_set_ps_disable_req_handler(const ke_msg_id_t msgid, const struct me_set_ps_disable_req *param, const ke_task_id_t dest_id, const ke_task_id_t src_id)
{
	__builtin_trap();
}

static int mm_set_ps_mode_cfm_handler(const ke_msg_id_t msgid, const void *param, const ke_task_id_t dest_id, const ke_task_id_t src_id)
{
	__builtin_trap();
}

static int me_rc_stats_req_handler(const ke_msg_id_t msgid, const struct me_rc_stats_req *param, const ke_task_id_t dest_id, const ke_task_id_t src_id)
{
	__builtin_trap();
}

static int me_rc_set_rate_req_handler(const ke_msg_id_t msgid, const struct me_rc_set_rate_req *param, const ke_task_id_t dest_id, const ke_task_id_t src_id)
{
	__builtin_trap();
}


extern const struct ke_msg_handler me_default_state[15];
const struct ke_state_handler me_default_handler;
ke_state_t me_state[1];
