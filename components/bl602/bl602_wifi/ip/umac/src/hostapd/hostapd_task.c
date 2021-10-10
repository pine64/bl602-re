#include "hostapd_task.h"

#include <rxu/rxu_task.h>
#include <ke_task.h>


static int hostapd_mgt_ind_handler(const ke_msg_id_t msgid, const struct rxu_mgt_ind *param, const ke_task_id_t dest_id, const ke_task_id_t src_id)
{
	__builtin_trap();
}


static const struct ke_msg_handler hostapd_default_state[1];
const struct ke_state_handler hostapd_default_handler;
ke_state_t hostapd_u_state[1];
