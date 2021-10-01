#include "llc.h"


struct llc_env_tag *llc_env[2];
static const struct ke_task_desc TASK_DESC_LLC;


/** llc_init
 */
void llc_init(void)
{
	__builtin_trap();
}

/** llc_reset
 */
void llc_reset(void)
{
	__builtin_trap();
}

/** llc_start
 */
void llc_start(struct llc_create_con_req_ind *param, struct ea_elt_tag *elt)
{
	__builtin_trap();
}

/** llc_stop
 */
void llc_stop(uint16_t conhdl)
{
	__builtin_trap();
}

/** llc_discon_event_complete_send
 */
void llc_discon_event_complete_send(ke_task_id_t src_id, uint8_t status, uint8_t conhdl, uint8_t reason)
{
	__builtin_trap();
}

/** llc_le_con_cmp_evt_send
 */
void llc_le_con_cmp_evt_send(uint8_t status, uint16_t conhdl, struct llc_create_con_req_ind *param)
{
	__builtin_trap();
}

/** llc_le_ch_sel_algo_evt_send
 */
void llc_le_ch_sel_algo_evt_send(uint8_t chSel, uint16_t conhdl, struct llc_create_con_req_ind *param)
{
	__builtin_trap();
}

/** llc_con_update_complete_send
 */
void llc_con_update_complete_send(uint8_t status, uint16_t conhdl, struct lld_evt_tag *evt)
{
	__builtin_trap();
}

/** llc_ltk_req_send
 */
void llc_ltk_req_send(uint16_t conhdl, const struct llcp_enc_req *param)
{
	__builtin_trap();
}

/** llc_feats_rd_event_send
 */
void llc_feats_rd_event_send(uint8_t status, uint16_t conhdl, const struct le_features *feats)
{
	__builtin_trap();
}

/** llc_version_rd_event_send
 */
void llc_version_rd_event_send(uint8_t status, uint16_t conhdl)
{
	__builtin_trap();
}

/** llc_common_cmd_complete_send
 */
void llc_common_cmd_complete_send(uint16_t opcode, uint8_t status, uint16_t conhdl)
{
	__builtin_trap();
}

/** llc_common_cmd_status_send
 */
void llc_common_cmd_status_send(uint16_t opcode, uint8_t status, uint16_t conhdl)
{
	__builtin_trap();
}

/** llc_common_flush_occurred_send
 */
void llc_common_flush_occurred_send(uint16_t conhdl)
{
	__builtin_trap();
}

/** llc_common_enc_key_ref_comp_evt_send
 */
void llc_common_enc_key_ref_comp_evt_send(uint16_t conhdl, uint8_t status)
{
	__builtin_trap();
}

/** llc_common_enc_change_evt_send
 */
void llc_common_enc_change_evt_send(uint16_t conhdl, uint8_t enc_status, uint8_t status)
{
	__builtin_trap();
}

/** llc_common_nb_of_pkt_comp_evt_send
 */
void llc_common_nb_of_pkt_comp_evt_send(uint16_t conhdl, uint8_t nb_of_pkt)
{
	__builtin_trap();
}

/** llc_con_update_ind
 */
void llc_con_update_ind(uint16_t conhdl, struct ea_elt_tag *elt_new)
{
	__builtin_trap();
}

/** llc_lsto_con_update
 */
void llc_lsto_con_update(uint16_t conhdl)
{
	__builtin_trap();
}

/** llc_map_update_ind
 */
void llc_map_update_ind(uint16_t conhdl)
{
	__builtin_trap();
}

/** llc_con_update_finished
 */
void llc_con_update_finished(uint16_t conhdl)
{
	__builtin_trap();
}

/** llc_map_update_finished
 */
void llc_map_update_finished(uint16_t conhdl)
{
	__builtin_trap();
}
