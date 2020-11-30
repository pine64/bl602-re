/**
* @file ea.c
* Source file for BL602
*/
#include "ea.h"


enum ea_conflict {
    START_BEFORE_END_BEFORE = 0,
    START_BEFORE_END_DURING = 1,
    START_BEFORE_END_AFTER = 2,
    START_DURING_END_DURING = 3,
    START_DURING_END_AFTER = 4,
    START_AFTER_END_AFTER = 5,
};

struct ea_env_tag {
    struct co_list elt_wait;
 // +0
    struct ea_elt_tag *elt_prog;
 // +8
    struct co_list elt_canceled;
 // +12
    struct co_list interval_list;
 // +20
    uint32_t finetarget_time;
 // +28
};

static struct ea_env_tag ea_env;

static uint8_t ea_conflict_check(struct ea_elt_tag *evt_a, struct ea_elt_tag *evt_b);
void ea_elt_cancel(struct ea_elt_tag *new_elt);
static void ea_prog_timer(void);
void ea_init(bool reset);
struct ea_elt_tag *ea_elt_create(uint16_t size_of_env);
uint8_t ea_elt_insert(struct ea_elt_tag *elt);
uint8_t ea_elt_remove(struct ea_elt_tag *elt);
struct ea_interval_tag *ea_interval_create(void);
void ea_interval_insert(struct ea_interval_tag *interval_to_add);
void ea_interval_remove(struct ea_interval_tag *interval_to_remove);
void ea_interval_delete(struct ea_interval_tag *interval_to_remove);
void ea_finetimer_isr(void);
void ea_sw_isr(void);
uint8_t ea_offset_req(struct ea_param_input *input_param, struct ea_param_output *output_param);
uint32_t ea_time_get_halfslot_rounded(void);
uint32_t ea_time_get_slot_rounded(void);
uint32_t ea_timer_target_get(uint32_t current_time);
void ea_interval_duration_req(struct ea_param_input *input_param, struct ea_param_output *output_param);




/** ea_elt_cancel
 */
void ea_elt_cancel(struct ea_elt_tag *new_elt)
{
	ASSER_ERR(FALSE);
	return;
}

/** ea_init
 */
void ea_init(bool reset)
{
	ASSER_ERR(FALSE);
	return;
}

/** *ea_elt_create
 */
struct ea_elt_tag *ea_elt_create(uint16_t size_of_env)
{
	ASSER_ERR(FALSE);
	returnNULL;
}

/** ea_elt_insert
 */
uint8_t ea_elt_insert(struct ea_elt_tag *elt)
{
	ASSER_ERR(FALSE);
	return 0xff;
}

/** ea_elt_remove
 */
uint8_t ea_elt_remove(struct ea_elt_tag *elt)
{
	ASSER_ERR(FALSE);
	return 0xff;
}

/** *ea_interval_create
 */
struct ea_interval_tag *ea_interval_create(void)
{
	ASSER_ERR(FALSE);
	returnNULL;
}

/** ea_interval_insert
 */
void ea_interval_insert(struct ea_interval_tag *interval_to_add)
{
	ASSER_ERR(FALSE);
	return;
}

/** ea_interval_remove
 */
void ea_interval_remove(struct ea_interval_tag *interval_to_remove)
{
	ASSER_ERR(FALSE);
	return;
}

/** ea_interval_delete
 */
void ea_interval_delete(struct ea_interval_tag *interval_to_remove)
{
	ASSER_ERR(FALSE);
	return;
}

/** ea_finetimer_isr
 */
void ea_finetimer_isr(void)
{
	ASSER_ERR(FALSE);
	return;
}

/** ea_sw_isr
 */
void ea_sw_isr(void)
{
	ASSER_ERR(FALSE);
	return;
}

/** ea_offset_req
 */
uint8_t ea_offset_req(struct ea_param_input *input_param, struct ea_param_output *output_param)
{
	ASSER_ERR(FALSE);
	return 0xff;
}

/** ea_time_get_halfslot_rounded
 */
uint32_t ea_time_get_halfslot_rounded(void)
{
	ASSER_ERR(FALSE);
	return 0xffffffff;
}

/** ea_time_get_slot_rounded
 */
uint32_t ea_time_get_slot_rounded(void)
{
	ASSER_ERR(FALSE);
	return 0xffffffff;
}

/** ea_timer_target_get
 */
uint32_t ea_timer_target_get(uint32_t current_time)
{
	ASSER_ERR(FALSE);
	return 0xffffffff;
}

/** ea_interval_duration_req
 */
void ea_interval_duration_req(struct ea_param_input *input_param, struct ea_param_output *output_param)
{
	ASSER_ERR(FALSE);
	return;
}

/** ea_conflict_check
 */
static uint8_t ea_conflict_check(struct ea_elt_tag *evt_a, struct ea_elt_tag *evt_b)
{
	ASSER_ERR(FALSE);
	return 0xff;
}

/** ea_prog_timer
 */
static void ea_prog_timer(void)
{
	ASSER_ERR(FALSE);
	return;
}
