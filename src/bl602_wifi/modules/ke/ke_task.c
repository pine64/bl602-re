#include <modules/ke/ke_task.h>
#include <modules/ke/ke_msg.h>

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

#include <stddef.h>

static const struct ke_task_desc TASK_DESC[TASK_MAX] = {
	/// MAC Management task.
	[TASK_MM] = {
		.state_handler = &mm_state_handler, 
		.default_handler = &mm_default_handler,
		.state = &mm_state, 
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
		.state = &scan_state, 
		.state_max = SCAN_STATE_MAX,
		.idx_max = SCAN_ID_MAX,
	},
	/// TDLS task
	[TASK_TDLS] = {0},
	/// SCAN task
	[TASK_SCANU] = {
		.state_handler = &scanu_state_handler, 
		.default_handler = &scanu_default_handler,
		.state = &scanu_state, 
		.state_max = SCANU_STATE_MAX,
		.idx_max = SCANU_IDX_MAX,
	},
	/// SCAN task
	[TASK_ME] = {
		.state_handler = NULL, 
		.default_handler = &me_default_handler,
		.state = &me_state, 
		.state_max = ME_STATE_MAX,
		.idx_max = ME_IDX_MAX,
	},
	/// SM task
	[TASK_SM] = {
		.state_handler = NULL, 
		.default_handler = &sm_default_handler,
		.state = &sm_state,
		.state_max = SM_STATE_MAX,
		.idx_max = SM_IDX_MAX,
	},
	/// APM task
	[TASK_APM] = {
		.state_handler = NULL, 
		.default_handler = &apm_default_handler,
		.state = &apm_state, 
		.state_max = APM_STATE_MAX,
		.idx_max = APM_IDX_MAX,
	},
	/// BAM task
	[TASK_BAM] = {
		.state_handler = NULL, 
		.default_handler = &bam_default_handler,
		.state = &bam_state,
		.state_max = BAM_STATE_MAX,
		.idx_max = BAM_IDX_MAX,
	},
	/// MESH task
	[TASK_MESH] = {0},
	[TASK_HOSTAPD] = {
		.state_handler = NULL, 
		.default_handler = &hostapd_default_handler,
		.state = &hostapd_u_state,
		.state_max = HOSTAPD_STATE_MAX,
		.idx_max = HOSTAPD_IDX_MAX,
	},
	/// RXU task
	[TASK_RXU] = {0},
	/// CFG task
	[TASK_CFG] = {
		.state_handler = NULL, 
		.default_handler = &cfg_default_handler,
		.state = &cfg_state, 
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
	__builtin_trap();
}

void ke_state_set(const ke_task_id_t id, const ke_state_t state_id) {
	__builtin_trap();
}

ke_state_t ke_state_get(const ke_task_id_t id) {
	__builtin_trap();
}

static ke_msg_func_t ke_handler_search(const ke_msg_id_t msg_id, const struct ke_state_handler *state_handler)
{
	__builtin_trap();
}

ke_msg_func_t ke_task_handler_get(const ke_msg_id_t msg_id, const ke_task_id_t task_id)
{
	__builtin_trap();
}

void ke_task_schedule(int dummy)
{
	__builtin_trap();
}

int ke_msg_discard(const ke_msg_id_t msgid, const void *param, const ke_task_id_t dest_id, const ke_task_id_t src_id)
{
	__builtin_trap();
}

int ke_msg_save(const ke_msg_id_t msgid, const void *param, const ke_task_id_t dest_id, const ke_task_id_t src_id)
{
	__builtin_trap();
}
