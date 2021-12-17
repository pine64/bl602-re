#ifndef __LLM_TASK_H__
#define __LLM_TASK_H__

#include <stdint.h>

#include <co_bt_defines.h>
#include <ke_msg.h>
#include <ke_task.h>

enum llm_state_id {
    LLM_ADV_STATE_MASK = 240,
    LLM_SCAN_INIT_STATE_MASK = 15,
    LLM_COEXT_IDLE_IDLE = 0,
    LLM_COEXT_ADVERTISING_IDLE = 16,
    LLM_COEXT_STOPPING_IDLE = 32,
    LLM_COEXT_IDLE_SCANNING = 1,
    LLM_COEXT_IDLE_INITIATING = 2,
    LLM_COEXT_IDLE_STOPPING = 3,
    LLM_COEXT_ADVERTISING_SCANNING = 17,
    LLM_COEXT_ADVERTISING_INITIATING = 18,
    LLM_COEXT_ADVERTISING_STOPPING = 19,
    LLM_COEXT_STOPPING_SCANNING = 33,
    LLM_COEXT_STOPPING_INITIATING = 34,
    LLM_COEXT_STOPPING_STOPPING = 35,
    LLM_TEST = 36,
    LLM_STATE_MAX = 37,
};
enum llm_msg_id {
    LLM_LE_SET_HOST_CH_CLASS_CMD_STO = 0,
    LLM_STOP_IND = 1,
    LLM_LE_SET_HOST_CH_CLASS_REQ = 2,
    LLM_LE_SET_HOST_CH_CLASS_REQ_IND = 3,
    LLM_ENC_REQ = 4,
    LLM_ENC_IND = 5,
    LLM_ECC_RESULT_IND = 6,
    LLM_LE_CHNL_ASSESS_TIMER = 7,
    LLM_GEN_CHNL_CLS_CMD = 8,
    LLM_LE_ENH_PRIV_ADDR_RENEW_TIMER = 9,
};
struct llm_enc_req {
    struct ltk key; // +0
    uint8_t plain_data[16]; // +16
};
struct llm_enc_ind {
    uint8_t status; // +0
    uint8_t encrypted_data[16]; // +1
};
extern const struct ke_state_handler llm_default_handler;
extern ke_state_t llm_state[1];

#endif // __LLM_TASK_H__
