//#include "llc_hci.h"

#include <stdint.h>

#include <co_hci.h>
#include <ke_msg.h>
#include <ke_task.h>

static int hci_le_con_update_cmd_handler(const ke_msg_id_t msgid, const struct hci_le_con_update_cmd *param, const ke_task_id_t dest_id, const ke_task_id_t src_id);
static int hci_le_rd_chnl_map_cmd_handler(const ke_msg_id_t msgid, const struct hci_basic_conhdl_cmd *param, const ke_task_id_t dest_id, const ke_task_id_t src_id);
static int hci_le_rd_rem_used_feats_cmd_handler(const ke_msg_id_t msgid, const struct hci_le_rd_rem_used_feats_cmd *param, const ke_task_id_t dest_id, const ke_task_id_t src_id);
static int hci_le_start_enc_cmd_handler(const ke_msg_id_t msgid, const struct hci_le_start_enc_cmd *param, const ke_task_id_t dest_id, const ke_task_id_t src_id);
static int hci_le_ltk_req_reply_cmd_handler(const ke_msg_id_t msgid, const struct hci_le_ltk_req_reply_cmd *param, const ke_task_id_t dest_id, const ke_task_id_t src_id);
static int hci_le_ltk_req_neg_reply_cmd_handler(const ke_msg_id_t msgid, const struct hci_basic_conhdl_cmd *param, const ke_task_id_t dest_id, const ke_task_id_t src_id);
static int hci_le_rem_con_param_req_reply_cmd_handler(const ke_msg_id_t msgid, const struct hci_le_rem_con_param_req_reply_cmd *param, const ke_task_id_t dest_id, const ke_task_id_t src_id);
static int hci_le_rem_con_param_req_neg_reply_cmd_handler(const ke_msg_id_t msgid, const struct hci_le_rem_con_param_req_neg_reply_cmd *param, const ke_task_id_t dest_id, const ke_task_id_t src_id);
static int hci_flush_cmd_handler(const ke_msg_id_t msgid, const struct hci_basic_conhdl_cmd *param, const ke_task_id_t dest_id, const ke_task_id_t src_id);
static int hci_disconnect_cmd_handler(const ke_msg_id_t msgid, const struct hci_disconnect_cmd *param, const ke_task_id_t dest_id, const ke_task_id_t src_id);
static int hci_rd_rssi_cmd_handler(const ke_msg_id_t msgid, const struct hci_basic_conhdl_cmd *param, const ke_task_id_t dest_id, const ke_task_id_t src_id);
static int hci_rd_tx_pwr_lvl_cmd_handler(const ke_msg_id_t msgid, const struct hci_rd_tx_pwr_lvl_cmd *param, const ke_task_id_t dest_id, const ke_task_id_t src_id);
static int hci_rd_rem_ver_info_cmd_handler(const ke_msg_id_t msgid, const struct hci_rd_rem_ver_info_cmd *param, const ke_task_id_t dest_id, const ke_task_id_t src_id);
static int hci_rd_auth_payl_to_cmd_handler(const ke_msg_id_t msgid, const struct hci_rd_auth_payl_to_cmd *param, const ke_task_id_t dest_id, const ke_task_id_t src_id);
static int hci_wr_auth_payl_to_cmd_handler(const ke_msg_id_t msgid, const struct hci_wr_auth_payl_to_cmd *param, const ke_task_id_t dest_id, const ke_task_id_t src_id);
static int hci_le_set_data_len_cmd_handler(const ke_msg_id_t msgid, const struct hci_le_set_data_len_cmd *param, const ke_task_id_t dest_id, const ke_task_id_t src_id);

static const struct ke_msg_handler llc_hci_command_handler_tab[16];

int llc_hci_command_handler(const ke_msg_id_t msgid, const void *param, const ke_task_id_t dest_id, const ke_task_id_t src_id);
int llc_hci_acl_data_tx_handler(const ke_msg_id_t msgid, const struct hci_acl_data_tx *param, const ke_task_id_t dest_id, const ke_task_id_t src_id);


/** llc_hci_command_handler
 */
int llc_hci_command_handler(const ke_msg_id_t msgid, const void *param, const ke_task_id_t dest_id, const ke_task_id_t src_id)
{
	__builtin_trap();
}

/** llc_hci_acl_data_tx_handler
 */
int llc_hci_acl_data_tx_handler(const ke_msg_id_t msgid, const struct hci_acl_data_tx *param, const ke_task_id_t dest_id, const ke_task_id_t src_id)
{
	__builtin_trap();
}

/** hci_le_con_update_cmd_handler
 */
static int hci_le_con_update_cmd_handler(const ke_msg_id_t msgid, const struct hci_le_con_update_cmd *param, const ke_task_id_t dest_id, const ke_task_id_t src_id)
{
	__builtin_trap();
}

/** hci_le_rd_chnl_map_cmd_handler
 */
static int hci_le_rd_chnl_map_cmd_handler(const ke_msg_id_t msgid, const struct hci_basic_conhdl_cmd *param, const ke_task_id_t dest_id, const ke_task_id_t src_id)
{
	__builtin_trap();
}

/** hci_le_rd_rem_used_feats_cmd_handler
 */
static int hci_le_rd_rem_used_feats_cmd_handler(const ke_msg_id_t msgid, const struct hci_le_rd_rem_used_feats_cmd *param, const ke_task_id_t dest_id, const ke_task_id_t src_id)
{
	__builtin_trap();
}

/** hci_le_start_enc_cmd_handler
 */
static int hci_le_start_enc_cmd_handler(const ke_msg_id_t msgid, const struct hci_le_start_enc_cmd *param, const ke_task_id_t dest_id, const ke_task_id_t src_id)
{
	__builtin_trap();
}

/** hci_le_ltk_req_reply_cmd_handler
 */
static int hci_le_ltk_req_reply_cmd_handler(const ke_msg_id_t msgid, const struct hci_le_ltk_req_reply_cmd *param, const ke_task_id_t dest_id, const ke_task_id_t src_id)
{
	__builtin_trap();
}

/** hci_le_ltk_req_neg_reply_cmd_handler
 */
static int hci_le_ltk_req_neg_reply_cmd_handler(const ke_msg_id_t msgid, const struct hci_basic_conhdl_cmd *param, const ke_task_id_t dest_id, const ke_task_id_t src_id)
{
	__builtin_trap();
}

/** hci_le_rem_con_param_req_reply_cmd_handler
 */
static int hci_le_rem_con_param_req_reply_cmd_handler(const ke_msg_id_t msgid, const struct hci_le_rem_con_param_req_reply_cmd *param, const ke_task_id_t dest_id, const ke_task_id_t src_id)
{
	__builtin_trap();
}

/** hci_le_rem_con_param_req_neg_reply_cmd_handler
 */
static int hci_le_rem_con_param_req_neg_reply_cmd_handler(const ke_msg_id_t msgid, const struct hci_le_rem_con_param_req_neg_reply_cmd *param, const ke_task_id_t dest_id, const ke_task_id_t src_id)
{
	__builtin_trap();
}

/** hci_flush_cmd_handler
 */
static int hci_flush_cmd_handler(const ke_msg_id_t msgid, const struct hci_basic_conhdl_cmd *param, const ke_task_id_t dest_id, const ke_task_id_t src_id)
{
	__builtin_trap();
}

/** hci_disconnect_cmd_handler
 */
static int hci_disconnect_cmd_handler(const ke_msg_id_t msgid, const struct hci_disconnect_cmd *param, const ke_task_id_t dest_id, const ke_task_id_t src_id)
{
	__builtin_trap();
}

/** hci_rd_rssi_cmd_handler
 */
static int hci_rd_rssi_cmd_handler(const ke_msg_id_t msgid, const struct hci_basic_conhdl_cmd *param, const ke_task_id_t dest_id, const ke_task_id_t src_id)
{
	__builtin_trap();
}

/** hci_rd_tx_pwr_lvl_cmd_handler
 */
static int hci_rd_tx_pwr_lvl_cmd_handler(const ke_msg_id_t msgid, const struct hci_rd_tx_pwr_lvl_cmd *param, const ke_task_id_t dest_id, const ke_task_id_t src_id)
{
	__builtin_trap();
}

/** hci_rd_rem_ver_info_cmd_handler
 */
static int hci_rd_rem_ver_info_cmd_handler(const ke_msg_id_t msgid, const struct hci_rd_rem_ver_info_cmd *param, const ke_task_id_t dest_id, const ke_task_id_t src_id)
{
	__builtin_trap();
}

/** hci_rd_auth_payl_to_cmd_handler
 */
static int hci_rd_auth_payl_to_cmd_handler(const ke_msg_id_t msgid, const struct hci_rd_auth_payl_to_cmd *param, const ke_task_id_t dest_id, const ke_task_id_t src_id)
{
	__builtin_trap();
}

/** hci_wr_auth_payl_to_cmd_handler
 */
static int hci_wr_auth_payl_to_cmd_handler(const ke_msg_id_t msgid, const struct hci_wr_auth_payl_to_cmd *param, const ke_task_id_t dest_id, const ke_task_id_t src_id)
{
	__builtin_trap();
}

/** hci_le_set_data_len_cmd_handler
 */
static int hci_le_set_data_len_cmd_handler(const ke_msg_id_t msgid, const struct hci_le_set_data_len_cmd *param, const ke_task_id_t dest_id, const ke_task_id_t src_id)
{
	__builtin_trap();
}
