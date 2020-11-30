/**
* @file lld_util.c
* Source file for BL602
*/
#include "lld_util.h"


uint16_t lld_util_instant_get(void *event, uint8_t action);
void lld_util_get_bd_address(struct bd_addr *bd_addr);
void lld_util_set_bd_address(struct bd_addr *bd_addr, uint8_t type);
uint8_t lld_util_freq2chnl(uint8_t freq);
uint16_t lld_util_get_local_offset(uint16_t PeerOffset, uint16_t Interval, uint32_t AnchorPoint);
uint16_t lld_util_get_peer_offset(uint16_t LocalOffset, uint16_t Interval, uint32_t AnchorPoint);
void lld_util_connection_param_set(struct ea_elt_tag *elt, struct ea_param_output *param);
void lld_util_dle_set_cs_fields(uint16_t conhdl);
void lld_util_anchor_point_move(struct ea_elt_tag *elt_connect);
void lld_util_flush_list(struct co_list *list);
bool lld_util_instant_ongoing(struct ea_elt_tag *elt);
void lld_util_compute_ce_max(struct ea_elt_tag *elt, uint16_t tx_time, uint16_t rx_time);
bool lld_util_elt_programmed(struct ea_elt_tag *elt);
void lld_util_priority_set(struct ea_elt_tag *elt, uint8_t priority_index);
void lld_util_priority_update(struct ea_elt_tag *elt, uint8_t value);
uint8_t lld_util_get_tx_pkt_cnt(struct ea_elt_tag *elt);
void lld_util_eff_tx_time_set(struct ea_elt_tag *elt, uint16_t max_tx_time, uint16_t max_tx_size);




/** lld_util_instant_get
 */
uint16_t lld_util_instant_get(void *event, uint8_t action)
{
	ASSER_ERR(FALSE);
	return 0xffff;
}

/** lld_util_get_bd_address
 */
void lld_util_get_bd_address(struct bd_addr *bd_addr)
{
	ASSER_ERR(FALSE);
	return;
}

/** lld_util_set_bd_address
 */
void lld_util_set_bd_address(struct bd_addr *bd_addr, uint8_t type)
{
	ASSER_ERR(FALSE);
	return;
}

/** lld_util_freq2chnl
 */
uint8_t lld_util_freq2chnl(uint8_t freq)
{
	ASSER_ERR(FALSE);
	return 0xff;
}

/** lld_util_get_local_offset
 */
uint16_t lld_util_get_local_offset(uint16_t PeerOffset, uint16_t Interval, uint32_t AnchorPoint)
{
	ASSER_ERR(FALSE);
	return 0xffff;
}

/** lld_util_get_peer_offset
 */
uint16_t lld_util_get_peer_offset(uint16_t LocalOffset, uint16_t Interval, uint32_t AnchorPoint)
{
	ASSER_ERR(FALSE);
	return 0xffff;
}

/** lld_util_connection_param_set
 */
void lld_util_connection_param_set(struct ea_elt_tag *elt, struct ea_param_output *param)
{
	ASSER_ERR(FALSE);
	return;
}

/** lld_util_dle_set_cs_fields
 */
void lld_util_dle_set_cs_fields(uint16_t conhdl)
{
	ASSER_ERR(FALSE);
	return;
}

/** lld_util_anchor_point_move
 */
void lld_util_anchor_point_move(struct ea_elt_tag *elt_connect)
{
	ASSER_ERR(FALSE);
	return;
}

/** lld_util_flush_list
 */
void lld_util_flush_list(struct co_list *list)
{
	ASSER_ERR(FALSE);
	return;
}

/** lld_util_instant_ongoing
 */
bool lld_util_instant_ongoing(struct ea_elt_tag *elt)
{
	ASSER_ERR(FALSE);
	return false;
}

/** lld_util_compute_ce_max
 */
void lld_util_compute_ce_max(struct ea_elt_tag *elt, uint16_t tx_time, uint16_t rx_time)
{
	ASSER_ERR(FALSE);
	return;
}

/** lld_util_elt_programmed
 */
bool lld_util_elt_programmed(struct ea_elt_tag *elt)
{
	ASSER_ERR(FALSE);
	return false;
}

/** lld_util_priority_set
 */
void lld_util_priority_set(struct ea_elt_tag *elt, uint8_t priority_index)
{
	ASSER_ERR(FALSE);
	return;
}

/** lld_util_priority_update
 */
void lld_util_priority_update(struct ea_elt_tag *elt, uint8_t value)
{
	ASSER_ERR(FALSE);
	return;
}

/** lld_util_get_tx_pkt_cnt
 */
uint8_t lld_util_get_tx_pkt_cnt(struct ea_elt_tag *elt)
{
	ASSER_ERR(FALSE);
	return 0xff;
}

/** lld_util_eff_tx_time_set
 */
void lld_util_eff_tx_time_set(struct ea_elt_tag *elt, uint16_t max_tx_time, uint16_t max_tx_size)
{
	ASSER_ERR(FALSE);
	return;
}
