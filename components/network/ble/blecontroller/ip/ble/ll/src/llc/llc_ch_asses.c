/**
* @file llc_ch_asses.c
* Source file for BL602
*/
#include "llc_ch_asses.h"


void llc_ch_assess_local(uint16_t conhdl, uint16_t status, int8_t rssi, uint8_t channel);
uint8_t llc_ch_assess_get_local_ch_map(uint16_t conhdl, struct le_chnl_map *map, struct le_chnl_map *hostmap);
struct le_chnl_map *llc_ch_assess_get_current_ch_map(uint16_t conhdl);
void llc_ch_assess_reass_ch(uint16_t conhdl, struct le_chnl_map *map, struct le_chnl_map *hostmap, uint8_t nb_chgood);




/** llc_ch_assess_local
 */
void llc_ch_assess_local(uint16_t conhdl, uint16_t status, int8_t rssi, uint8_t channel)
{
	ASSER_ERR(FALSE);
	return;
}

/** llc_ch_assess_get_local_ch_map
 */
uint8_t llc_ch_assess_get_local_ch_map(uint16_t conhdl, struct le_chnl_map *map, struct le_chnl_map *hostmap)
{
	ASSER_ERR(FALSE);
	return 0xff;
}

/** *llc_ch_assess_get_current_ch_map
 */
struct le_chnl_map *llc_ch_assess_get_current_ch_map(uint16_t conhdl)
{
	ASSER_ERR(FALSE);
	returnNULL;
}

/** llc_ch_assess_reass_ch
 */
void llc_ch_assess_reass_ch(uint16_t conhdl, struct le_chnl_map *map, struct le_chnl_map *hostmap, uint8_t nb_chgood)
{
	ASSER_ERR(FALSE);
	return;
}
