#include "chan.h"


struct chan_env_tag chan_env;
extern struct chan_ctxt_tag chan_ctxt_pool[5];


uint16_t chan_get_nb_slots(uint32_t time1, uint32_t time2)
{
	__builtin_trap();
}

uint16_t chan_get_nb_avail_slots(struct chan_ctxt_tag *p_chan_entry)
{
	__builtin_trap();
}

static struct chan_ctxt_tag *chan_get_next_chan(void)
{
	__builtin_trap();
}

void chan_upd_nb_rem_slots(struct chan_ctxt_tag *p_chan_entry, uint32_t current_time)
{
	__builtin_trap();
}

static void chan_upd_ctxt_status(struct chan_ctxt_tag *p_chan_entry, uint8_t next_status)
{
	__builtin_trap();
}

void chan_update_reserved_slots(struct vif_info_tag *p_vif_entry, struct chan_ctxt_tag *p_chan_entry)
{
	__builtin_trap();
}

void chan_distribute_slots(void)
{
	__builtin_trap();
}

static void chan_conn_less_delay_prog(void)
{
	__builtin_trap();
}

static void chan_conn_less_delay_evt(void *env)
{
	__builtin_trap();
}

static void chan_cde_evt(void *env)
{
	__builtin_trap();
}

void chan_send_survey_ind(void)
{
	__builtin_trap();
}

void chan_send_roc_exp_ind(struct chan_ctxt_tag *roc_chan_ctxt)
{
	__builtin_trap();
}

static void chan_ctxt_op_evt(void *env)
{
	__builtin_trap();
}

static void chan_pre_switch_channel(void)
{
	__builtin_trap();
}

static void chan_tx_cfm(void *dummy, uint32_t status)
{
	__builtin_trap();
}

void chan_notify_presence(void)
{
	__builtin_trap();
}

int chan_notify_absence(void)
{
	__builtin_trap();
}

static void chan_goto_idle_cb(void)
{
	__builtin_trap();
}

void chan_send_pre_switch_ind(struct chan_ctxt_tag *old_chan_ctxt)
{
	__builtin_trap();
}

void chan_send_switch_ind(struct chan_ctxt_tag *new_chan_ctxt)
{
	__builtin_trap();
}

void chan_tbtt_delay(struct chan_tbtt_tag *p_tbtt_entry)
{
	__builtin_trap();
}

bool chan_tbtt_detect_conflict(struct chan_tbtt_tag *p_tbtt_entry1, struct chan_tbtt_tag *p_tbtt_entry2)
{
	__builtin_trap();
}

static void chan_tbtt_insert(struct chan_tbtt_tag *p_tbtt_entry)
{
	__builtin_trap();
}

static void chan_tbtt_switch_evt(void *env)
{
	__builtin_trap();
}

static void chan_tbtt_schedule(struct chan_tbtt_tag *p_tbtt_entry)
{
	__builtin_trap();
}

void chan_send_force_idle(void)
{
	__builtin_trap();
}

void chan_switch_channel(void)
{
	__builtin_trap();
}

static void chan_switch_start(struct chan_ctxt_tag *p_chan_entry)
{
	__builtin_trap();
}

bool chan_check_chan(const struct mm_chan_ctxt_add_req *p_add_req, uint8_t *p_idx)
{
	__builtin_trap();
}

void chan_ctxt_init(struct chan_ctxt_tag *p_chan_entry)
{
	__builtin_trap();
}

void chan_init(void)
{
	__builtin_trap();
}

void chan_scan_req(uint8_t band, uint16_t freq, int8_t pwr, uint32_t duration_us, uint8_t vif_index)
{
	__builtin_trap();
}

uint8_t chan_roc_req(const struct mm_remain_on_channel_req *req, ke_task_id_t taskid)
{
	__builtin_trap();
}

uint8_t chan_ctxt_add(const struct mm_chan_ctxt_add_req *p_add_req, uint8_t *idx)
{
	__builtin_trap();
}

void chan_ctxt_del(uint8_t chan_idx)
{
	__builtin_trap();
}

void chan_ctxt_link(uint8_t vif_idx, uint8_t chan_idx)
{
	__builtin_trap();
}

void chan_ctxt_unlink(uint8_t vif_idx)
{
	__builtin_trap();
}

void chan_ctxt_update(const struct mm_chan_ctxt_update_req *p_upd_req)
{
	__builtin_trap();
}

void chan_tbtt_switch_update(struct vif_info_tag *p_vif_entry, uint32_t tbtt_time)
{
	__builtin_trap();
}

void chan_bcn_to_evt(struct vif_info_tag *p_vif_entry)
{
	__builtin_trap();
}

void chan_bcn_detect_start(struct vif_info_tag *p_vif_entry)
{
	__builtin_trap();
}

bool chan_is_on_channel(struct vif_info_tag *p_vif_entry)
{
	__builtin_trap();
}

bool chan_is_tx_allowed(struct vif_info_tag *p_vif_entry)
{
	__builtin_trap();
}

bool chan_is_on_operational_channel(struct vif_info_tag *p_vif_entry)
{
	__builtin_trap();
}

void chan_update_tx_power(struct chan_ctxt_tag *p_chan_entry)
{
	__builtin_trap();
}
