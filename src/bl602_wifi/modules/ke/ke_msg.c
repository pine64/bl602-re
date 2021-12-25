#include <modules/ke/ke_msg.h>
#include <modules/ke/ke_mem.h>
#include <modules/ke/ke_task.h>
#include <modules/ke/ke_env.h>
#include <modules/ke/ke_event.h>

#include <modules/common/co_list.h>

#include <assert.h>
#include <stddef.h>
#include <utils.h>

void *ke_msg_alloc(const ke_msg_id_t id, const ke_task_id_t dest_id, const ke_task_id_t src_id, const uint16_t param_len) {
	struct ke_msg* msg = (struct ke_msg*)ke_malloc(param_len + sizeof(struct ke_msg));
	ASSERT_ERR(msg != NULL);
	msg->id = id;
	msg->dest_id = dest_id;
	msg->src_id = src_id;
	msg->param_len = param_len;
	msg->hdr.next = NULL;
	memset((void*)&(msg->param), 0, param_len);
	return (void*)&(msg->param);
}

void ke_msg_send(const void *param_ptr) {
	struct ke_msg* msg = ((struct ke_msg*)param_ptr) - 1;
	ke_task_id_t id = KE_TYPE_GET(msg->dest_id);
	if (ke_task_local(id)) {
    	co_list_push_back(&ke_env.queue_sent, &(msg->hdr));
		ke_evt_set(KE_EVT_KE_MESSAGE_BIT);
	} else {
		void bl_rx_e2a_handler(void *arg); // this is wifidrv function
		bl_rx_e2a_handler(msg->id);
		ke_free(msg);
	}
}

void ke_msg_send_basic(const ke_msg_id_t id, const ke_task_id_t dest_id, const ke_task_id_t src_id) {
	ke_msg_send(ke_msg_alloc(id, dest_id, src_id, 0));
}

void ke_msg_forward(const void *param_ptr, const ke_task_id_t dest_id, const ke_task_id_t src_id) {
	struct ke_msg* msg = ((struct ke_msg*)param_ptr) - 1;
	msg->dest_id = dest_id;
	msg->src_id = src_id;
	ke_msg_send(param_ptr);
}

void ke_msg_forward_and_change_id(const void *param_ptr, const ke_msg_id_t msg_id, const ke_task_id_t dest_id, const ke_task_id_t src_id) {
	struct ke_msg* msg = ((struct ke_msg*)param_ptr) - 1;
	msg->id = msg_id;
	msg->dest_id = dest_id;
	msg->src_id = src_id;
	ke_msg_send(param_ptr);
}

void ke_msg_free(const struct ke_msg *msg) {
	if (msg)
		ke_free((void*)msg);
}
