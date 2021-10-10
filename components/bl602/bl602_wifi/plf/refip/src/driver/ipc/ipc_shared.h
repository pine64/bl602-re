#ifndef __IPC_SHARED_H__
#define __IPC_SHARED_H__

#include <stdint.h>

#include <tx/tx_swdesc.h>


struct ipc_a2e_msg {
	uint32_t dummy_word; // +0
	uint32_t msg[127]; // +4
};

struct ipc_shared_env_tag {
	volatile struct ipc_a2e_msg msg_a2e_buf; // +0
	volatile uint32_t pattern_addr; // +512
	volatile struct txdesc_host txdesc0[4]; // +516
};

struct ipc_shared_env_tag ipc_shared_env;

#endif // __IPC_SHARED_H__
