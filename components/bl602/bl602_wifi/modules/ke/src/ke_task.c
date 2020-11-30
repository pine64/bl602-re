
_Bool cmp_dest_id(co_list_hdr * msg, uint32_t dest_id);
ke_msg_func_t * ke_handler_search(ke_msg_id_t msg_id, ke_state_handler * state_handler);
int ke_msg_discard(ke_msg_id_t msgid, void * param, ke_task_id_t dest_id, ke_task_id_t src_id);
int ke_msg_save(ke_msg_id_t msgid, void * param, ke_task_id_t dest_id, ke_task_id_t src_id);
ke_state_t ke_state_get(ke_task_id_t id);
void ke_state_set(ke_task_id_t id, ke_state_t state_id);
ke_msg_func_t * ke_task_handler_get(ke_msg_id_t msg_id, ke_task_id_t task_id);
void ke_task_saved_update(ke_task_id_t ke_task_id);
void ke_task_schedule(int dummy);
#if 0 //TODO EXISTS ALEADY
/**
* @file ke_task.c
* Source file for BL602
*/
#include "ke_task.h"


static const struct ke_task_desc TASK_DESC[14];

static bool cmp_dest_id(const struct co_list_hdr *msg, uint32_t dest_id);
void ke_state_set(const ke_task_id_t id, const ke_state_t state_id);
ke_state_t ke_state_get(const ke_task_id_t id);
static ke_msg_func_t ke_handler_search(const ke_msg_id_t msg_id, const struct ke_state_handler *state_handler);
void ke_task_schedule(int dummy);
int ke_msg_discard(const ke_msg_id_t msgid, const void *param, const ke_task_id_t dest_id, const ke_task_id_t src_id);
int ke_msg_save(const ke_msg_id_t msgid, const void *param, const ke_task_id_t dest_id, const ke_task_id_t src_id);




/** ke_state_set
 */
void ke_state_set(const ke_task_id_t id, const ke_state_t state_id)
{
	ASSER_ERR(FALSE);
	return;
}

/** ke_state_get
 */
ke_state_t ke_state_get(const ke_task_id_t id)
{
	ASSER_ERR(FALSE);
	return 0xff;
}

/** ke_task_schedule
 */
void ke_task_schedule(int dummy)
{
	ASSER_ERR(FALSE);
	return;
}

/** ke_msg_discard
 */
int ke_msg_discard(const ke_msg_id_t msgid, const void *param, const ke_task_id_t dest_id, const ke_task_id_t src_id)
{
	ASSER_ERR(FALSE);
	return -1;
}

/** ke_msg_save
 */
int ke_msg_save(const ke_msg_id_t msgid, const void *param, const ke_task_id_t dest_id, const ke_task_id_t src_id)
{
	ASSER_ERR(FALSE);
	return -1;
}

/** cmp_dest_id
 */
static bool cmp_dest_id(const struct co_list_hdr *msg, uint32_t dest_id)
{
	ASSER_ERR(FALSE);
	return false;
}

/** ke_handler_search
 */
static ke_msg_func_t ke_handler_search(const ke_msg_id_t msg_id, const struct ke_state_handler *state_handler)
{
	ASSER_ERR(FALSE);
	return NULL;
}
#endf 0 //TODO EXISTS ALEADY
