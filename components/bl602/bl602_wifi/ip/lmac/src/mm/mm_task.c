
void ps_polling_frame(vif_info_tag * );
int bl60x_edca_get(int ac, uint8_t * aifs, uint8_t * cwmin, uint8_t * cwmax, uint16_t * txop);
int mm_add_if_req_handler(ke_msg_id_t msgid, mm_add_if_req * param, ke_task_id_t dest_id, ke_task_id_t src_id);
int mm_ba_add_req_handler(ke_msg_id_t msgid, mm_ba_add_req * param, ke_task_id_t dest_id, ke_task_id_t src_id);
int mm_bcn_change_req_handler(ke_msg_id_t msgid, mm_bcn_change_req * param, ke_task_id_t dest_id, ke_task_id_t src_id);
int mm_cfg_rssi_req_handler(ke_msg_id_t msgid, mm_cfg_rssi_req * param, ke_task_id_t dest_id, ke_task_id_t src_id);
int mm_chan_ctxt_update_req_handler(ke_msg_id_t msgid, mm_chan_ctxt_update_req * param, ke_task_id_t dest_id, ke_task_id_t src_id);
int mm_force_idle_req_handler(ke_msg_id_t msgid, mm_force_idle_req * param, ke_task_id_t dest_id, ke_task_id_t src_id);
int mm_hw_config_handler(ke_msg_id_t msgid, void * param, ke_task_id_t dest_id, ke_task_id_t src_id);
int mm_key_add_req_handler(ke_msg_id_t msgid, mm_key_add_req * param, ke_task_id_t dest_id, ke_task_id_t src_id);
int mm_key_del_req_handler(ke_msg_id_t msgid, mm_key_del_req * param, ke_task_id_t dest_id, ke_task_id_t src_id);
int mm_monitor_channel_req_handler(ke_msg_id_t msgid, mm_monitor_channel_req * param, ke_task_id_t dest_id, ke_task_id_t src_id);
int mm_monitor_enable_req_handler(ke_msg_id_t msgid, mm_monitor_req * param, ke_task_id_t dest_id, ke_task_id_t src_id);
int mm_remain_on_channel_req_handler(ke_msg_id_t msgid, mm_remain_on_channel_req * param, ke_task_id_t dest_id, ke_task_id_t src_id);
int mm_remove_if_req_handler(ke_msg_id_t msgid, mm_remove_if_req * param, ke_task_id_t dest_id, ke_task_id_t src_id);
int mm_reset_req_handler(ke_msg_id_t msgid, void * param, ke_task_id_t dest_id, ke_task_id_t src_id);
int mm_set_basic_rates_req_handler(ke_msg_id_t msgid, mm_set_basic_rates_req * param, ke_task_id_t dest_id, ke_task_id_t src_id);
int mm_set_beacon_int_req_handler(ke_msg_id_t msgid, mm_set_beacon_int_req * param, ke_task_id_t dest_id, ke_task_id_t src_id);
int mm_set_bssid_req_handler(ke_msg_id_t msgid, mm_set_bssid_req * param, ke_task_id_t dest_id, ke_task_id_t src_id);
int mm_set_channel_req_handler(ke_msg_id_t msgid, mm_set_channel_req * param, ke_task_id_t dest_id, ke_task_id_t src_id);
int mm_set_dtim_req_handler(ke_msg_id_t msgid, mm_set_dtim_req * param, ke_task_id_t dest_id, ke_task_id_t src_id);
int mm_set_edca_req_handler(ke_msg_id_t msgid, mm_set_edca_req * param, ke_task_id_t dest_id, ke_task_id_t src_id);
int mm_set_filter_req_handler(ke_msg_id_t msgid, mm_set_filter_req * param, ke_task_id_t dest_id, ke_task_id_t src_id);
int mm_set_idle_req_handler(ke_msg_id_t msgid, mm_set_idle_req * param, ke_task_id_t dest_id, ke_task_id_t src_id);
int mm_set_mode_req_handler(ke_msg_id_t msgid, mm_set_mode_req * param, ke_task_id_t dest_id, ke_task_id_t src_id);
int mm_set_power_req_handler(ke_msg_id_t msgid, mm_set_power_req * param, ke_task_id_t dest_id, ke_task_id_t src_id);
int mm_set_ps_mode_req_handler(ke_msg_id_t msgid, mm_set_ps_mode_req * param, ke_task_id_t dest_id, ke_task_id_t src_id);
int mm_set_ps_options_req_handler(ke_msg_id_t msgid, mm_set_ps_options_req * param, ke_task_id_t dest_id, ke_task_id_t src_id);
int mm_set_slottime_req_handler(ke_msg_id_t msgid, mm_set_slottime_req * param, ke_task_id_t dest_id, ke_task_id_t src_id);
int mm_set_vif_state_req_handler(ke_msg_id_t msgid, mm_set_vif_state_req * param, ke_task_id_t dest_id, ke_task_id_t src_id);
int mm_sta_add_req_handler(ke_msg_id_t msgid, mm_sta_add_req * param, ke_task_id_t dest_id, ke_task_id_t src_id);
int mm_sta_del_req_handler(ke_msg_id_t msgid, mm_sta_del_req * param, ke_task_id_t dest_id, ke_task_id_t src_id);
int mm_start_req_handler(ke_msg_id_t msgid, mm_start_req * param, ke_task_id_t dest_id, ke_task_id_t src_id);
int mm_tim_update_req_handler(ke_msg_id_t msgid, mm_tim_update_req * param, ke_task_id_t dest_id, ke_task_id_t src_id);
int mm_version_req_handler(ke_msg_id_t msgid, void * param, ke_task_id_t dest_id, ke_task_id_t src_id);
void ps_polling_frame(void);
#if 0 //TODO EXISTS ALEADY
/**
* @file mm_task.c
* Source file for BL602
*/
#include "mm_task.h"


int bl60x_edca_get(int ac, uint8_t *aifs, uint8_t *cwmin, uint8_t *cwmax, uint16_t *txop);
static int mm_version_req_handler(const ke_msg_id_t msgid, const void *param, const ke_task_id_t dest_id, const ke_task_id_t src_id);
static int mm_reset_req_handler(const ke_msg_id_t msgid, const void *param, const ke_task_id_t dest_id, const ke_task_id_t src_id);
static int mm_start_req_handler(const ke_msg_id_t msgid, const struct mm_start_req *param, const ke_task_id_t dest_id, const ke_task_id_t src_id);
static int mm_set_power_req_handler(const ke_msg_id_t msgid, const struct mm_set_power_req *param, const ke_task_id_t dest_id, const ke_task_id_t src_id);
static int mm_set_idle_req_handler(const ke_msg_id_t msgid, const struct mm_set_idle_req *param, const ke_task_id_t dest_id, const ke_task_id_t src_id);
static int mm_force_idle_req_handler(const ke_msg_id_t msgid, const struct mm_force_idle_req *param, const ke_task_id_t dest_id, const ke_task_id_t src_id);
static int mm_sta_add_req_handler(const ke_msg_id_t msgid, const struct mm_sta_add_req *param, const ke_task_id_t dest_id, const ke_task_id_t src_id);
static int mm_sta_del_req_handler(const ke_msg_id_t msgid, const struct mm_sta_del_req *param, const ke_task_id_t dest_id, const ke_task_id_t src_id);
static int mm_key_add_req_handler(const ke_msg_id_t msgid, const struct mm_key_add_req *param, const ke_task_id_t dest_id, const ke_task_id_t src_id);
static int mm_key_del_req_handler(const ke_msg_id_t msgid, const struct mm_key_del_req *param, const ke_task_id_t dest_id, const ke_task_id_t src_id);
static int mm_remain_on_channel_req_handler(const ke_msg_id_t msgid, const struct mm_remain_on_channel_req *param, const ke_task_id_t dest_id, const ke_task_id_t src_id);
static int mm_bcn_change_req_handler(const ke_msg_id_t msgid, const struct mm_bcn_change_req *param, const ke_task_id_t dest_id, const ke_task_id_t src_id);
static int mm_tim_update_req_handler(const ke_msg_id_t msgid, const struct mm_tim_update_req *param, const ke_task_id_t dest_id, const ke_task_id_t src_id);
static int mm_hw_config_handler(const ke_msg_id_t msgid, const void *param, const ke_task_id_t dest_id, const ke_task_id_t src_id);
static int mm_set_ps_mode_req_handler(const ke_msg_id_t msgid, const struct mm_set_ps_mode_req *param, const ke_task_id_t dest_id, const ke_task_id_t src_id);
static int mm_set_ps_options_req_handler(const ke_msg_id_t msgid, const struct mm_set_ps_options_req *param, const ke_task_id_t dest_id, const ke_task_id_t src_id);
static int mm_cfg_rssi_req_handler(const ke_msg_id_t msgid, const struct mm_cfg_rssi_req *param, const ke_task_id_t dest_id, const ke_task_id_t src_id);
static int mm_monitor_enable_req_handler(const ke_msg_id_t msgid, const struct mm_monitor_req *param, const ke_task_id_t dest_id, const ke_task_id_t src_id);
static int mm_monitor_channel_req_handler(const ke_msg_id_t msgid, const struct mm_monitor_channel_req *param, const ke_task_id_t dest_id, const ke_task_id_t src_id);

const struct ke_msg_handler mm_default_state[33];
const struct ke_state_handler mm_state_handler[4];
const struct ke_state_handler mm_default_handler;
ke_state_t mm_state[1];




/** bl60x_edca_get
 */
int bl60x_edca_get(int ac, uint8_t *aifs, uint8_t *cwmin, uint8_t *cwmax, uint16_t *txop)
{
	ASSER_ERR(FALSE);
	return -1;
}

/** mm_version_req_handler
 */
static int mm_version_req_handler(const ke_msg_id_t msgid, const void *param, const ke_task_id_t dest_id, const ke_task_id_t src_id)
{
	ASSER_ERR(FALSE);
	return -1;
}

/** mm_reset_req_handler
 */
static int mm_reset_req_handler(const ke_msg_id_t msgid, const void *param, const ke_task_id_t dest_id, const ke_task_id_t src_id)
{
	ASSER_ERR(FALSE);
	return -1;
}

/** mm_start_req_handler
 */
static int mm_start_req_handler(const ke_msg_id_t msgid, const struct mm_start_req *param, const ke_task_id_t dest_id, const ke_task_id_t src_id)
{
	ASSER_ERR(FALSE);
	return -1;
}

/** mm_set_power_req_handler
 */
static int mm_set_power_req_handler(const ke_msg_id_t msgid, const struct mm_set_power_req *param, const ke_task_id_t dest_id, const ke_task_id_t src_id)
{
	ASSER_ERR(FALSE);
	return -1;
}

/** mm_set_idle_req_handler
 */
static int mm_set_idle_req_handler(const ke_msg_id_t msgid, const struct mm_set_idle_req *param, const ke_task_id_t dest_id, const ke_task_id_t src_id)
{
	ASSER_ERR(FALSE);
	return -1;
}

/** mm_force_idle_req_handler
 */
static int mm_force_idle_req_handler(const ke_msg_id_t msgid, const struct mm_force_idle_req *param, const ke_task_id_t dest_id, const ke_task_id_t src_id)
{
	ASSER_ERR(FALSE);
	return -1;
}

/** mm_sta_add_req_handler
 */
static int mm_sta_add_req_handler(const ke_msg_id_t msgid, const struct mm_sta_add_req *param, const ke_task_id_t dest_id, const ke_task_id_t src_id)
{
	ASSER_ERR(FALSE);
	return -1;
}

/** mm_sta_del_req_handler
 */
static int mm_sta_del_req_handler(const ke_msg_id_t msgid, const struct mm_sta_del_req *param, const ke_task_id_t dest_id, const ke_task_id_t src_id)
{
	ASSER_ERR(FALSE);
	return -1;
}

/** mm_key_add_req_handler
 */
static int mm_key_add_req_handler(const ke_msg_id_t msgid, const struct mm_key_add_req *param, const ke_task_id_t dest_id, const ke_task_id_t src_id)
{
	ASSER_ERR(FALSE);
	return -1;
}

/** mm_key_del_req_handler
 */
static int mm_key_del_req_handler(const ke_msg_id_t msgid, const struct mm_key_del_req *param, const ke_task_id_t dest_id, const ke_task_id_t src_id)
{
	ASSER_ERR(FALSE);
	return -1;
}

/** mm_remain_on_channel_req_handler
 */
static int mm_remain_on_channel_req_handler(const ke_msg_id_t msgid, const struct mm_remain_on_channel_req *param, const ke_task_id_t dest_id, const ke_task_id_t src_id)
{
	ASSER_ERR(FALSE);
	return -1;
}

/** mm_bcn_change_req_handler
 */
static int mm_bcn_change_req_handler(const ke_msg_id_t msgid, const struct mm_bcn_change_req *param, const ke_task_id_t dest_id, const ke_task_id_t src_id)
{
	ASSER_ERR(FALSE);
	return -1;
}

/** mm_tim_update_req_handler
 */
static int mm_tim_update_req_handler(const ke_msg_id_t msgid, const struct mm_tim_update_req *param, const ke_task_id_t dest_id, const ke_task_id_t src_id)
{
	ASSER_ERR(FALSE);
	return -1;
}

/** mm_hw_config_handler
 */
static int mm_hw_config_handler(const ke_msg_id_t msgid, const void *param, const ke_task_id_t dest_id, const ke_task_id_t src_id)
{
	ASSER_ERR(FALSE);
	return -1;
}

/** mm_set_ps_mode_req_handler
 */
static int mm_set_ps_mode_req_handler(const ke_msg_id_t msgid, const struct mm_set_ps_mode_req *param, const ke_task_id_t dest_id, const ke_task_id_t src_id)
{
	ASSER_ERR(FALSE);
	return -1;
}

/** mm_set_ps_options_req_handler
 */
static int mm_set_ps_options_req_handler(const ke_msg_id_t msgid, const struct mm_set_ps_options_req *param, const ke_task_id_t dest_id, const ke_task_id_t src_id)
{
	ASSER_ERR(FALSE);
	return -1;
}

/** mm_cfg_rssi_req_handler
 */
static int mm_cfg_rssi_req_handler(const ke_msg_id_t msgid, const struct mm_cfg_rssi_req *param, const ke_task_id_t dest_id, const ke_task_id_t src_id)
{
	ASSER_ERR(FALSE);
	return -1;
}

/** mm_monitor_enable_req_handler
 */
static int mm_monitor_enable_req_handler(const ke_msg_id_t msgid, const struct mm_monitor_req *param, const ke_task_id_t dest_id, const ke_task_id_t src_id)
{
	ASSER_ERR(FALSE);
	return -1;
}

/** mm_monitor_channel_req_handler
 */
static int mm_monitor_channel_req_handler(const ke_msg_id_t msgid, const struct mm_monitor_channel_req *param, const ke_task_id_t dest_id, const ke_task_id_t src_id)
{
	ASSER_ERR(FALSE);
	return -1;
}
#endf 0 //TODO EXISTS ALEADY
