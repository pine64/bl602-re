#include <blconfig.h>

#include <lmac/scan/scan_task.h>
#include <lmac/scan/scan.h>

#include <lmac/mm/mm_task.h>
#include <lmac/mm/mm.h>

#include <modules/ke/ke_task.h>
#include <modules/common/co_status.h>

ke_state_t scan_state[SCAN_IDX_MAX];

/** scan_start_req_handler
 */
static int scan_start_req_handler(const ke_msg_id_t msgid, const struct scan_start_req *param, const ke_task_id_t dest_id, const ke_task_id_t src_id) {
	struct scan_start_cfm *msg = KE_MSG_ALLOC(SCAN_START_CFM, src_id, dest_id, scan_start_cfm);
    if (ke_state_get(TASK_SCAN) == SCAN_IDLE) {
        ASSERT_ERR(param->chan_cnt > 0);

        msg->status = CO_OK;
        scan_env.chan_idx = 0;
        scan_env.param = param;
        scan_env.req_id = src_id;
        scan_ie_download(param);

        ke_msg_send(msg);
        return KE_MSG_NO_FREE;
    } else {
        msg->status = CO_BUSY;
        ke_msg_send(msg);
        return KE_MSG_CONSUMED;
    }
}

/** scan_cancel_req_handler
 */
static int scan_cancel_req_handler(const ke_msg_id_t msgid, const void *param, const ke_task_id_t dest_id, const ke_task_id_t src_id) {
	if (ke_state_get(TASK_SCAN) == SCAN_IDLE) {
        scan_send_cancel_cfm(CO_FAIL, src_id);
    } else {
        scan_env.abort = true;
    }
    return KE_MSG_CONSUMED;
}

/** mm_scan_channel_start_ind_handler
 */
static int mm_scan_channel_start_ind_handler(const ke_msg_id_t msgid, const void *param, const ke_task_id_t dest_id, const ke_task_id_t src_id) {
	ASSERT_ERR(ke_state_get(TASK_SCAN) == SCAN_WAIT_CHANNEL);
    // 0x2200
    mm_rx_filter_lmac_enable_set(NXMAC_ACCEPT_PROBE_RESP_BIT | NXMAC_ACCEPT_ALL_BEACON_BIT);
    if ((scan_env.param->chan[scan_env.chan_idx].flags & SCAN_PASSIVE_BIT) == 0) {
        scan_probe_req_tx();
    }

    ke_state_set(TASK_SCAN, SCAN_WAIT_BEACON_PROBE_RSP)

    return KE_MSG_CONSUMED;
}

/** mm_scan_channel_end_ind_handler
 */
static int mm_scan_channel_end_ind_handler(const ke_msg_id_t msgid, const void *param, const ke_task_id_t dest_id, const ke_task_id_t src_id) {
	ASSERT_ERR(ke_state_get(TASK_SCAN) == SCAN_WAIT_BEACON_PROBE_RSP);
    // ffffddff
    mm_rx_filter_lmac_enable_clear(NXMAC_ACCEPT_PROBE_RESP_BIT | NXMAC_ACCEPT_ALL_BEACON_BIT);

    scan_env.chan_idx = scan_env.chan_idx + 1;
    if ((scan_env.chan_idx < (scan_env.param)->chan_cnt) && (scan_env.abort == false)) {
        scan_set_channel_request();
    } else {
        ke_msg_free(ke_param2msg(scan_env.param));
        if (scan_env.abort == false) {
            ke_msg_send_basic(SCAN_DONE_IND, scan_env.req_id, TASK_SCAN);
        } else {
            scan_send_cancel_cfm(CO_OK, scan_env.req_id);
        }
        ke_state_set(TASK_SCAN, SCAN_IDLE);
    }

    return KE_MSG_CONSUMED;
}


const struct ke_msg_handler scan_default_state[4] = {
    [0] = {
        .id = SCAN_START_REQ, // 0x800
        .func = scan_start_req_handler,
    },
    [1] = {
        .id = MM_SCAN_CHANNEL_START_IND, // 0x61
        .func = mm_scan_channel_start_ind_handler,
    },
    [2] = {
        .id = MM_SCAN_CHANNEL_END_IND, // 0x62,
        .func = mm_scan_channel_end_ind_handler
    },
    [3] = {
        .id = SCAN_CANCEL_REQ, // 0x803,
        .func = scan_cancel_req_handler
    }
};

const struct ke_state_handler scan_default_handler = KE_STATE_HANDLER(scan_default_state);
