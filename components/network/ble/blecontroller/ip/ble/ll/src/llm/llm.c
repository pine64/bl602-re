/**
* @file llm.c
* Source file for BL602
*/
#include "llm.h"


struct llm_le_env_tag llm_le_env;
static const struct bd_addr llm_dflt_bdaddr;
const struct supp_cmds llm_local_cmds;
uint8_t llm_local_supp_feats[3];
const struct le_features llm_local_le_feats;
const struct le_states llm_local_le_states;
const struct data_len_ext llm_local_data_len_values;
static const struct ke_task_desc TASK_DESC_LLM;

static void llm_wlpub_addr_set(uint16_t elem_index, const struct bd_addr *bdaddr);
static void llm_wlpriv_addr_set(uint16_t elem_index, const struct bd_addr *bdaddr);
void llm_init(bool reset);
void llm_ble_ready(void);
void llm_con_req_ind(uint8_t rx_hdl, uint16_t status);
void llm_le_adv_report_ind(uint8_t rx_hdl);
void llm_con_req_tx_cfm(uint8_t rx_hdl);
void llm_common_cmd_complete_send(uint16_t opcode, uint8_t status);
void llm_common_cmd_status_send(uint16_t opcode, uint8_t status);
uint8_t llm_test_mode_start_tx(const struct hci_le_tx_test_cmd *param);
uint8_t llm_test_mode_start_rx(const struct hci_le_rx_test_cmd *param);
uint8_t llm_set_adv_param(const struct hci_le_set_adv_param_cmd *param);
uint8_t llm_set_adv_en(const struct hci_le_set_adv_en_cmd *param);
uint8_t llm_set_adv_data(const struct hci_le_set_adv_data_cmd *param);
uint8_t llm_set_scan_rsp_data(const struct hci_le_set_scan_rsp_data_cmd *param);
uint8_t llm_set_scan_param(const struct hci_le_set_scan_param_cmd *param);
uint8_t llm_set_scan_en(const struct hci_le_set_scan_en_cmd *param);
void llm_wl_clr(void);
void llm_wl_dev_add(struct bd_addr *bd_addr, uint8_t bd_addr_type);
void llm_wl_dev_rem(struct bd_addr *bd_addr, uint8_t bd_addr_type);
uint8_t llm_wl_dev_add_hdl(struct bd_addr *bd_addr, uint8_t bd_addr_type);
uint8_t llm_wl_dev_rem_hdl(struct bd_addr *bd_addr, uint8_t bd_addr_type);
uint8_t llm_create_con(const struct hci_le_create_con_cmd *param);
void llm_encryption_done(void);
void llm_encryption_start(const struct llm_enc_req *param);




/** llm_init
 */
void llm_init(bool reset)
{
	ASSER_ERR(FALSE);
	return;
}

/** llm_ble_ready
 */
void llm_ble_ready(void)
{
	ASSER_ERR(FALSE);
	return;
}

/** llm_con_req_ind
 */
void llm_con_req_ind(uint8_t rx_hdl, uint16_t status)
{
	ASSER_ERR(FALSE);
	return;
}

/** llm_le_adv_report_ind
 */
void llm_le_adv_report_ind(uint8_t rx_hdl)
{
	ASSER_ERR(FALSE);
	return;
}

/** llm_con_req_tx_cfm
 */
void llm_con_req_tx_cfm(uint8_t rx_hdl)
{
	ASSER_ERR(FALSE);
	return;
}

/** llm_common_cmd_complete_send
 */
void llm_common_cmd_complete_send(uint16_t opcode, uint8_t status)
{
	ASSER_ERR(FALSE);
	return;
}

/** llm_common_cmd_status_send
 */
void llm_common_cmd_status_send(uint16_t opcode, uint8_t status)
{
	ASSER_ERR(FALSE);
	return;
}

/** llm_test_mode_start_tx
 */
uint8_t llm_test_mode_start_tx(const struct hci_le_tx_test_cmd *param)
{
	ASSER_ERR(FALSE);
	return 0xff;
}

/** llm_test_mode_start_rx
 */
uint8_t llm_test_mode_start_rx(const struct hci_le_rx_test_cmd *param)
{
	ASSER_ERR(FALSE);
	return 0xff;
}

/** llm_set_adv_param
 */
uint8_t llm_set_adv_param(const struct hci_le_set_adv_param_cmd *param)
{
	ASSER_ERR(FALSE);
	return 0xff;
}

/** llm_set_adv_en
 */
uint8_t llm_set_adv_en(const struct hci_le_set_adv_en_cmd *param)
{
	ASSER_ERR(FALSE);
	return 0xff;
}

/** llm_set_adv_data
 */
uint8_t llm_set_adv_data(const struct hci_le_set_adv_data_cmd *param)
{
	ASSER_ERR(FALSE);
	return 0xff;
}

/** llm_set_scan_rsp_data
 */
uint8_t llm_set_scan_rsp_data(const struct hci_le_set_scan_rsp_data_cmd *param)
{
	ASSER_ERR(FALSE);
	return 0xff;
}

/** llm_set_scan_param
 */
uint8_t llm_set_scan_param(const struct hci_le_set_scan_param_cmd *param)
{
	ASSER_ERR(FALSE);
	return 0xff;
}

/** llm_set_scan_en
 */
uint8_t llm_set_scan_en(const struct hci_le_set_scan_en_cmd *param)
{
	ASSER_ERR(FALSE);
	return 0xff;
}

/** llm_wl_clr
 */
void llm_wl_clr(void)
{
	ASSER_ERR(FALSE);
	return;
}

/** llm_wl_dev_add
 */
void llm_wl_dev_add(struct bd_addr *bd_addr, uint8_t bd_addr_type)
{
	ASSER_ERR(FALSE);
	return;
}

/** llm_wl_dev_rem
 */
void llm_wl_dev_rem(struct bd_addr *bd_addr, uint8_t bd_addr_type)
{
	ASSER_ERR(FALSE);
	return;
}

/** llm_wl_dev_add_hdl
 */
uint8_t llm_wl_dev_add_hdl(struct bd_addr *bd_addr, uint8_t bd_addr_type)
{
	ASSER_ERR(FALSE);
	return 0xff;
}

/** llm_wl_dev_rem_hdl
 */
uint8_t llm_wl_dev_rem_hdl(struct bd_addr *bd_addr, uint8_t bd_addr_type)
{
	ASSER_ERR(FALSE);
	return 0xff;
}

/** llm_create_con
 */
uint8_t llm_create_con(const struct hci_le_create_con_cmd *param)
{
	ASSER_ERR(FALSE);
	return 0xff;
}

/** llm_encryption_done
 */
void llm_encryption_done(void)
{
	ASSER_ERR(FALSE);
	return;
}

/** llm_encryption_start
 */
void llm_encryption_start(const struct llm_enc_req *param)
{
	ASSER_ERR(FALSE);
	return;
}

/** llm_wlpub_addr_set
 */
static void llm_wlpub_addr_set(uint16_t elem_index, const struct bd_addr *bdaddr)
{
	ASSER_ERR(FALSE);
	return;
}

/** llm_wlpriv_addr_set
 */
static void llm_wlpriv_addr_set(uint16_t elem_index, const struct bd_addr *bdaddr)
{
	ASSER_ERR(FALSE);
	return;
}
