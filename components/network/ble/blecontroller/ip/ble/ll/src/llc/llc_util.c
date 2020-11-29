/**
* @file llc_util.c
* Source file for BL602
*/
#include "llc_util.h"


static void llc_check_trafic_paused(uint8_t conhdl);
uint8_t llc_util_get_free_conhdl(uint16_t *conhdl);
uint8_t llc_util_get_nb_active_link(void);
void llc_util_dicon_procedure(uint16_t conhdl, uint8_t reason);
void llc_util_update_channel_map(uint16_t conhdl, struct le_chnl_map *map);
void llc_util_set_llcp_discard_enable(uint16_t conhdl, bool enable);
void llc_util_set_auth_payl_to_margin(struct lld_evt_tag *evt);
void llc_util_clear_operation_ptr(uint16_t conhdl, uint8_t op_type);
void llc_util_bw_mgt(uint16_t conhdl);
void llc_end_evt_defer(uint16_t conhdl);
void llc_pdu_llcp_tx_ack_defer(uint16_t conhdl, uint8_t opcode);
void llc_pdu_acl_tx_ack_defer(uint16_t conhdl, uint8_t tx_cnt);
void llc_pdu_defer(uint16_t conhdl, uint16_t status, uint8_t rssi, uint8_t channel, uint8_t length);




/** llc_util_get_free_conhdl
 */
uint8_t llc_util_get_free_conhdl(uint16_t *conhdl)
{
	ASSER_ERR(FALSE);
	return 0xff;
}

/** llc_util_get_nb_active_link
 */
uint8_t llc_util_get_nb_active_link(void)
{
	ASSER_ERR(FALSE);
	return 0xff;
}

/** llc_util_dicon_procedure
 */
void llc_util_dicon_procedure(uint16_t conhdl, uint8_t reason)
{
	ASSER_ERR(FALSE);
	return;
}

/** llc_util_update_channel_map
 */
void llc_util_update_channel_map(uint16_t conhdl, struct le_chnl_map *map)
{
	ASSER_ERR(FALSE);
	return;
}

/** llc_util_set_llcp_discard_enable
 */
void llc_util_set_llcp_discard_enable(uint16_t conhdl, bool enable)
{
	ASSER_ERR(FALSE);
	return;
}

/** llc_util_set_auth_payl_to_margin
 */
void llc_util_set_auth_payl_to_margin(struct lld_evt_tag *evt)
{
	ASSER_ERR(FALSE);
	return;
}

/** llc_util_clear_operation_ptr
 */
void llc_util_clear_operation_ptr(uint16_t conhdl, uint8_t op_type)
{
	ASSER_ERR(FALSE);
	return;
}

/** llc_util_bw_mgt
 */
void llc_util_bw_mgt(uint16_t conhdl)
{
	ASSER_ERR(FALSE);
	return;
}

/** llc_end_evt_defer
 */
void llc_end_evt_defer(uint16_t conhdl)
{
	ASSER_ERR(FALSE);
	return;
}

/** llc_pdu_llcp_tx_ack_defer
 */
void llc_pdu_llcp_tx_ack_defer(uint16_t conhdl, uint8_t opcode)
{
	ASSER_ERR(FALSE);
	return;
}

/** llc_pdu_acl_tx_ack_defer
 */
void llc_pdu_acl_tx_ack_defer(uint16_t conhdl, uint8_t tx_cnt)
{
	ASSER_ERR(FALSE);
	return;
}

/** llc_pdu_defer
 */
void llc_pdu_defer(uint16_t conhdl, uint16_t status, uint8_t rssi, uint8_t channel, uint8_t length)
{
	ASSER_ERR(FALSE);
	return;
}

/** llc_check_trafic_paused
 */
static void llc_check_trafic_paused(uint8_t conhdl)
{
	ASSER_ERR(FALSE);
	return;
}
