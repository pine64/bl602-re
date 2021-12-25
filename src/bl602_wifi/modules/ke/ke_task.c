#include <modules/ke/ke_task.h>
#include <modules/ke/ke_msg.h>
#include <modules/ke/ke_env.h>
#include <modules/ke/ke_event.h>
#include <modules/ke/ke_queue.h>

#include <lmac/mm/mm_task.h>
#include <modules/dbg/dbg_task.h>
#include <lmac/scan/scan_task.h>
#include <umac/scanu/scanu_task.h>
#include <umac/me/me_task.h>
#include <umac/sm/sm_task.h>
#include <umac/apm/apm_task.h>
#include <umac/bam/bam_task.h>
#include <umac/hostapd/hostapd_task.h>
#include <cfg/cfg_task.h>

#include <arch/rv32i/ll.h>

#include <stddef.h>

static const struct ke_task_desc TASK_DESC[TASK_MAX] = {
	/// MAC Management task.
	[TASK_MM] = {
		.state_handler = mm_state_handler, 
		.default_handler = &mm_default_handler,
		.state = mm_state, 
		.state_max = MM_STATE_MAX,
		.idx_max = MM_IDX_MAX,
	},
	[TASK_DBG] = {
		.state_handler = NULL, 
		.default_handler = &dbg_default_handler,
		.state = NULL, 
		.state_max = 1,
		.idx_max = 1,
	},
	/// SCAN task
	[TASK_SCAN] = {
		.state_handler = NULL, 
		.default_handler = &scan_default_handler,
		.state = scan_state, 
		.state_max = SCAN_STATE_MAX,
		.idx_max = SCAN_ID_MAX,
	},
	/// TDLS task
	[TASK_TDLS] = {0},
	/// SCAN task
	[TASK_SCANU] = {
		.state_handler = scanu_state_handler, 
		.default_handler = &scanu_default_handler,
		.state = scanu_state, 
		.state_max = SCANU_STATE_MAX,
		.idx_max = SCANU_IDX_MAX,
	},
	/// SCAN task
	[TASK_ME] = {
		.state_handler = NULL, 
		.default_handler = &me_default_handler,
		.state = me_state, 
		.state_max = ME_STATE_MAX,
		.idx_max = ME_IDX_MAX,
	},
	/// SM task
	[TASK_SM] = {
		.state_handler = NULL, 
		.default_handler = &sm_default_handler,
		.state = sm_state,
		.state_max = SM_STATE_MAX,
		.idx_max = SM_IDX_MAX,
	},
	/// APM task
	[TASK_APM] = {
		.state_handler = NULL, 
		.default_handler = &apm_default_handler,
		.state = apm_state, 
		.state_max = APM_STATE_MAX,
		.idx_max = APM_IDX_MAX,
	},
	/// BAM task
	[TASK_BAM] = {
		.state_handler = NULL, 
		.default_handler = &bam_default_handler,
		.state = bam_state,
		.state_max = BAM_STATE_MAX,
		.idx_max = BAM_IDX_MAX,
	},
	/// MESH task
	[TASK_MESH] = {0},
	[TASK_HOSTAPD] = {
		.state_handler = NULL, 
		.default_handler = &hostapd_default_handler,
		.state = hostapd_u_state,
		.state_max = HOSTAPD_STATE_MAX,
		.idx_max = HOSTAPD_IDX_MAX,
	},
	/// RXU task
	[TASK_RXU] = {0},
	/// CFG task
	[TASK_CFG] = {
		.state_handler = NULL, 
		.default_handler = &cfg_default_handler,
		.state = cfg_state, 
		.state_max = CFG_STATE_MAX,
		.idx_max = CFG_IDX_MAX,
	},
	// nX API task
	[TASK_API] = {0},
};


static bool cmp_dest_id(const struct co_list_hdr *msg, uint32_t dest_id) {
	return ((struct ke_msg*)msg)->dest_id == dest_id;
}

static void ke_task_saved_update(const ke_task_id_t ke_task_id) {
	while (true) {
		struct ke_msg* msg = (struct ke_msg*) ke_queue_extract(&ke_env.queue_saved, &cmp_dest_id, (uint32_t) ke_task_id);
		if (msg) {
			__disable_irq();
			ke_queue_push(&ke_env.queue_sent, (struct co_list_hdr*)msg);
			__enable_irq();
			ke_evt_set(KE_EVT_KE_MESSAGE_BIT);
		} else return ;
	}
}

void ke_state_set(const ke_task_id_t id, const ke_state_t state_id) {
    int type = KE_TYPE_GET(id);
    int idx = KE_IDX_GET(id);
	ASSERT_ERR(type < TASK_MAX);
    ASSERT_ERR(ke_task_local(type));
    ASSERT_ERR(idx < TASK_DESC[type].idx_max);
	ke_state_t *ke_stateid_ptr = TASK_DESC[type].state + idx;
	ASSERT_ERR(ke_stateid_ptr);
	if (*ke_stateid_ptr != state_id) {
		*ke_stateid_ptr = state_id;
		ke_task_saved_update(id);
	}
}

ke_state_t ke_state_get(const ke_task_id_t id) {
    int type = KE_TYPE_GET(id);
    int idx = KE_IDX_GET(id);
	ASSERT_ERR(type < TASK_MAX);
	ASSERT_ERR(ke_task_local(type));
	ASSERT_ERR(idx < TASK_DESC[type].idx_max);
	return TASK_DESC[idx].state[type];
}

static ke_msg_func_t ke_handler_search(const ke_msg_id_t msg_id, const struct ke_state_handler *state_handler) {
	if (state_handler->msg_cnt == 0)
		return NULL;
	for (int i = ((int)state_handler->msg_cnt) - 1; i >= 0; i--) {
		if (state_handler->msg_table[i].id == msg_id) {
			ASSERT_ERR(state_handler->msg_table[i].func);
			return state_handler->msg_table[i].func;
		}
	}
	return NULL;
}

static ke_msg_func_t ke_task_handler_get(const ke_msg_id_t msg_id, const ke_task_id_t task_id) {
    int type = KE_TYPE_GET(task_id);
    int idx = KE_IDX_GET(task_id);

	ASSERT_ERR(type < TASK_MAX);
	ASSERT_ERR(ke_task_local(type));
	ASSERT_ERR(idx < TASK_DESC[type].idx_max);

	const struct ke_task_desc *desc = TASK_DESC + type;
	ASSERT_ERR(desc);

	const struct ke_state_handler * handler = desc->state_handler ? (desc->state_handler + desc->state[idx]) 
																  : (desc->default_handler);
	return ke_handler_search(msg_id, handler);;
}

void ke_task_schedule(int dummy) {
	do {
		__disable_irq();
		struct ke_msg * msg = (struct ke_msg *) ke_queue_pop(&ke_env.queue_sent);
		__enable_irq();
		if (!msg)
			break;
		ke_msg_func_t func = ke_task_handler_get(msg->id, msg->dest_id);
		enum ke_msg_status_tag status = KE_MSG_CONSUMED;
		if (func) {
			status = (enum ke_msg_status_tag) func(msg->id, ke_msg2param(msg), msg->dest_id, msg->src_id);
		}
		switch (status) {
		case KE_MSG_CONSUMED:
			ke_msg_free(msg);
		case KE_MSG_NO_FREE:
			break;
		case KE_MSG_SAVED:
			ke_queue_push(&ke_env.queue_saved, (struct co_list_hdr*) msg);
			break;
		default:
			ASSERT_ERR(0);
		}

	} while (0);

	__disable_irq();
	if (ke_env.queue_sent.first == 0x0) {
		ke_evt_clear(KE_EVT_KE_MESSAGE_BIT);
	}
	__enable_irq();
}

int ke_msg_discard(const ke_msg_id_t msgid, const void *param, const ke_task_id_t dest_id, const ke_task_id_t src_id) {
	return KE_MSG_CONSUMED;
}

int ke_msg_save(const ke_msg_id_t msgid, const void *param, const ke_task_id_t dest_id, const ke_task_id_t src_id) {
	return KE_MSG_SAVED;
}
