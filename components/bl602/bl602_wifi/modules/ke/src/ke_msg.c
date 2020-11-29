
void bl_rx_e2a_handler(void * );
void bl_rx_e2a_handler(void);
void * ke_msg_alloc(ke_msg_id_t id, ke_task_id_t dest_id, ke_task_id_t src_id, uint16_t param_len);
void ke_msg_forward(void * param_ptr, ke_task_id_t dest_id, ke_task_id_t src_id);
void ke_msg_forward_and_change_id(void * param_ptr, ke_msg_id_t msg_id, ke_task_id_t dest_id, ke_task_id_t src_id);
void ke_msg_free(ke_msg * msg);
void ke_msg_send(void * param_ptr);
void ke_msg_send_basic(ke_msg_id_t id, ke_task_id_t dest_id, ke_task_id_t src_id);
#if 0 //TODO EXISTS ALEADY
/**
* @file ke_msg.c
* Source file for BL602
*/
#include "ke_msg.h"


void *ke_msg_alloc(const ke_msg_id_t id, const ke_task_id_t dest_id, const ke_task_id_t src_id, const uint16_t param_len);
void ke_msg_send(const void *param_ptr);
void ke_msg_send_basic(const ke_msg_id_t id, const ke_task_id_t dest_id, const ke_task_id_t src_id);
void ke_msg_forward(const void *param_ptr, const ke_task_id_t dest_id, const ke_task_id_t src_id);
void ke_msg_forward_and_change_id(const void *param_ptr, const ke_msg_id_t msg_id, const ke_task_id_t dest_id, const ke_task_id_t src_id);
void ke_msg_free(const struct ke_msg *msg);




/** *ke_msg_alloc
 */
void *ke_msg_alloc(const ke_msg_id_t id, const ke_task_id_t dest_id, const ke_task_id_t src_id, const uint16_t param_len)
{
	ASSER_ERR(FALSE);
	returnNULL;
}

/** ke_msg_send
 */
void ke_msg_send(const void *param_ptr)
{
	ASSER_ERR(FALSE);
	return;
}

/** ke_msg_send_basic
 */
void ke_msg_send_basic(const ke_msg_id_t id, const ke_task_id_t dest_id, const ke_task_id_t src_id)
{
	ASSER_ERR(FALSE);
	return;
}

/** ke_msg_forward
 */
void ke_msg_forward(const void *param_ptr, const ke_task_id_t dest_id, const ke_task_id_t src_id)
{
	ASSER_ERR(FALSE);
	return;
}

/** ke_msg_forward_and_change_id
 */
void ke_msg_forward_and_change_id(const void *param_ptr, const ke_msg_id_t msg_id, const ke_task_id_t dest_id, const ke_task_id_t src_id)
{
	ASSER_ERR(FALSE);
	return;
}

/** ke_msg_free
 */
void ke_msg_free(const struct ke_msg *msg)
{
	ASSER_ERR(FALSE);
	return;
}
#endf 0 //TODO EXISTS ALEADY
