/**
* @file llm_util.c
* Source file for BL602
*/
#include "llm_util.h"


const uint8_t LLM_AA_CT1[3];
const uint8_t LLM_AA_CT2[2];

struct llm_util_cnx_bd_addr_tag {
    struct co_list_hdr hdr;
 // +0
    struct bd_addr dev_addr;
 // +4
    uint16_t conhdl;
 // +10
    uint8_t dev_addr_type;
 // +12
    bool in_wl;
 // +13
};

uint16_t llm_util_bd_addr_wl_position(const struct bd_addr *bd_address, uint8_t bd_addr_type);
bool llm_util_bd_addr_in_wl(const struct bd_addr *bd_address, uint8_t bd_addr_type, bool *in_black_list);
uint8_t llm_util_check_address_validity(struct bd_addr *bd_address, uint8_t addr_type);
uint8_t llm_util_check_map_validity(uint8_t *channel_map, uint8_t nb_octet);
void llm_util_apply_bd_addr(uint8_t addr_type);
void llm_util_set_public_addr(struct bd_addr *bd_addr);
bool llm_util_check_evt_mask(uint8_t event_id);
void llm_util_get_channel_map(struct le_chnl_map *map);
void llm_util_get_supp_features(struct le_features *feats);
void llm_util_adv_data_update(void);
uint8_t llm_util_bl_check(const struct bd_addr *bd_addr_to_add, uint8_t bd_addr_type, uint16_t *conhdl, uint8_t wl_flag_action, bool *in_wl);
uint8_t llm_util_bl_add(struct bd_addr *bd_addr_to_add, uint8_t bd_addr_type, uint16_t conhdl);
uint8_t llm_util_bl_rem(uint16_t conhdl);
void llm_end_evt_defer(void);
bool llm_pdu_defer(uint16_t status, uint8_t rx_hdl, uint8_t tx_cnt);




/** llm_util_bd_addr_wl_position
 */
uint16_t llm_util_bd_addr_wl_position(const struct bd_addr *bd_address, uint8_t bd_addr_type)
{
	ASSER_ERR(FALSE);
	return 0xffff;
}

/** llm_util_bd_addr_in_wl
 */
bool llm_util_bd_addr_in_wl(const struct bd_addr *bd_address, uint8_t bd_addr_type, bool *in_black_list)
{
	ASSER_ERR(FALSE);
	return false;
}

/** llm_util_check_address_validity
 */
uint8_t llm_util_check_address_validity(struct bd_addr *bd_address, uint8_t addr_type)
{
	return co_bdaddr_compare(&co_null_bdaddr) == 0 ? 0 : 0x12;
}

/** llm_util_check_map_validity
 */
uint8_t llm_util_check_map_validity(uint8_t *channel_map, uint8_t nb_octet)
{
	ASSER_ERR(FALSE);
	return 0xff;
}

/** llm_util_apply_bd_addr
 */
void llm_util_apply_bd_addr(uint8_t addr_type)
{
	ASSER_ERR(FALSE);
	return;
}

/** llm_util_set_public_addr
 */
void llm_util_set_public_addr(struct bd_addr *bd_addr)
{
	ASSER_ERR(FALSE);
	return;
}

/** llm_util_check_evt_mask
 */
bool llm_util_check_evt_mask(uint8_t event_id)
{
	ASSER_ERR(FALSE);
	return false;
}

/** llm_util_get_channel_map
 */
void llm_util_get_channel_map(struct le_chnl_map *map)
{
	ASSER_ERR(FALSE);
	return;
}

/** llm_util_get_supp_features
 */
void llm_util_get_supp_features(struct le_features *feats)
{
	ASSER_ERR(FALSE);
	return;
}

/** llm_util_adv_data_update
 */
void llm_util_adv_data_update(void)
{
	if (*_llm_set_scan_rsp_data != 0) {
		llm_set_adv_data(*_llm_set_scan_rsp_data + 0xc);
		ble_ke_msg_free(*_llm_set_scan_rsp_data);
		*_llm_set_scan_rsp_data = 0;
	}
	if (_llm_set_scan_rsp_data[1] != 0) {
		llm_set_scan_rsp_data(_llm_set_scan_rsp_data[1] + 0xc);
		ble_ke_msg_free(_llm_set_scan_rsp_data[1]);
		_llm_set_scan_rsp_data[1] = 0;
	}
}

/** llm_util_bl_check
 */
uint8_t llm_util_bl_check(const struct bd_addr *bd_addr_to_add, uint8_t bd_addr_type, uint16_t *conhdl, uint8_t wl_flag_action, bool *in_wl)
{
	ASSER_ERR(FALSE);
	return 0xff;
}

/** llm_util_bl_add
 */
uint8_t llm_util_bl_add(struct bd_addr *bd_addr_to_add, uint8_t bd_addr_type, uint16_t conhdl)
{
	ASSER_ERR(FALSE);
	return 0xff;
}

/** llm_util_bl_rem
 */
uint8_t llm_util_bl_rem(uint16_t conhdl)
{
	ASSER_ERR(FALSE);
	return 0xff;
}

/** llm_end_evt_defer
 */
void llm_end_evt_defer(void)
{
	ASSER_ERR(FALSE);
	return;
}

/** llm_pdu_defer
 */
bool llm_pdu_defer(uint16_t status, uint8_t rx_hdl, uint8_t tx_cnt)
{
	ASSER_ERR(FALSE);
	return false;
}
