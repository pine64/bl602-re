
void chan_bcn_detect_start(vif_info_tag * p_vif_entry);
void chan_bcn_to_evt(vif_info_tag * p_vif_entry);
void chan_cde_evt(void * env);
_Bool chan_check_chan(mm_chan_ctxt_add_req * p_add_req, uint8_t * p_idx);
void chan_conn_less_delay_evt(void * env);
void chan_conn_less_delay_prog(void);
uint8_t chan_ctxt_add(mm_chan_ctxt_add_req * p_add_req, uint8_t * idx);
void chan_ctxt_del(uint8_t chan_idx);
void chan_ctxt_init(chan_ctxt_tag * p_chan_entry);
void chan_ctxt_link(uint8_t vif_idx, uint8_t chan_idx);
void chan_ctxt_op_evt(void * env);
void chan_ctxt_unlink(uint8_t vif_idx);
void chan_ctxt_update(mm_chan_ctxt_update_req * p_upd_req);
void chan_distribute_slots(void);
uint16_t chan_get_nb_avail_slots(chan_ctxt_tag * p_chan_entry);
uint16_t chan_get_nb_slots(uint32_t time1, uint32_t time2);
chan_ctxt_tag * chan_get_next_chan(void);
void chan_goto_idle_cb(void);
_Bool chan_is_on_channel(vif_info_tag * p_vif_entry);
_Bool chan_is_on_operational_channel(vif_info_tag * p_vif_entry);
_Bool chan_is_tx_allowed(vif_info_tag * p_vif_entry);
int chan_notify_absence(void);
void chan_notify_presence(void);
void chan_pre_switch_channel(void);
uint8_t chan_roc_req(mm_remain_on_channel_req * req, ke_task_id_t taskid);
void chan_scan_req(uint8_t band, uint16_t freq, int8_t pwr, uint32_t duration_us, uint8_t vif_index);
void chan_send_force_idle(void);
void chan_send_pre_switch_ind(chan_ctxt_tag * old_chan_ctxt);
void chan_send_roc_exp_ind(chan_ctxt_tag * roc_chan_ctxt);
void chan_send_survey_ind(void);
void chan_send_switch_ind(chan_ctxt_tag * new_chan_ctxt);
void chan_switch_channel(void);
void chan_switch_start(chan_ctxt_tag * p_chan_entry);
void chan_tbtt_delay(chan_tbtt_tag * p_tbtt_entry);
_Bool chan_tbtt_detect_conflict(chan_tbtt_tag * p_tbtt_entry2, chan_tbtt_tag * p_tbtt_entry1);
void chan_tbtt_insert(chan_tbtt_tag * p_tbtt_entry);
void chan_tbtt_schedule(chan_tbtt_tag * p_tbtt_entry);
void chan_tbtt_switch_evt(void * env);
void chan_tbtt_switch_update(vif_info_tag * p_vif_entry, uint32_t tbtt_time);
void chan_tx_cfm(void * dummy, uint32_t status);
void chan_upd_ctxt_status(chan_ctxt_tag * p_chan_entry, uint8_t next_status);
void chan_upd_nb_rem_slots(uint32_t current_time, chan_ctxt_tag * p_chan_entry);
void chan_update_reserved_slots(vif_info_tag * p_vif_entry, chan_ctxt_tag * p_chan_entry);
void chan_update_tx_power(chan_ctxt_tag * p_chan_entry);
#if 0 //TODO EXISTS ALEADY
/**
* @file chan.c
* Source file for BL602
*/
#include "chan.h"


struct chan_env_tag chan_env;
struct chan_ctxt_tag chan_ctxt_pool[5];

static void chan_ctxt_op_evt(void *env);
static void chan_pre_switch_channel(void);
static void chan_tx_cfm(void *dummy, uint32_t status);
static void chan_goto_idle_cb(void);
static void chan_tbtt_insert(struct chan_tbtt_tag *p_tbtt_entry);
static void chan_tbtt_switch_evt(void *env);
static void chan_tbtt_schedule(struct chan_tbtt_tag *p_tbtt_entry);
static void chan_switch_start(struct chan_ctxt_tag *p_chan_entry);
void chan_init(void);
void chan_scan_req(uint8_t band, uint16_t freq, int8_t pwr, uint32_t duration_us, uint8_t vif_index);
uint8_t chan_roc_req(const struct mm_remain_on_channel_req *req, ke_task_id_t taskid);
uint8_t chan_ctxt_add(const struct mm_chan_ctxt_add_req *p_add_req, uint8_t *idx);
void chan_ctxt_del(uint8_t chan_idx);
void chan_ctxt_link(uint8_t vif_idx, uint8_t chan_idx);
void chan_ctxt_unlink(uint8_t vif_idx);
void chan_ctxt_update(const struct mm_chan_ctxt_update_req *p_upd_req);
void chan_tbtt_switch_update(struct vif_info_tag *p_vif_entry, uint32_t tbtt_time);
void chan_bcn_to_evt(struct vif_info_tag *p_vif_entry);
void chan_bcn_detect_start(struct vif_info_tag *p_vif_entry);
bool chan_is_on_channel(struct vif_info_tag *p_vif_entry);
bool chan_is_tx_allowed(struct vif_info_tag *p_vif_entry);
bool chan_is_on_operational_channel(struct vif_info_tag *p_vif_entry);
void chan_update_tx_power(struct chan_ctxt_tag *p_chan_entry);




/** chan_init
 */
void chan_init(void)
{
	ASSER_ERR(FALSE);
	return;
}

/** chan_scan_req
 */
void chan_scan_req(uint8_t band, uint16_t freq, int8_t pwr, uint32_t duration_us, uint8_t vif_index)
{
	ASSER_ERR(FALSE);
	return;
}

/** chan_roc_req
 */
uint8_t chan_roc_req(const struct mm_remain_on_channel_req *req, ke_task_id_t taskid)
{
	ASSER_ERR(FALSE);
	return 0xff;
}

/** chan_ctxt_add
 */
uint8_t chan_ctxt_add(const struct mm_chan_ctxt_add_req *p_add_req, uint8_t *idx)
{
	ASSER_ERR(FALSE);
	return 0xff;
}

/** chan_ctxt_del
 */
void chan_ctxt_del(uint8_t chan_idx)
{
	ASSER_ERR(FALSE);
	return;
}

/** chan_ctxt_link
 */
void chan_ctxt_link(uint8_t vif_idx, uint8_t chan_idx)
{
	ASSER_ERR(FALSE);
	return;
}

/** chan_ctxt_unlink
 */
void chan_ctxt_unlink(uint8_t vif_idx)
{
	ASSER_ERR(FALSE);
	return;
}

/** chan_ctxt_update
 */
void chan_ctxt_update(const struct mm_chan_ctxt_update_req *p_upd_req)
{
	ASSER_ERR(FALSE);
	return;
}

/** chan_tbtt_switch_update
 */
void chan_tbtt_switch_update(struct vif_info_tag *p_vif_entry, uint32_t tbtt_time)
{
	ASSER_ERR(FALSE);
	return;
}

/** chan_bcn_to_evt
 */
void chan_bcn_to_evt(struct vif_info_tag *p_vif_entry)
{
	ASSER_ERR(FALSE);
	return;
}

/** chan_bcn_detect_start
 */
void chan_bcn_detect_start(struct vif_info_tag *p_vif_entry)
{
	ASSER_ERR(FALSE);
	return;
}

/** chan_is_on_channel
 */
bool chan_is_on_channel(struct vif_info_tag *p_vif_entry)
{
	ASSER_ERR(FALSE);
	return false;
}

/** chan_is_tx_allowed
 */
bool chan_is_tx_allowed(struct vif_info_tag *p_vif_entry)
{
	ASSER_ERR(FALSE);
	return false;
}

/** chan_is_on_operational_channel
 */
bool chan_is_on_operational_channel(struct vif_info_tag *p_vif_entry)
{
	ASSER_ERR(FALSE);
	return false;
}

/** chan_update_tx_power
 */
void chan_update_tx_power(struct chan_ctxt_tag *p_chan_entry)
{
	ASSER_ERR(FALSE);
	return;
}

/** chan_ctxt_op_evt
 */
static void chan_ctxt_op_evt(void *env)
{
	ASSER_ERR(FALSE);
	return;
}

/** chan_pre_switch_channel
 */
static void chan_pre_switch_channel(void)
{
	ASSER_ERR(FALSE);
	return;
}

/** chan_tx_cfm
 */
static void chan_tx_cfm(void *dummy, uint32_t status)
{
	ASSER_ERR(FALSE);
	return;
}

/** chan_goto_idle_cb
 */
static void chan_goto_idle_cb(void)
{
	ASSER_ERR(FALSE);
	return;
}

/** chan_tbtt_insert
 */
static void chan_tbtt_insert(struct chan_tbtt_tag *p_tbtt_entry)
{
	ASSER_ERR(FALSE);
	return;
}

/** chan_tbtt_switch_evt
 */
static void chan_tbtt_switch_evt(void *env)
{
	ASSER_ERR(FALSE);
	return;
}

/** chan_tbtt_schedule
 */
static void chan_tbtt_schedule(struct chan_tbtt_tag *p_tbtt_entry)
{
	ASSER_ERR(FALSE);
	return;
}

/** chan_switch_start
 */
static void chan_switch_start(struct chan_ctxt_tag *p_chan_entry)
{
	ASSER_ERR(FALSE);
	return;
}
#endf 0 //TODO EXISTS ALEADY
