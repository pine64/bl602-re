#ifndef _CFG_TASK_H_
#define _CFG_TASK_H_

#include <stdint.h>

#include <modules/ke/ke_msg.h>

#define CFG_IDX_MAX 1


enum cfg_state_tag {
    CFG_IDLE = 0,
    CFG_STATE_MAX = 1,
};

enum cfg_msg_tag {
    CFG_START_REQ = 12288,
    CFG_START_CFM = 12289,
};

struct {
    uint32_t task; // +0
    uint32_t element; // +4
    uint32_t length; // +8
    uint32_t buf[0]; // +12
} cfg_start_req_u_tlv_t;

struct cfg_start_req {
	uint32_t ops; // +0
	union {
		struct {
			uint32_t task; // +0
			uint32_t element; // +4
		} get[0];
		struct {
			uint32_t task; // +0
			uint32_t element; // +4
		} reset[0];
		struct {
			uint32_t task; // +0
			uint32_t element; // +4
			uint32_t type; // +8
			uint32_t length; // +12
			uint32_t buf[0]; // +16
		} set[0];
	} u; // +4
};

struct cfg_start_cfm {
    uint8_t status; // +0
};


extern const struct ke_state_handler cfg_default_handler;
extern ke_state_t cfg_state[CFG_IDX_MAX];

#endif // _CFG_TASK_H_
