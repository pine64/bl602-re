#include "lld.h"


static const struct ke_task_desc TASK_DESC_LLD;

uint8_t orig_rxsyncwinszdef;
uint8_t orig_rfrxtmda;

struct ea_elt_tag *lld_test_mode_rx(uint8_t rx_freq);
struct ea_elt_tag *lld_enh_test_mode_rx(uint8_t rx_freq, uint8_t rx_phy, uint8_t modul_index);
void lld_test_stop(struct ea_elt_tag *elt);




/** lld_init
 */
void lld_init(bool reset)
{
	__builtin_trap();
}

/** lld_core_reset
 */
void lld_core_reset(void)
{
	__builtin_trap();
}

/** *lld_adv_start
 */
struct ea_elt_tag *lld_adv_start(struct advertising_pdu_params *adv_par, struct em_desc_node *adv_pdu, struct em_desc_node *scan_rsp_pdu, uint8_t adv_pwr)
{
	__builtin_trap();
}

/** lld_adv_stop
 */
void lld_adv_stop(struct ea_elt_tag *elt)
{
	__builtin_trap();
}

/** *lld_scan_start
 */
struct ea_elt_tag *lld_scan_start(const struct scanning_pdu_params *scan_par, struct em_desc_node *scan_req_pdu)
{
	__builtin_trap();
}

/** lld_scan_stop
 */
void lld_scan_stop(struct ea_elt_tag *elt)
{
	__builtin_trap();
}

/** *lld_con_start
 */
struct ea_elt_tag *lld_con_start(const struct hci_le_create_con_cmd *con_par, struct em_desc_node *con_req_pdu, uint16_t conhdl)
{
	__builtin_trap();
}

/** *lld_move_to_master
 */
struct ea_elt_tag *lld_move_to_master(struct ea_elt_tag *elt, uint16_t conhdl, const struct llc_create_con_req_ind *param, uint8_t rx_hdl)
{
	__builtin_trap();
}

/** lld_con_update_req
 */
void lld_con_update_req(struct ea_elt_tag *elt_old, struct llc_con_upd_req_ind *param, struct llcp_con_upd_ind *param_pdu)
{
	__builtin_trap();
}

/** lld_con_update_after_param_req
 */
uint8_t lld_con_update_after_param_req(uint16_t conhdl, struct ea_elt_tag *elt_old, struct llc_con_upd_req_ind *param, struct llcp_con_upd_ind *param_pdu, bool bypass_offchk)
{
	__builtin_trap();
}

/** lld_con_param_rsp
 */
uint8_t lld_con_param_rsp(uint16_t conhdl, struct ea_elt_tag *elt, struct llc_con_upd_req_ind *param)
{
	__builtin_trap();
}

/** lld_con_param_req
 */
void lld_con_param_req(uint16_t conhdl, struct ea_elt_tag *elt, struct llc_con_upd_req_ind *param)
{
	__builtin_trap();
}

/** lld_con_stop
 */
void lld_con_stop(struct ea_elt_tag *elt)
{
	__builtin_trap();
}

/** lld_get_mode
 */
uint8_t lld_get_mode(uint16_t conhdl)
{
	__builtin_trap();
}

/** *lld_move_to_slave
 */
struct ea_elt_tag *lld_move_to_slave(struct llc_create_con_req_ind *con_par, struct llm_pdu_con_req_rx *con_req_pdu, struct ea_elt_tag *elt_adv, uint16_t conhdl, uint8_t rx_hdl)
{
	__builtin_trap();
}

/** lld_ch_map_ind
 */
void lld_ch_map_ind(struct ea_elt_tag *elt, uint16_t instant)
{
	__builtin_trap();
}

/** lld_con_update_ind
 */
void lld_con_update_ind(struct ea_elt_tag *elt_old, const struct llcp_con_upd_ind *param_pdu)
{
	__builtin_trap();
}

/** lld_crypt_isr
 */
void lld_crypt_isr(void)
{
	__builtin_trap();
}

/** *lld_test_mode_tx
 */
struct ea_elt_tag *lld_test_mode_tx(struct em_desc_node *txdesc, uint8_t tx_freq, uint8_t tx_phy)
{
	__builtin_trap();
}

/** *lld_test_mode_rx
 */
struct ea_elt_tag *lld_test_mode_rx(uint8_t rx_freq)
{
	__builtin_trap();
}

/** *lld_enh_test_mode_rx
 */
struct ea_elt_tag *lld_enh_test_mode_rx(uint8_t rx_freq, uint8_t rx_phy, uint8_t modul_index)
{
	__builtin_trap();
}

/** lld_test_stop
 */
void lld_test_stop(struct ea_elt_tag *elt)
{
	__builtin_trap();
}
