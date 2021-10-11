#include "mm_task.h"

#include <vif/vif_mgmt.h>


int bl60x_edca_get(int ac, uint8_t *aifs, uint8_t *cwmin, uint8_t *cwmax, uint16_t *txop)
{
	__builtin_trap();
}

static int mm_version_req_handler(const ke_msg_id_t msgid, const void *param, const ke_task_id_t dest_id, const ke_task_id_t src_id)
{
	__builtin_trap();
}

static int mm_reset_req_handler(const ke_msg_id_t msgid, const void *param, const ke_task_id_t dest_id, const ke_task_id_t src_id)
{
	__builtin_trap();
}

static int mm_start_req_handler(const ke_msg_id_t msgid, const struct mm_start_req *param, const ke_task_id_t dest_id, const ke_task_id_t src_id)
{
	__builtin_trap();
}

int mm_set_channel_req_handler(const ke_msg_id_t msgid, const struct mm_set_channel_req *param, const ke_task_id_t dest_id, const ke_task_id_t src_id)
{
	__builtin_trap();
}

int mm_set_dtim_req_handler(const ke_msg_id_t msgid, const struct mm_set_dtim_req *param, const ke_task_id_t dest_id, const ke_task_id_t src_id)
{
	__builtin_trap();
}

int mm_set_beacon_int_req_handler(const ke_msg_id_t msgid, const struct mm_set_beacon_int_req *param, const ke_task_id_t dest_id, const ke_task_id_t src_id)
{
	__builtin_trap();
}

int mm_set_basic_rates_req_handler(const ke_msg_id_t msgid, const struct mm_set_basic_rates_req *param, const ke_task_id_t dest_id, const ke_task_id_t src_id)
{
	__builtin_trap();
}

int mm_set_filter_req_handler(const ke_msg_id_t msgid, const struct mm_set_filter_req *param, const ke_task_id_t dest_id, const ke_task_id_t src_id)
{
	__builtin_trap();
}

int mm_set_bssid_req_handler(const ke_msg_id_t msgid, const struct mm_set_bssid_req *param, const ke_task_id_t dest_id, const ke_task_id_t src_id)
{
	__builtin_trap();
}

int mm_set_edca_req_handler(const ke_msg_id_t msgid, const struct mm_set_edca_req *param, const ke_task_id_t dest_id, const ke_task_id_t src_id)
{
	__builtin_trap();
}

int mm_set_slottime_req_handler(const ke_msg_id_t msgid, const struct mm_set_slottime_req *param, const ke_task_id_t dest_id, const ke_task_id_t src_id)
{
	__builtin_trap();
}

int mm_set_mode_req_handler(const ke_msg_id_t msgid, const struct mm_set_mode_req *param, const ke_task_id_t dest_id, const ke_task_id_t src_id)
{
	__builtin_trap();
}

int mm_set_vif_state_req_handler(const ke_msg_id_t msgid, const struct mm_set_vif_state_req *param, const ke_task_id_t dest_id, const ke_task_id_t src_id)
{
	__builtin_trap();
}

static int mm_set_power_req_handler(const ke_msg_id_t msgid, const struct mm_set_power_req *param, const ke_task_id_t dest_id, const ke_task_id_t src_id)
{
	__builtin_trap();
}

int mm_add_if_req_handler(const ke_msg_id_t msgid, const struct mm_add_if_req *param, const ke_task_id_t dest_id, const ke_task_id_t src_id)
{
	__builtin_trap();
}

int mm_remove_if_req_handler(const ke_msg_id_t msgid, const struct mm_remove_if_req *param, const ke_task_id_t dest_id, const ke_task_id_t src_id)
{
	__builtin_trap();
}

static int mm_set_idle_req_handler(const ke_msg_id_t msgid, const struct mm_set_idle_req *param, const ke_task_id_t dest_id, const ke_task_id_t src_id)
{
	__builtin_trap();
}

static int mm_force_idle_req_handler(const ke_msg_id_t msgid, const struct mm_force_idle_req *param, const ke_task_id_t dest_id, const ke_task_id_t src_id)
{
	__builtin_trap();
}

static int mm_sta_add_req_handler(const ke_msg_id_t msgid, const struct mm_sta_add_req *param, const ke_task_id_t dest_id, const ke_task_id_t src_id)
{
	__builtin_trap();
}

static int mm_sta_del_req_handler(const ke_msg_id_t msgid, const struct mm_sta_del_req *param, const ke_task_id_t dest_id, const ke_task_id_t src_id)
{
	__builtin_trap();
}

static int mm_key_add_req_handler(const ke_msg_id_t msgid, const struct mm_key_add_req *param, const ke_task_id_t dest_id, const ke_task_id_t src_id)
{
	__builtin_trap();
}

static int mm_key_del_req_handler(const ke_msg_id_t msgid, const struct mm_key_del_req *param, const ke_task_id_t dest_id, const ke_task_id_t src_id)
{
	__builtin_trap();
}

int mm_ba_add_req_handler(const ke_msg_id_t msgid, const struct mm_ba_add_req *param, const ke_task_id_t dest_id, const ke_task_id_t src_id)
{
	__builtin_trap();
}

int mm_chan_ctxt_update_req_handler(const ke_msg_id_t msgid, const struct mm_chan_ctxt_update_req *param, const ke_task_id_t dest_id, const ke_task_id_t src_id)
{
	__builtin_trap();
}

static int mm_remain_on_channel_req_handler(const ke_msg_id_t msgid, const struct mm_remain_on_channel_req *param, const ke_task_id_t dest_id, const ke_task_id_t src_id)
{
	__builtin_trap();
}

static int mm_bcn_change_req_handler(const ke_msg_id_t msgid, const struct mm_bcn_change_req *param, const ke_task_id_t dest_id, const ke_task_id_t src_id)
{
	__builtin_trap();
}

static int mm_tim_update_req_handler(const ke_msg_id_t msgid, const struct mm_tim_update_req *param, const ke_task_id_t dest_id, const ke_task_id_t src_id)
{
	__builtin_trap();
}

static int mm_hw_config_handler(const ke_msg_id_t msgid, const void *param, const ke_task_id_t dest_id, const ke_task_id_t src_id)
{
	__builtin_trap();
}

static int mm_set_ps_mode_req_handler(const ke_msg_id_t msgid, const struct mm_set_ps_mode_req *param, const ke_task_id_t dest_id, const ke_task_id_t src_id)
{
	__builtin_trap();
}

void ps_polling_frame(struct vif_info_tag *vif_entry)
{
	__builtin_trap();
}

static int mm_set_ps_options_req_handler(const ke_msg_id_t msgid, const struct mm_set_ps_options_req *param, const ke_task_id_t dest_id, const ke_task_id_t src_id)
{
	__builtin_trap();
}

static int mm_cfg_rssi_req_handler(const ke_msg_id_t msgid, const struct mm_cfg_rssi_req *param, const ke_task_id_t dest_id, const ke_task_id_t src_id)
{
	__builtin_trap();
}

static int mm_monitor_enable_req_handler(const ke_msg_id_t msgid, const struct mm_monitor_req *param, const ke_task_id_t dest_id, const ke_task_id_t src_id)
{
	__builtin_trap();
}

static int mm_monitor_channel_req_handler(const ke_msg_id_t msgid, const struct mm_monitor_channel_req *param, const ke_task_id_t dest_id, const ke_task_id_t src_id)
{
	__builtin_trap();
}


extern const struct ke_msg_handler mm_default_state[33];
const struct ke_state_handler mm_state_handler[4];
const struct ke_state_handler mm_default_handler;
ke_state_t mm_state[1];
