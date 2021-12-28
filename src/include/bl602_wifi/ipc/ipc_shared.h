#ifndef _IPC_SHARED_H_
#define _IPC_SHARED_H_
#include <stdint.h>
#include <lmac/tx/tx_swdesc.h>

#include <blconfig.h>

struct ipc_a2e_msg {
    uint32_t dummy_word; // +0
    uint32_t msg[127]; // +4
}; // :213:8
struct ipc_shared_env_tag {
    volatile struct ipc_a2e_msg msg_a2e_buf; // +0
    volatile uint32_t pattern_addr; // +512
    volatile struct txdesc_host txdesc0[4]; // +516
}; // :244:8
extern struct ipc_shared_env_tag ipc_shared_env; // :257:34
#endif // _IPC_SHARED_H_