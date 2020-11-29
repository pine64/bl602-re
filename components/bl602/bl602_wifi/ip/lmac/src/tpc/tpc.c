
void bl_tpc_power_table_get(int8_t * power_table_config);
void bl_tpc_update_power_rate_11b(int8_t * power_rate_table);
void bl_tpc_update_power_rate_11g(int8_t * power_rate_table);
void bl_tpc_update_power_rate_11n(int8_t * power_rate_table);
void bl_tpc_update_power_table(int8_t * power_table);
void bl_tpc_update_power_table_channel_offset(int8_t * power_table);
void bl_tpc_update_power_table_rate(int8_t * power_table);
uint8_t tpc_get_vif_tx_power(vif_info_tag * vif);
uint8_t tpc_get_vif_tx_power_vs_rate(uint32_t rate_config);
void tpc_update_frame_tx_power(vif_info_tag * vif, txl_frame_desc_tag * frame);
void tpc_update_tx_power(int8_t pwr);
void tpc_update_vif_tx_power(vif_info_tag * vif, int8_t * pwr, uint8_t * idx);
#if 0 //TODO EXISTS ALEADY
/**
* @file tpc.c
* Source file for BL602
*/
#include "tpc.h"


void bl_tpc_update_power_table(int8_t *power_table);
void bl_tpc_power_table_get(int8_t *power_table_config);
void bl_tpc_update_power_table_rate(int8_t *power_table);
void bl_tpc_update_power_table_channel_offset(int8_t *power_table);
void bl_tpc_update_power_rate_11b(int8_t *power_rate_table);
void bl_tpc_update_power_rate_11g(int8_t *power_rate_table);
void bl_tpc_update_power_rate_11n(int8_t *power_rate_table);
void tpc_update_tx_power(int8_t pwr);
uint8_t tpc_get_vif_tx_power(struct vif_info_tag *vif);
void tpc_update_vif_tx_power(struct vif_info_tag *vif, int8_t *pwr, uint8_t *idx);
void tpc_update_frame_tx_power(struct vif_info_tag *vif, struct txl_frame_desc_tag *frame);
uint8_t tpc_get_vif_tx_power_vs_rate(uint32_t rate_config);




/** bl_tpc_update_power_table
 */
void bl_tpc_update_power_table(int8_t *power_table)
{
	ASSER_ERR(FALSE);
	return;
}

/** bl_tpc_power_table_get
 */
void bl_tpc_power_table_get(int8_t *power_table_config)
{
	ASSER_ERR(FALSE);
	return;
}

/** bl_tpc_update_power_table_rate
 */
void bl_tpc_update_power_table_rate(int8_t *power_table)
{
	ASSER_ERR(FALSE);
	return;
}

/** bl_tpc_update_power_table_channel_offset
 */
void bl_tpc_update_power_table_channel_offset(int8_t *power_table)
{
	ASSER_ERR(FALSE);
	return;
}

/** bl_tpc_update_power_rate_11b
 */
void bl_tpc_update_power_rate_11b(int8_t *power_rate_table)
{
	ASSER_ERR(FALSE);
	return;
}

/** bl_tpc_update_power_rate_11g
 */
void bl_tpc_update_power_rate_11g(int8_t *power_rate_table)
{
	ASSER_ERR(FALSE);
	return;
}

/** bl_tpc_update_power_rate_11n
 */
void bl_tpc_update_power_rate_11n(int8_t *power_rate_table)
{
	ASSER_ERR(FALSE);
	return;
}

/** tpc_update_tx_power
 */
void tpc_update_tx_power(int8_t pwr)
{
	ASSER_ERR(FALSE);
	return;
}

/** tpc_get_vif_tx_power
 */
uint8_t tpc_get_vif_tx_power(struct vif_info_tag *vif)
{
	ASSER_ERR(FALSE);
	return 0xff;
}

/** tpc_update_vif_tx_power
 */
void tpc_update_vif_tx_power(struct vif_info_tag *vif, int8_t *pwr, uint8_t *idx)
{
	ASSER_ERR(FALSE);
	return;
}

/** tpc_update_frame_tx_power
 */
void tpc_update_frame_tx_power(struct vif_info_tag *vif, struct txl_frame_desc_tag *frame)
{
	ASSER_ERR(FALSE);
	return;
}

/** tpc_get_vif_tx_power_vs_rate
 */
uint8_t tpc_get_vif_tx_power_vs_rate(uint32_t rate_config)
{
	ASSER_ERR(FALSE);
	return 0xff;
}
#endf 0 //TODO EXISTS ALEADY
