/**
* @file llc.c
* Source file for BL602
*/
#include "llc.h"


struct llc_env_tag *llc_env[2];
static const struct ke_task_desc TASK_DESC_LLC;

void llc_init(void);
void llc_reset(void);
void llc_start(struct llc_create_con_req_ind *param, struct ea_elt_tag *elt);
void llc_stop(uint16_t conhdl);
void llc_discon_event_complete_send(ke_task_id_t src_id, uint8_t status, uint8_t conhdl, uint8_t reason);
void llc_le_con_cmp_evt_send(uint8_t status, uint16_t conhdl, struct llc_create_con_req_ind *param);
void llc_le_ch_sel_algo_evt_send(uint8_t chSel, uint16_t conhdl, struct llc_create_con_req_ind *param);
void llc_con_update_complete_send(uint8_t status, uint16_t conhdl, struct lld_evt_tag *evt);
void llc_ltk_req_send(uint16_t conhdl, const struct llcp_enc_req *param);
void llc_feats_rd_event_send(uint8_t status, uint16_t conhdl, const struct le_features *feats);
void llc_version_rd_event_send(uint8_t status, uint16_t conhdl);
void llc_common_cmd_complete_send(uint16_t opcode, uint8_t status, uint16_t conhdl);
void llc_common_cmd_status_send(uint16_t opcode, uint8_t status, uint16_t conhdl);
void llc_common_flush_occurred_send(uint16_t conhdl);
void llc_common_enc_key_ref_comp_evt_send(uint16_t conhdl, uint8_t status);
void llc_common_enc_change_evt_send(uint16_t conhdl, uint8_t enc_status, uint8_t status);
void llc_common_nb_of_pkt_comp_evt_send(uint16_t conhdl, uint8_t nb_of_pkt);
void llc_con_update_ind(uint16_t conhdl, struct ea_elt_tag *elt_new);
void llc_lsto_con_update(uint16_t conhdl);
void llc_map_update_ind(uint16_t conhdl);
void llc_con_update_finished(uint16_t conhdl);
void llc_map_update_finished(uint16_t conhdl);




/** llc_init
 */
void llc_init(void)
{
	ASSER_ERR(FALSE);
	return;
}

/** llc_reset
 */
void llc_reset(void)
{
	ASSER_ERR(FALSE);
	return;
}

/** llc_start
 */
void llc_start(struct llc_create_con_req_ind *param, struct ea_elt_tag *elt)
{
	ASSER_ERR(FALSE);
	return;
}

/** llc_stop
 */
void llc_stop(uint16_t conhdl)
{
	ASSER_ERR(FALSE);
	return;
}

/** llc_discon_event_complete_send
 */
void llc_discon_event_complete_send(ke_task_id_t src_id, uint8_t status, uint8_t conhdl, uint8_t reason)
{
	ASSER_ERR(FALSE);
	return;
}

/** llc_le_con_cmp_evt_send
 */
void llc_le_con_cmp_evt_send(uint8_t status, uint16_t conhdl, struct llc_create_con_req_ind *param)
{
	ASSER_ERR(FALSE);
	return;
}

/** llc_le_ch_sel_algo_evt_send
 */
void llc_le_ch_sel_algo_evt_send(uint8_t chSel, uint16_t conhdl, struct llc_create_con_req_ind *param)
{
	ASSER_ERR(FALSE);
	return;
}

/** llc_con_update_complete_send
 */
void llc_con_update_complete_send(uint8_t status, uint16_t conhdl, struct lld_evt_tag *evt)
{
	ASSER_ERR(FALSE);
	return;
}

/** llc_ltk_req_send
 */
void llc_ltk_req_send(uint16_t conhdl, const struct llcp_enc_req *param)
{
	ASSER_ERR(FALSE);
	return;
}

/** llc_feats_rd_event_send
 */
void llc_feats_rd_event_send(uint8_t status, uint16_t conhdl, const struct le_features *feats)
{
	ASSER_ERR(FALSE);
	return;
}

/** llc_version_rd_event_send
 */
void llc_version_rd_event_send(uint8_t status, uint16_t conhdl)
{
	ASSER_ERR(FALSE);
	return;
}

/** llc_common_cmd_complete_send
 */
void llc_common_cmd_complete_send(uint16_t opcode, uint8_t status, uint16_t conhdl)
{
	ASSER_ERR(FALSE);
	return;
}

/** llc_common_cmd_status_send
 */
void llc_common_cmd_status_send(uint16_t opcode, uint8_t status, uint16_t conhdl)
{
	ASSER_ERR(FALSE);
	return;
}

/** llc_common_flush_occurred_send
 */
void llc_common_flush_occurred_send(uint16_t conhdl)
{
	ASSER_ERR(FALSE);
	return;
}

/** llc_common_enc_key_ref_comp_evt_send
 */
void llc_common_enc_key_ref_comp_evt_send(uint16_t conhdl, uint8_t status)
{
	ASSER_ERR(FALSE);
	return;
}

/** llc_common_enc_change_evt_send
 */
void llc_common_enc_change_evt_send(uint16_t conhdl, uint8_t enc_status, uint8_t status)
{
	ASSER_ERR(FALSE);
	return;
}

/** llc_common_nb_of_pkt_comp_evt_send
 */
void llc_common_nb_of_pkt_comp_evt_send(uint16_t conhdl, uint8_t nb_of_pkt)
{
	ASSER_ERR(FALSE);
	return;
}

/** llc_con_update_ind
 */
void llc_con_update_ind(uint16_t conhdl, struct ea_elt_tag *elt_new)
{
	ASSER_ERR(FALSE);
	return;
}

/** llc_lsto_con_update
 */
void llc_lsto_con_update(uint16_t conhdl)
{
	ASSER_ERR(FALSE);
	return;
}

/** llc_map_update_ind
 */
void llc_map_update_ind(uint16_t conhdl)
{
	ASSER_ERR(FALSE);
	return;
}

/** llc_con_update_finished
 */
void llc_con_update_finished(uint16_t conhdl)
{
	ASSER_ERR(FALSE);
	return;
}

/** llc_map_update_finished
 */
void llc_map_update_finished(uint16_t conhdl)
{
	ASSER_ERR(FALSE);
	return;
}
