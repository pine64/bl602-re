
void ps_check_beacon(uint32_t tim, uint16_t len, vif_info_tag * vif_entry);
void ps_check_frame(uint8_t * frame, uint32_t statinfo, vif_info_tag * vif_entry);
_Bool ps_check_tim(uint32_t a_tim, uint16_t aid);
void ps_check_tx_frame(uint8_t staid, uint8_t tid);
_Bool ps_check_tx_status(vif_info_tag * p_vif_entry, uint32_t status, cfm_func_ptr * cfm);
void ps_disable_cfm(void * env, uint32_t status);
void ps_dpsm_update(_Bool pause);
void ps_enable_cfm(void * env, uint32_t status);
void ps_polling_frame(vif_info_tag * vif_entry);
uint8_t ps_send_pspoll(vif_info_tag * vif_entry);
void ps_set_mode(uint8_t mode, ke_task_id_t taskid);
void ps_traffic_status_update(uint8_t vif_index, uint8_t new_status);
void ps_uapsd_set(vif_info_tag * vif_entry, uint8_t hw_queue, _Bool uapsd);
void ps_uapsd_timer_handle(void * env);
#if 0 //TODO EXISTS ALEADY
/**
* @file ps.c
* Source file for BL602
*/
#include "ps.h"


struct ps_env_tag ps_env;

static uint8_t ps_send_pspoll(struct vif_info_tag *vif_entry);
static void ps_enable_cfm(void *env, uint32_t status);
static void ps_disable_cfm(void *env, uint32_t status);
static void ps_dpsm_update(bool pause);
static void ps_uapsd_timer_handle(void *env);
void ps_init(void);
void ps_set_mode(uint8_t mode, ke_task_id_t taskid);
void ps_polling_frame(struct vif_info_tag *vif_entry);
void ps_check_beacon(uint32_t tim, uint16_t len, struct vif_info_tag *vif_entry);
void ps_check_frame(uint8_t *frame, uint32_t statinfo, struct vif_info_tag *vif_entry);
void ps_check_tx_frame(uint8_t staid, uint8_t tid);
void ps_uapsd_set(struct vif_info_tag *vif_entry, uint8_t hw_queue, bool uapsd);
void ps_traffic_status_update(uint8_t vif_index, uint8_t new_status);




/** ps_init
 */
void ps_init(void)
{
	ASSER_ERR(FALSE);
	return;
}

/** ps_set_mode
 */
void ps_set_mode(uint8_t mode, ke_task_id_t taskid)
{
	ASSER_ERR(FALSE);
	return;
}

/** ps_polling_frame
 */
void ps_polling_frame(struct vif_info_tag *vif_entry)
{
	ASSER_ERR(FALSE);
	return;
}

/** ps_check_beacon
 */
void ps_check_beacon(uint32_t tim, uint16_t len, struct vif_info_tag *vif_entry)
{
	ASSER_ERR(FALSE);
	return;
}

/** ps_check_frame
 */
void ps_check_frame(uint8_t *frame, uint32_t statinfo, struct vif_info_tag *vif_entry)
{
	ASSER_ERR(FALSE);
	return;
}

/** ps_check_tx_frame
 */
void ps_check_tx_frame(uint8_t staid, uint8_t tid)
{
	ASSER_ERR(FALSE);
	return;
}

/** ps_uapsd_set
 */
void ps_uapsd_set(struct vif_info_tag *vif_entry, uint8_t hw_queue, bool uapsd)
{
	ASSER_ERR(FALSE);
	return;
}

/** ps_traffic_status_update
 */
void ps_traffic_status_update(uint8_t vif_index, uint8_t new_status)
{
	ASSER_ERR(FALSE);
	return;
}

/** ps_send_pspoll
 */
static uint8_t ps_send_pspoll(struct vif_info_tag *vif_entry)
{
	ASSER_ERR(FALSE);
	return 0xff;
}

/** ps_enable_cfm
 */
static void ps_enable_cfm(void *env, uint32_t status)
{
	ASSER_ERR(FALSE);
	return;
}

/** ps_disable_cfm
 */
static void ps_disable_cfm(void *env, uint32_t status)
{
	ASSER_ERR(FALSE);
	return;
}

/** ps_dpsm_update
 */
static void ps_dpsm_update(bool pause)
{
	ASSER_ERR(FALSE);
	return;
}

/** ps_uapsd_timer_handle
 */
static void ps_uapsd_timer_handle(void *env)
{
	ASSER_ERR(FALSE);
	return;
}
#endf 0 //TODO EXISTS ALEADY
