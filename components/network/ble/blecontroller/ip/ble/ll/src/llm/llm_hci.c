#include <stdint.h>

#include <co_hci.h>
#include <ke_msg.h>
#include <ke_task.h>

static int hci_le_set_evt_mask_cmd_handler(const ke_msg_id_t msgid, const struct hci_le_set_evt_mask_cmd *param, const ke_task_id_t dest_id, const ke_task_id_t src_id);
static int hci_le_set_rand_add_cmd_handler(const ke_msg_id_t msgid, const struct hci_le_set_rand_addr_cmd *param, const ke_task_id_t dest_id, const ke_task_id_t src_id);
static int hci_le_set_adv_param_cmd_handler(const ke_msg_id_t msgid, const struct hci_le_set_adv_param_cmd *param, const ke_task_id_t dest_id, const ke_task_id_t src_id);
static int hci_le_rd_trans_pwr_cmd_handler(const ke_msg_id_t msgid, const void *param, const ke_task_id_t dest_id, const ke_task_id_t src_id);

uint16_t g_rf_txpath_compensation_value;
uint16_t g_rf_rxpath_compensation_value;

static int hci_le_rd_rfpath_compensation_cmd_handler(const ke_msg_id_t msgid, const void *param, const ke_task_id_t dest_id, const ke_task_id_t src_id);
static int hci_le_wr_rfpath_compensation_cmd_handler(const ke_msg_id_t msgid, const struct hci_le_wr_rfpath_cps_cmd *param, const ke_task_id_t dest_id, const ke_task_id_t src_id);
static int hci_le_rd_adv_ch_tx_pw_cmd_handler(const ke_msg_id_t msgid, const void *param, const ke_task_id_t dest_id, const ke_task_id_t src_id);
static int hci_le_set_adv_data_cmd_handler(const ke_msg_id_t msgid, const struct hci_le_set_adv_data_cmd *param, const ke_task_id_t dest_id, const ke_task_id_t src_id);
static int hci_le_set_adv_en_cmd_handler(const ke_msg_id_t msgid, const struct hci_le_set_adv_en_cmd *param, const ke_task_id_t dest_id, const ke_task_id_t src_id);
static int hci_le_set_scan_rsp_data_cmd_handler(const ke_msg_id_t msgid, const struct hci_le_set_scan_rsp_data_cmd *param, const ke_task_id_t dest_id, const ke_task_id_t src_id);
static int hci_le_set_scan_param_cmd_handler(const ke_msg_id_t msgid, const struct hci_le_set_scan_param_cmd *param, const ke_task_id_t dest_id, const ke_task_id_t src_id);
static int hci_le_set_scan_en_cmd_handler(const ke_msg_id_t msgid, const struct hci_le_set_scan_en_cmd *param, const ke_task_id_t dest_id, const ke_task_id_t src_id);
static int hci_le_rx_test_cmd_handler(const ke_msg_id_t msgid, const void *param, const ke_task_id_t dest_id, const ke_task_id_t src_id);
static int hci_le_tx_test_cmd_handler(const ke_msg_id_t msgid, const void *param, const ke_task_id_t dest_id, const ke_task_id_t src_id);
static int hci_le_wl_mngt_cmd_handler(const ke_msg_id_t msgid, const void *param, const ke_task_id_t dest_id, const ke_task_id_t src_id);
static int hci_le_create_con_cmd_handler(const ke_msg_id_t msgid, const struct hci_le_create_con_cmd *param, const ke_task_id_t dest_id, const ke_task_id_t src_id);
static int hci_le_create_con_cancel_cmd_handler(const ke_msg_id_t msgid, const void *param, const ke_task_id_t dest_id, const ke_task_id_t src_id);
static int hci_le_set_host_ch_class_cmd_handler(const ke_msg_id_t msgid, const struct hci_le_set_host_ch_class_cmd *param, const ke_task_id_t dest_id, const ke_task_id_t src_id);
static int hci_le_rd_local_supp_feats_cmd_handler(const ke_msg_id_t msgid, const void *param, const ke_task_id_t dest_id, const ke_task_id_t src_id);
static int hci_le_rd_wl_size_cmd_handler(const ke_msg_id_t msgid, const void *param, const ke_task_id_t dest_id, const ke_task_id_t src_id);
static int hci_le_rd_supp_states_cmd_handler(const ke_msg_id_t msgid, const void *param, const ke_task_id_t dest_id, const ke_task_id_t src_id);
static int hci_le_rd_buff_size_cmd_handler(const ke_msg_id_t msgid, const void *param, const ke_task_id_t dest_id, const ke_task_id_t src_id);
static int hci_le_enc_cmd_handler(const ke_msg_id_t msgid, const struct hci_le_enc_cmd *param, const ke_task_id_t dest_id, const ke_task_id_t src_id);
static int hci_le_rand_cmd_handler(const ke_msg_id_t msgid, const void *param, const ke_task_id_t dest_id, const ke_task_id_t src_id);
static int hci_le_test_end_cmd_handler(const ke_msg_id_t msgid, const void *param, const ke_task_id_t dest_id, const ke_task_id_t src_id);
static int hci_reset_cmd_handler(const ke_msg_id_t msgid, const void *param, const ke_task_id_t dest_id, const ke_task_id_t src_id);
static int hci_rd_bd_addr_cmd_handler(const ke_msg_id_t msgid, const void *param, const ke_task_id_t dest_id, const ke_task_id_t src_id);
static int hci_rd_local_ver_info_cmd_handler(const ke_msg_id_t msgid, const void *param, const ke_task_id_t dest_id, const ke_task_id_t src_id);
static int hci_rd_local_supp_cmds_cmd_handler(const ke_msg_id_t msgid, const void *param, const ke_task_id_t dest_id, const ke_task_id_t src_id);
static int hci_rd_local_supp_feats_cmd_handler(const ke_msg_id_t msgid, const void *param, const ke_task_id_t dest_id, const ke_task_id_t src_id);
static int hci_wr_le_host_supp_cmd_handler(const ke_msg_id_t msgid, const void *param, const ke_task_id_t dest_id, const ke_task_id_t src_id);
static int hci_set_evt_mask_cmd_handler(const ke_msg_id_t msgid, const struct hci_set_evt_mask_cmd *param, const ke_task_id_t dest_id, const ke_task_id_t src_id);
static int hci_set_evt_mask_page_2_cmd_handler(const ke_msg_id_t msgid, const struct hci_set_evt_mask_cmd *param, const ke_task_id_t dest_id, const ke_task_id_t src_id);
static int hci_set_ctrl_to_host_flow_ctrl_cmd_handler(const ke_msg_id_t msgid, const struct hci_set_ctrl_to_host_flow_ctrl_cmd *param, const ke_task_id_t dest_id, const ke_task_id_t src_id);
static int hci_host_buf_size_cmd_handler(const ke_msg_id_t msgid, const struct hci_host_buf_size_cmd *param, const ke_task_id_t dest_id, const ke_task_id_t src_id);
static int hci_host_nb_cmp_pkts_cmd_handler(const ke_msg_id_t msgid, const struct hci_host_nb_cmp_pkts_cmd *param, const ke_task_id_t dest_id, const ke_task_id_t src_id);
static int hci_rd_buff_size_cmd_handler(const ke_msg_id_t msgid, const void *param, const ke_task_id_t dest_id, const ke_task_id_t src_id);
static int hci_le_rd_suggted_dft_data_len_cmd_handler(const ke_msg_id_t msgid, const void *param, const ke_task_id_t dest_id, const ke_task_id_t src_id);
static int hci_le_wr_suggted_dft_data_len_cmd_handler(const ke_msg_id_t msgid, const struct hci_le_wr_suggted_dft_data_len_cmd *param, const ke_task_id_t dest_id, const ke_task_id_t src_id);
static int hci_le_rd_max_data_len_cmd_handler(const ke_msg_id_t msgid, const void *param, const ke_task_id_t dest_id, const ke_task_id_t src_id);
static int hci_le_rd_local_p256_public_key_cmd_handler(const ke_msg_id_t msgid, const void *param, const ke_task_id_t dest_id, const ke_task_id_t src_id);
static int hci_le_generate_dhkey_cmd_handler(const ke_msg_id_t msgid, struct hci_le_generate_dh_key_cmd *param, const ke_task_id_t dest_id, const ke_task_id_t src_id);
static int hci_vsc_set_tx_pwr(const ke_msg_id_t msgid, struct hci_vsc_set_tx_pwr_cmd *param, const ke_task_id_t dest_id, const ke_task_id_t src_id);

static const struct ke_msg_handler llm_hci_command_handler_tab[45];

int hci_command_handler(const ke_msg_id_t msgid, const void *param, const ke_task_id_t dest_id, const ke_task_id_t src_id);




/** hci_command_handler
 */
int hci_command_handler(const ke_msg_id_t msgid, const void *param, const ke_task_id_t dest_id, const ke_task_id_t src_id)
{
	__builtin_trap();
}

/** hci_le_set_evt_mask_cmd_handler
 */
static int hci_le_set_evt_mask_cmd_handler(const ke_msg_id_t msgid, const struct hci_le_set_evt_mask_cmd *param, const ke_task_id_t dest_id, const ke_task_id_t src_id)
{
	__builtin_trap();
}

/** hci_le_set_rand_add_cmd_handler
 */
static int hci_le_set_rand_add_cmd_handler(const ke_msg_id_t msgid, const struct hci_le_set_rand_addr_cmd *param, const ke_task_id_t dest_id, const ke_task_id_t src_id)
{
	__builtin_trap();
}

/** hci_le_set_adv_param_cmd_handler
 */
static int hci_le_set_adv_param_cmd_handler(const ke_msg_id_t msgid, const struct hci_le_set_adv_param_cmd *param, const ke_task_id_t dest_id, const ke_task_id_t src_id)
{
	__builtin_trap();
}

/** hci_le_rd_trans_pwr_cmd_handler
 */
static int hci_le_rd_trans_pwr_cmd_handler(const ke_msg_id_t msgid, const void *param, const ke_task_id_t dest_id, const ke_task_id_t src_id)
{
	__builtin_trap();
}

/** hci_le_rd_rfpath_compensation_cmd_handler
 */
static int hci_le_rd_rfpath_compensation_cmd_handler(const ke_msg_id_t msgid, const void *param, const ke_task_id_t dest_id, const ke_task_id_t src_id)
{
	__builtin_trap();
}

/** hci_le_wr_rfpath_compensation_cmd_handler
 */
static int hci_le_wr_rfpath_compensation_cmd_handler(const ke_msg_id_t msgid, const struct hci_le_wr_rfpath_cps_cmd *param, const ke_task_id_t dest_id, const ke_task_id_t src_id)
{
	__builtin_trap();
}

/** hci_le_rd_adv_ch_tx_pw_cmd_handler
 */
static int hci_le_rd_adv_ch_tx_pw_cmd_handler(const ke_msg_id_t msgid, const void *param, const ke_task_id_t dest_id, const ke_task_id_t src_id)
{
	__builtin_trap();
}

/** hci_le_set_adv_data_cmd_handler
 */
static int hci_le_set_adv_data_cmd_handler(const ke_msg_id_t msgid, const struct hci_le_set_adv_data_cmd *param, const ke_task_id_t dest_id, const ke_task_id_t src_id)
{
	__builtin_trap();
}

/** hci_le_set_adv_en_cmd_handler
 */
static int hci_le_set_adv_en_cmd_handler(const ke_msg_id_t msgid, const struct hci_le_set_adv_en_cmd *param, const ke_task_id_t dest_id, const ke_task_id_t src_id)
{
	__builtin_trap();
}

/** hci_le_set_scan_rsp_data_cmd_handler
 */
static int hci_le_set_scan_rsp_data_cmd_handler(const ke_msg_id_t msgid, const struct hci_le_set_scan_rsp_data_cmd *param, const ke_task_id_t dest_id, const ke_task_id_t src_id)
{
	__builtin_trap();
}

/** hci_le_set_scan_param_cmd_handler
 */
static int hci_le_set_scan_param_cmd_handler(const ke_msg_id_t msgid, const struct hci_le_set_scan_param_cmd *param, const ke_task_id_t dest_id, const ke_task_id_t src_id)
{
	__builtin_trap();
}

/** hci_le_set_scan_en_cmd_handler
 */
static int hci_le_set_scan_en_cmd_handler(const ke_msg_id_t msgid, const struct hci_le_set_scan_en_cmd *param, const ke_task_id_t dest_id, const ke_task_id_t src_id)
{
	__builtin_trap();
}

/** hci_le_rx_test_cmd_handler
 */
static int hci_le_rx_test_cmd_handler(const ke_msg_id_t msgid, const void *param, const ke_task_id_t dest_id, const ke_task_id_t src_id)
{
	__builtin_trap();
}

/** hci_le_tx_test_cmd_handler
 */
static int hci_le_tx_test_cmd_handler(const ke_msg_id_t msgid, const void *param, const ke_task_id_t dest_id, const ke_task_id_t src_id)
{
	__builtin_trap();
}

/** hci_le_wl_mngt_cmd_handler
 */
static int hci_le_wl_mngt_cmd_handler(const ke_msg_id_t msgid, const void *param, const ke_task_id_t dest_id, const ke_task_id_t src_id)
{
	__builtin_trap();
}

/** hci_le_create_con_cmd_handler
 */
static int hci_le_create_con_cmd_handler(const ke_msg_id_t msgid, const struct hci_le_create_con_cmd *param, const ke_task_id_t dest_id, const ke_task_id_t src_id)
{
	__builtin_trap();
}

/** hci_le_create_con_cancel_cmd_handler
 */
static int hci_le_create_con_cancel_cmd_handler(const ke_msg_id_t msgid, const void *param, const ke_task_id_t dest_id, const ke_task_id_t src_id)
{
	__builtin_trap();
}

/** hci_le_set_host_ch_class_cmd_handler
 */
static int hci_le_set_host_ch_class_cmd_handler(const ke_msg_id_t msgid, const struct hci_le_set_host_ch_class_cmd *param, const ke_task_id_t dest_id, const ke_task_id_t src_id)
{
	__builtin_trap();
}

/** hci_le_rd_local_supp_feats_cmd_handler
 */
static int hci_le_rd_local_supp_feats_cmd_handler(const ke_msg_id_t msgid, const void *param, const ke_task_id_t dest_id, const ke_task_id_t src_id)
{
	__builtin_trap();
}

/** hci_le_rd_wl_size_cmd_handler
 */
static int hci_le_rd_wl_size_cmd_handler(const ke_msg_id_t msgid, const void *param, const ke_task_id_t dest_id, const ke_task_id_t src_id)
{
	__builtin_trap();
}

/** hci_le_rd_supp_states_cmd_handler
 */
static int hci_le_rd_supp_states_cmd_handler(const ke_msg_id_t msgid, const void *param, const ke_task_id_t dest_id, const ke_task_id_t src_id)
{
	__builtin_trap();
}

/** hci_le_rd_buff_size_cmd_handler
 */
static int hci_le_rd_buff_size_cmd_handler(const ke_msg_id_t msgid, const void *param, const ke_task_id_t dest_id, const ke_task_id_t src_id)
{
	__builtin_trap();
}

/** hci_le_enc_cmd_handler
 */
static int hci_le_enc_cmd_handler(const ke_msg_id_t msgid, const struct hci_le_enc_cmd *param, const ke_task_id_t dest_id, const ke_task_id_t src_id)
{
	__builtin_trap();
}

/** hci_le_rand_cmd_handler
 */
static int hci_le_rand_cmd_handler(const ke_msg_id_t msgid, const void *param, const ke_task_id_t dest_id, const ke_task_id_t src_id)
{
	__builtin_trap();
}

/** hci_le_test_end_cmd_handler
 */
static int hci_le_test_end_cmd_handler(const ke_msg_id_t msgid, const void *param, const ke_task_id_t dest_id, const ke_task_id_t src_id)
{
	__builtin_trap();
}

/** hci_reset_cmd_handler
 */
static int hci_reset_cmd_handler(const ke_msg_id_t msgid, const void *param, const ke_task_id_t dest_id, const ke_task_id_t src_id)
{
	__builtin_trap();
}

/** hci_rd_bd_addr_cmd_handler
 */
static int hci_rd_bd_addr_cmd_handler(const ke_msg_id_t msgid, const void *param, const ke_task_id_t dest_id, const ke_task_id_t src_id)
{
	__builtin_trap();
}

/** hci_rd_local_ver_info_cmd_handler
 */
static int hci_rd_local_ver_info_cmd_handler(const ke_msg_id_t msgid, const void *param, const ke_task_id_t dest_id, const ke_task_id_t src_id)
{
	__builtin_trap();
}

/** hci_rd_local_supp_cmds_cmd_handler
 */
static int hci_rd_local_supp_cmds_cmd_handler(const ke_msg_id_t msgid, const void *param, const ke_task_id_t dest_id, const ke_task_id_t src_id)
{
	__builtin_trap();
}

/** hci_rd_local_supp_feats_cmd_handler
 */
static int hci_rd_local_supp_feats_cmd_handler(const ke_msg_id_t msgid, const void *param, const ke_task_id_t dest_id, const ke_task_id_t src_id)
{
	__builtin_trap();
}

/** hci_wr_le_host_supp_cmd_handler
 */
static int hci_wr_le_host_supp_cmd_handler(const ke_msg_id_t msgid, const void *param, const ke_task_id_t dest_id, const ke_task_id_t src_id)
{
	__builtin_trap();
}

/** hci_set_evt_mask_cmd_handler
 */
static int hci_set_evt_mask_cmd_handler(const ke_msg_id_t msgid, const struct hci_set_evt_mask_cmd *param, const ke_task_id_t dest_id, const ke_task_id_t src_id)
{
	__builtin_trap();
}

/** hci_set_evt_mask_page_2_cmd_handler
 */
static int hci_set_evt_mask_page_2_cmd_handler(const ke_msg_id_t msgid, const struct hci_set_evt_mask_cmd *param, const ke_task_id_t dest_id, const ke_task_id_t src_id)
{
	__builtin_trap();
}

/** hci_set_ctrl_to_host_flow_ctrl_cmd_handler
 */
static int hci_set_ctrl_to_host_flow_ctrl_cmd_handler(const ke_msg_id_t msgid, const struct hci_set_ctrl_to_host_flow_ctrl_cmd *param, const ke_task_id_t dest_id, const ke_task_id_t src_id)
{
	__builtin_trap();
}

/** hci_host_buf_size_cmd_handler
 */
static int hci_host_buf_size_cmd_handler(const ke_msg_id_t msgid, const struct hci_host_buf_size_cmd *param, const ke_task_id_t dest_id, const ke_task_id_t src_id)
{
	__builtin_trap();
}

/** hci_host_nb_cmp_pkts_cmd_handler
 */
static int hci_host_nb_cmp_pkts_cmd_handler(const ke_msg_id_t msgid, const struct hci_host_nb_cmp_pkts_cmd *param, const ke_task_id_t dest_id, const ke_task_id_t src_id)
{
	__builtin_trap();
}

/** hci_rd_buff_size_cmd_handler
 */
static int hci_rd_buff_size_cmd_handler(const ke_msg_id_t msgid, const void *param, const ke_task_id_t dest_id, const ke_task_id_t src_id)
{
	__builtin_trap();
}

/** hci_le_rd_suggted_dft_data_len_cmd_handler
 */
static int hci_le_rd_suggted_dft_data_len_cmd_handler(const ke_msg_id_t msgid, const void *param, const ke_task_id_t dest_id, const ke_task_id_t src_id)
{
	__builtin_trap();
}

/** hci_le_wr_suggted_dft_data_len_cmd_handler
 */
static int hci_le_wr_suggted_dft_data_len_cmd_handler(const ke_msg_id_t msgid, const struct hci_le_wr_suggted_dft_data_len_cmd *param, const ke_task_id_t dest_id, const ke_task_id_t src_id)
{
	__builtin_trap();
}

/** hci_le_rd_max_data_len_cmd_handler
 */
static int hci_le_rd_max_data_len_cmd_handler(const ke_msg_id_t msgid, const void *param, const ke_task_id_t dest_id, const ke_task_id_t src_id)
{
	__builtin_trap();
}

/** hci_le_rd_local_p256_public_key_cmd_handler
 */
static int hci_le_rd_local_p256_public_key_cmd_handler(const ke_msg_id_t msgid, const void *param, const ke_task_id_t dest_id, const ke_task_id_t src_id)
{
	__builtin_trap();
}

/** hci_le_generate_dhkey_cmd_handler
 */
static int hci_le_generate_dhkey_cmd_handler(const ke_msg_id_t msgid, struct hci_le_generate_dh_key_cmd *param, const ke_task_id_t dest_id, const ke_task_id_t src_id)
{
	__builtin_trap();
}

/** hci_vsc_set_tx_pwr
 */
static int hci_vsc_set_tx_pwr(const ke_msg_id_t msgid, struct hci_vsc_set_tx_pwr_cmd *param, const ke_task_id_t dest_id, const ke_task_id_t src_id)
{
	__builtin_trap();
}
