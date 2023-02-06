#ifndef _IPC_EMB_H_
#define _IPC_EMB_H_

#include <stdint.h>
#include <stdbool.h>
#include <modules/common/co_list.h>

#include <lmac/tx/tx_swdesc.h>

struct ipc_emb_env_tag {
    struct co_list rx_queue; // +0
    struct co_list cfm_queue; // +8
    uint8_t ipc_rxdesc_idx; // +16
    uint8_t ipc_rxbuf_idx; // +17
    uint8_t ipc_radar_buf_idx; // +18
    uint8_t ipc_msge2a_buf_idx; // +19
    uint8_t ipc_dbg_buf_idx; // +20
    uint8_t ipc_msgacke2a_cnt; // +21
    uint32_t txdesc_idx; // +24
    volatile struct txdesc_host *txdesc; // +28
};


extern struct ipc_emb_env_tag ipc_emb_env;
extern const int nx_txdesc_cnt_msk[];


static inline bool ipc_emb_tx_q_has_data(int queue_idx) {
    // guessed, not sure if it's !=0 or == 0
    // rationally, it should be != 0
    return (ipc_emb_env.txdesc + (ipc_emb_env.txdesc_idx & 3))->ready != 0;
}

uint32_t ipc_emb_tx_evt_field(uint32_t stat);
void ipc_emb_txcfm_ind(uint32_t queue_bits);
void ipc_emb_init(void);
void ipc_emb_notify(void);
void ipc_emb_wait(void);
void ipc_emb_msg_dma_int_handler(void);
void ipc_emb_dbg_dma_int_handler(void);
void ipc_emb_msg_irq(void);
void ipc_emb_cfmback_irq(void);
void ipc_emb_tx_irq(void);

void ipc_emb_tx_evt(int queue_idx);
void ipc_emb_msg_evt(int dummy);

#endif
