#include "llc.h"

#include <co_string.h>
#include <ke_timer.h>
#include <hci.h>
#include <llm/llm_util.h>

struct llc_env_tag *llc_env[2];
static const struct ke_task_desc TASK_DESC_LLC;


/** llc_init
 */
void llc_init(void)
{
	ble_ke_task_create(1, &TASK_DESC_LLC);
	ble_ke_state_set(1, 0x7f);
	ble_ke_state_set(0x101, 0x7f);
	(*ble_memset_ptr)(llc_env, 0, sizeof(llc_env));
}

/** llc_reset
 */
void llc_reset(void)
{
	if (ble_ke_state_get(1) != 0x7f)
	{
		llc_stop(0);
	}
	if (ble_ke_state_get(0x101) != 0x7f)
	{
		llc_stop(1);
	}
}

/** llc_start
 */
void llc_start(struct llc_create_con_req_ind *param, struct ea_elt_tag *elt)
{
	__builtin_trap();
}

/** llc_stop
 */
__attribute__((noinline)) void llc_stop(uint16_t conhdl)
{
	__builtin_trap();
}

/** llc_discon_event_complete_send
 */
void llc_discon_event_complete_send(ke_task_id_t src_id, uint8_t status, uint8_t conhdl, uint8_t reason)
{
	ke_task_id_t dest_id = conhdl;
	struct hci_disc_cmp_evt *evt;
	evt = ble_ke_msg_alloc(HCI_EVENT, dest_id, HCI_DISC_CMP_EVT_CODE, sizeof(*evt));
	evt->status = status;
	evt->reason = reason;
	evt->conhdl = dest_id;
	hci_send_2_host(evt);
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
	uint16_t uVar1;
	struct hci_le_con_update_cmp_evt *hci_evt;
	struct llc_con_upd_req_ind *req;
	hci_evt = ble_ke_msg_alloc(HCI_LE_EVENT, conhdl, 0, sizeof(*hci_evt));
	hci_evt->subcode = HCI_LE_CON_UPDATE_CMP_EVT_SUBCODE;
	hci_evt->conhdl = conhdl;
	hci_evt->status = status;
	if (evt == NULL)
	{
		req = (struct llc_con_upd_req_ind*) llc_env[conhdl]->operation[0];
		if (req == NULL)
		{
			hci_evt->con_interval = 0;
			hci_evt->con_latency = 0;
			hci_evt->sup_to = 0;
			hci_send_2_host(hci_evt);
			return;
		}
		hci_evt->con_interval = req->interval_min;
		hci_evt->con_latency = req->con_latency;
		uVar1 = req->superv_to;
	}
	else
	{
		hci_evt->con_interval = evt->interval >> 1;
		hci_evt->con_latency = evt->evt.conn.latency - 1;
		uVar1 = llc_env[conhdl]->sup_to;
	}
	hci_evt->sup_to = uVar1;
	hci_send_2_host(hci_evt);
}

/** llc_ltk_req_send
 */
void llc_ltk_req_send(uint16_t conhdl, const struct llcp_enc_req *param)
{
	struct hci_le_ltk_request_evt *evt;
	evt = ble_ke_msg_alloc(HCI_LE_EVENT, conhdl, 0, sizeof(*evt));
	evt->conhdl = conhdl;
	evt->subcode = HCI_LE_LTK_REQUEST_EVT_SUBCODE;
	evt->ediv = param->ediv[1] << 8 | param->ediv[0];
	(*ble_memcpy_ptr)(&evt->rand, &param->rand, sizeof(param->rand));
	hci_send_2_host(evt);
}

/** llc_feats_rd_event_send
 */
void llc_feats_rd_event_send(uint8_t status, uint16_t conhdl, const struct le_features *feats)
{
	struct hci_le_rd_rem_used_feats_cmd_cmp_evt *evt;
	if (llm_util_check_evt_mask(3) == 0)
	{
		return;
	}
	evt = ble_ke_msg_alloc(HCI_LE_EVENT, conhdl, 0, sizeof(*evt));
	evt->subcode = HCI_LE_RD_REM_USED_FEATS_CMP_EVT_SUBCODE;
	evt->status = status;
	evt->conhdl = conhdl;
	(*ble_memcpy_ptr)(&evt->feats_used, feats->feats, sizeof(feats->feats));
	hci_send_2_host(evt);
}

/** llc_version_rd_event_send
 */
void llc_version_rd_event_send(uint8_t status, uint16_t conhdl)
{
	struct hci_rd_rem_ver_info_cmp_evt *evt;
	evt = ble_ke_msg_alloc(HCI_EVENT, conhdl, HCI_RD_REM_VER_INFO_CMP_EVT_CODE, sizeof(*evt));
	evt->conhdl = conhdl;
	evt->status = status;
	evt->compid = (llc_env[conhdl]->peer_version).compid;
	evt->subvers = (llc_env[conhdl]->peer_version).subvers;
	evt->vers = (llc_env[conhdl]->peer_version).vers;
	hci_send_2_host(evt);
}

/** llc_common_cmd_complete_send
 */
void llc_common_cmd_complete_send(uint16_t opcode, uint8_t status, uint16_t conhdl)
{
	struct hci_flush_cmd_cmp_evt *evt;
	evt = ble_ke_msg_alloc(HCI_CMD_CMP_EVENT, conhdl, opcode, sizeof(*evt));
	evt->status = status;
	evt->conhdl = conhdl;
	hci_send_2_host(evt);
}

/** llc_common_cmd_status_send
 */
void llc_common_cmd_status_send(uint16_t opcode, uint8_t status, uint16_t conhdl)
{
	struct hci_cmd_stat_event *evt;
	evt = ble_ke_msg_alloc(HCI_CMD_STAT_EVENT, conhdl, opcode, sizeof(*evt));
	evt->status = status;
	hci_send_2_host(evt);
}

/** llc_common_flush_occurred_send
 */
void llc_common_flush_occurred_send(uint16_t conhdl)
{
	struct hci_flush_occurred_evt *evt;
	evt = ble_ke_msg_alloc(HCI_EVENT, conhdl, HCI_FLUSH_OCCURRED_EVT_CODE, sizeof(*evt));
	evt->conhdl = conhdl;
	hci_send_2_host(evt);
}

/** llc_common_enc_key_ref_comp_evt_send
 */
void llc_common_enc_key_ref_comp_evt_send(uint16_t conhdl, uint8_t status)
{
	struct hci_enc_key_ref_cmp_evt *evt;
	evt = ble_ke_msg_alloc(HCI_EVENT, conhdl, HCI_ENC_KEY_REFRESH_CMP_EVT_CODE, sizeof(*evt));
	evt->conhdl = conhdl;
	evt->status = status;
	hci_send_2_host(evt);
}

/** llc_common_enc_change_evt_send
 */
void llc_common_enc_change_evt_send(uint16_t conhdl, uint8_t enc_status, uint8_t status)
{
	struct hci_enc_change_evt *evt;
	ke_task_id_t id = (conhdl & 0xff) << 8 | 1;
	if (enc_status == 0)
	{
		ble_ke_timer_clear(0x103, id);
		ble_ke_timer_clear(0x104, id);
	}
	else
	{
		ble_ke_timer_set(0x103, id, llc_env[conhdl]->auth_payl_to - llc_env[conhdl]->auth_payl_to_margin);
		ble_ke_timer_set(0x104, id, llc_env[conhdl]->auth_payl_to);
	}
	evt = ble_ke_msg_alloc(HCI_EVENT, conhdl, HCI_ENC_CHG_EVT_CODE, sizeof(*evt));
	evt->conhdl = conhdl;
	evt->enc_stat = enc_status;
	evt->status = status;
	hci_send_2_host(evt);
}

/** llc_common_nb_of_pkt_comp_evt_send
 */
void llc_common_nb_of_pkt_comp_evt_send(uint16_t conhdl, uint8_t nb_of_pkt)
{
	struct hci_nb_cmp_pkts_evt *evt;
	evt = ble_ke_msg_alloc(HCI_EVENT, conhdl, HCI_NB_CMP_PKTS_EVT_CODE, sizeof(*evt));
	evt->conhdl[0] = conhdl;
	evt->nb_comp_pkt[0] = nb_of_pkt;
	evt->nb_of_hdl = 1;
	hci_send_2_host(evt);
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
