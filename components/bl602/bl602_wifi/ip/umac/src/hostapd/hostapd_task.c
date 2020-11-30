
int hostapd_mgt_ind_handler(ke_msg_id_t msgid, rxu_mgt_ind * param, ke_task_id_t dest_id, ke_task_id_t src_id);
#if 0 //TODO EXISTS ALEADY
/**
* @file hostapd_task.c
* Source file for BL602
*/
#include "hostapd_task.h"


static int hostapd_mgt_ind_handler(const ke_msg_id_t msgid, const struct rxu_mgt_ind *param, const ke_task_id_t dest_id, const ke_task_id_t src_id);

static const struct ke_msg_handler hostapd_default_state[1];
const struct ke_state_handler hostapd_default_handler;
ke_state_t hostapd_u_state[1];




/** hostapd_mgt_ind_handler
 */
static int hostapd_mgt_ind_handler(const ke_msg_id_t msgid, const struct rxu_mgt_ind *param, const ke_task_id_t dest_id, const ke_task_id_t src_id)
{
	ASSER_ERR(FALSE);
	return -1;
}
#endf 0 //TODO EXISTS ALEADY
