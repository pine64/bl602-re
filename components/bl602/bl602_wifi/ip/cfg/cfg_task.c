#include "cfg_task.h"

#include <ke_task.h>


void dump_cfg_entries(void)
{
	__builtin_trap();
}

static int cfg_start_req_handler(const ke_msg_id_t msgid, struct cfg_start_req *param, const ke_task_id_t dest_id, const ke_task_id_t src_id)
{
	__builtin_trap();
}


extern const struct ke_msg_handler cfg_default_state[1];
const struct ke_state_handler cfg_default_handler;
ke_state_t cfg_state[1];
