#include "scanu_task.h"

#include <stddef.h>

#include <scan/scan_task.h>
#include <rxu/rxu_task.h>


static int scanu_start_req_handler(const ke_msg_id_t msgid, const struct scanu_start_req *param, const ke_task_id_t dest_id, const ke_task_id_t src_id)
{
	__builtin_trap();
}

static void cfm_raw_send(void *env, uint32_t status)
{
	__builtin_trap();
}

int packet_send_test(const uint8_t *frm, size_t data_len)
{
	__builtin_trap();
}

static int scanu_raw_send_req_handler(const ke_msg_id_t msgid, const struct scanu_raw_send_req *param, const ke_task_id_t dest_id, const ke_task_id_t src_id)
{
	__builtin_trap();
}

static int scanu_join_req_handler(const ke_msg_id_t msgid, const struct scanu_start_req *param, const ke_task_id_t dest_id, const ke_task_id_t src_id)
{
	__builtin_trap();
}

static int scan_start_cfm_handler(const ke_msg_id_t msgid, const struct scan_start_cfm *param, const ke_task_id_t dest_id, const ke_task_id_t src_id)
{
	__builtin_trap();
}

static int scan_done_ind_handler(const ke_msg_id_t msgid, const void *param, const ke_task_id_t dest_id, const ke_task_id_t src_id)
{
	__builtin_trap();
}

static int rxu_mgt_ind_handler(const ke_msg_id_t msgid, const struct rxu_mgt_ind *param, const ke_task_id_t dest_id, const ke_task_id_t src_id)
{
	__builtin_trap();
}


extern const struct ke_msg_handler scanu_idle[3];
extern const struct ke_msg_handler scanu_scanning[3];
extern const struct ke_msg_handler scanu_default_state[3];
const struct ke_state_handler scanu_state_handler[2];
const struct ke_state_handler scanu_default_handler;
ke_state_t scanu_state[1];
