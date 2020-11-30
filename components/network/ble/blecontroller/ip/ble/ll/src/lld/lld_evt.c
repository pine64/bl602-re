/**
* @file lld_evt.c
* Source file for BL602
*/
#include "lld_evt.h"


enum lld_evt_defer_type {
    LLD_DEFER_RX = 0,
    LLD_DEFER_END = 1,
    LLD_DEFER_TEST_END = 2,
    LLD_DEFER_CON_UP_INSTANT = 3,
    LLD_DEFER_MAP_UP_INSTANT = 4,
    LLD_DEFER_MAX = 5,
};

struct lld_evt_env_tag lld_evt_env;

static void lld_evt_elt_wait_insert(struct ea_elt_tag *elt);
static struct lld_evt_wait_tag *lld_evt_elt_wait_get(struct ea_elt_tag *elt);
static void lld_evt_deferred_elt_push(struct ea_elt_tag *elt, uint8_t type, uint8_t rx_desc_cnt);
static void lld_evt_delete_elt_handler(void);
static struct ea_elt_tag *lld_evt_deferred_elt_pop(uint8_t *type, uint8_t *rx_desc_cnt);
static void lld_evt_winsize_change(struct lld_evt_tag *evt, bool instant);
static void lld_evt_rxwin_compute(struct ea_elt_tag *elt);
static void lld_evt_slave_time_compute(struct ea_elt_tag *elt, uint16_t slot_offset);
static uint32_t lld_evt_get_next_free_slot(void);
void lld_evt_delete_elt_push(struct ea_elt_tag *elt, bool flush, bool send_indication);
void lld_evt_channel_next(uint16_t conhdl, int16_t nb_inc);
void lld_evt_init(bool reset);
void lld_evt_init_evt(struct lld_evt_tag *evt);
bool lld_evt_restart(struct ea_elt_tag *elt, bool rejected);
void lld_evt_elt_insert(struct ea_elt_tag *elt, bool inc_prio);
bool lld_evt_elt_delete(struct ea_elt_tag *elt, bool flush_data, bool send_indication);
uint16_t lld_evt_drift_compute(uint16_t delay, uint8_t master_sca);
void lld_evt_schedule_next(struct ea_elt_tag *elt);
void lld_evt_schedule(struct ea_elt_tag *elt);
void lld_evt_prevent_stop(struct ea_elt_tag *elt);
struct ea_elt_tag *lld_evt_scan_create(uint16_t handle, uint16_t latency);
struct ea_elt_tag *lld_evt_move_to_master(struct ea_elt_tag *elt_scan, uint16_t conhdl, const struct llc_create_con_req_ind *pdu_tx, uint8_t rx_hdl);
struct ea_elt_tag *lld_evt_update_create(struct ea_elt_tag *elt_old, uint16_t ce_len, uint16_t mininterval, uint16_t maxinterval, uint16_t latency, uint8_t pref_period, struct lld_evt_update_tag *upd_par);
struct ea_elt_tag *lld_evt_move_to_slave(struct llc_create_con_req_ind *con_par, struct llm_pdu_con_req_rx *con_req_pdu, struct ea_elt_tag *elt_adv, uint16_t conhdl);
void lld_evt_slave_update(const struct llcp_con_upd_ind *param_pdu, struct ea_elt_tag *elt_old);
struct ea_elt_tag *lld_evt_adv_create(uint16_t handle, uint16_t mininterval, uint16_t maxinterval, bool restart_pol);
void lld_evt_deffered_elt_handler(void);
void lld_evt_end(struct ea_elt_tag *elt);
void lld_evt_rx(struct ea_elt_tag *elt);
void lld_evt_rx_afs(struct ea_elt_tag *elt, uint8_t num);
void lld_evt_canceled(struct ea_elt_tag *elt);
void lld_evt_timer_isr(void);
void lld_evt_end_isr(bool apfm);
void lld_evt_rx_isr(void);
void lld_evt_afs_isr(uint8_t num);




/** lld_evt_delete_elt_push
 */
void lld_evt_delete_elt_push(struct ea_elt_tag *elt, bool flush, bool send_indication)
{
	ASSER_ERR(FALSE);
	return;
}

/** lld_evt_channel_next
 */
void lld_evt_channel_next(uint16_t conhdl, int16_t nb_inc)
{
	ASSER_ERR(FALSE);
	return;
}

/** lld_evt_init
 */
void lld_evt_init(bool reset)
{
	ASSER_ERR(FALSE);
	return;
}

/** lld_evt_init_evt
 */
void lld_evt_init_evt(struct lld_evt_tag *evt)
{
	ASSER_ERR(FALSE);
	return;
}

/** lld_evt_restart
 */
bool lld_evt_restart(struct ea_elt_tag *elt, bool rejected)
{
	ASSER_ERR(FALSE);
	return false;
}

/** lld_evt_elt_insert
 */
void lld_evt_elt_insert(struct ea_elt_tag *elt, bool inc_prio)
{
	ASSER_ERR(FALSE);
	return;
}

/** lld_evt_elt_delete
 */
bool lld_evt_elt_delete(struct ea_elt_tag *elt, bool flush_data, bool send_indication)
{
	ASSER_ERR(FALSE);
	return false;
}

/** lld_evt_drift_compute
 */
uint16_t lld_evt_drift_compute(uint16_t delay, uint8_t master_sca)
{
	ASSER_ERR(FALSE);
	return 0xffff;
}

/** lld_evt_schedule_next
 */
void lld_evt_schedule_next(struct ea_elt_tag *elt)
{
	ASSER_ERR(FALSE);
	return;
}

/** lld_evt_schedule
 */
void lld_evt_schedule(struct ea_elt_tag *elt)
{
	ASSER_ERR(FALSE);
	return;
}

/** lld_evt_prevent_stop
 */
void lld_evt_prevent_stop(struct ea_elt_tag *elt)
{
	ASSER_ERR(FALSE);
	return;
}

/** *lld_evt_scan_create
 */
struct ea_elt_tag *lld_evt_scan_create(uint16_t handle, uint16_t latency)
{
	ASSER_ERR(FALSE);
	returnNULL;
}

/** *lld_evt_move_to_master
 */
struct ea_elt_tag *lld_evt_move_to_master(struct ea_elt_tag *elt_scan, uint16_t conhdl, const struct llc_create_con_req_ind *pdu_tx, uint8_t rx_hdl)
{
	ASSER_ERR(FALSE);
	returnNULL;
}

/** *lld_evt_update_create
 */
struct ea_elt_tag *lld_evt_update_create(struct ea_elt_tag *elt_old, uint16_t ce_len, uint16_t mininterval, uint16_t maxinterval, uint16_t latency, uint8_t pref_period, struct lld_evt_update_tag *upd_par)
{
	ASSER_ERR(FALSE);
	returnNULL;
}

/** *lld_evt_move_to_slave
 */
struct ea_elt_tag *lld_evt_move_to_slave(struct llc_create_con_req_ind *con_par, struct llm_pdu_con_req_rx *con_req_pdu, struct ea_elt_tag *elt_adv, uint16_t conhdl)
{
	ASSER_ERR(FALSE);
	returnNULL;
}

/** lld_evt_slave_update
 */
void lld_evt_slave_update(const struct llcp_con_upd_ind *param_pdu, struct ea_elt_tag *elt_old)
{
	ASSER_ERR(FALSE);
	return;
}

/** *lld_evt_adv_create
 */
struct ea_elt_tag *lld_evt_adv_create(uint16_t handle, uint16_t mininterval, uint16_t maxinterval, bool restart_pol)
{
	ASSER_ERR(FALSE);
	returnNULL;
}

/** lld_evt_deffered_elt_handler
 */
void lld_evt_deffered_elt_handler(void)
{
	ASSER_ERR(FALSE);
	return;
}

/** lld_evt_end
 */
void lld_evt_end(struct ea_elt_tag *elt)
{
	ASSER_ERR(FALSE);
	return;
}

/** lld_evt_rx
 */
void lld_evt_rx(struct ea_elt_tag *elt)
{
	ASSER_ERR(FALSE);
	return;
}

/** lld_evt_rx_afs
 */
void lld_evt_rx_afs(struct ea_elt_tag *elt, uint8_t num)
{
	ASSER_ERR(FALSE);
	return;
}

/** lld_evt_canceled
 */
void lld_evt_canceled(struct ea_elt_tag *elt)
{
	ASSER_ERR(FALSE);
	return;
}

/** lld_evt_timer_isr
 */
void lld_evt_timer_isr(void)
{
	ASSER_ERR(FALSE);
	return;
}

/** lld_evt_end_isr
 */
void lld_evt_end_isr(bool apfm)
{
	ASSER_ERR(FALSE);
	return;
}

/** lld_evt_rx_isr
 */
void lld_evt_rx_isr(void)
{
	ASSER_ERR(FALSE);
	return;
}

/** lld_evt_afs_isr
 */
void lld_evt_afs_isr(uint8_t num)
{
	ASSER_ERR(FALSE);
	return;
}

/** lld_evt_elt_wait_insert
 */
static void lld_evt_elt_wait_insert(struct ea_elt_tag *elt)
{
	ASSER_ERR(FALSE);
	return;
}

/** *lld_evt_elt_wait_get
 */
static struct lld_evt_wait_tag *lld_evt_elt_wait_get(struct ea_elt_tag *elt)
{
	ASSER_ERR(FALSE);
	returnNULL;
}

/** lld_evt_deferred_elt_push
 */
static void lld_evt_deferred_elt_push(struct ea_elt_tag *elt, uint8_t type, uint8_t rx_desc_cnt)
{
	ASSER_ERR(FALSE);
	return;
}

/** lld_evt_delete_elt_handler
 */
static void lld_evt_delete_elt_handler(void)
{
	ASSER_ERR(FALSE);
	return;
}

/** *lld_evt_deferred_elt_pop
 */
static struct ea_elt_tag *lld_evt_deferred_elt_pop(uint8_t *type, uint8_t *rx_desc_cnt)
{
	ASSER_ERR(FALSE);
	returnNULL;
}

/** lld_evt_winsize_change
 */
static void lld_evt_winsize_change(struct lld_evt_tag *evt, bool instant)
{
	ASSER_ERR(FALSE);
	return;
}

/** lld_evt_rxwin_compute
 */
static void lld_evt_rxwin_compute(struct ea_elt_tag *elt)
{
	ASSER_ERR(FALSE);
	return;
}

/** lld_evt_slave_time_compute
 */
static void lld_evt_slave_time_compute(struct ea_elt_tag *elt, uint16_t slot_offset)
{
	ASSER_ERR(FALSE);
	return;
}

/** lld_evt_get_next_free_slot
 */
static uint32_t lld_evt_get_next_free_slot(void)
{
	ASSER_ERR(FALSE);
	return 0xffffffff;
}
