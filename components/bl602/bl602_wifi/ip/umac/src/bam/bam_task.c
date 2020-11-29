
int rxu_mgt_ind_handler(ke_msg_id_t msgid, rxu_mgt_ind * param, ke_task_id_t dest_id, ke_task_id_t src_id);
#if 0 //TODO EXISTS ALEADY
/**
* @file bam_task.c
* Source file for BL602
*/
#include "bam_task.h"


static int rxu_mgt_ind_handler(const ke_msg_id_t msgid, const struct rxu_mgt_ind *param, const ke_task_id_t dest_id, const ke_task_id_t src_id);

const struct ke_msg_handler bam_default_state[1];
const struct ke_state_handler bam_default_handler;
ke_state_t bam_state[1];




/** rxu_mgt_ind_handler
 */
static int rxu_mgt_ind_handler(const ke_msg_id_t msgid, const struct rxu_mgt_ind *param, const ke_task_id_t dest_id, const ke_task_id_t src_id)
{
	ASSER_ERR(FALSE);
	return -1;
}
#endf 0 //TODO EXISTS ALEADY
