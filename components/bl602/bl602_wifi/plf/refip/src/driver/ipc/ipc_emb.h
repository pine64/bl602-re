typedef struct ipc_emb_env_tag ipc_emb_env_tag, *ipc_emb_env_tag;

typedef struct co_list co_list, *co_list;

typedef struct txdesc_host txdesc_host, *txdesc_host;

typedef struct co_list_hdr co_list_hdr, *co_list_hdr;

typedef struct hostdesc hostdesc, *hostdesc;

typedef struct mac_addr mac_addr, *mac_addr;

struct co_list_hdr {
    struct co_list_hdr * next;
};

struct co_list {
    struct co_list_hdr * first;
    struct co_list_hdr * last;
};

struct mac_addr {
    u8_l array[6];
};

struct hostdesc {
    uint32_t pbuf_addr;
    u32_l packet_addr;
    u16_l packet_len;
    undefined field_0xa;
    undefined field_0xb;
    u32_l status_addr;
    struct mac_addr eth_dest_addr;
    struct mac_addr eth_src_addr;
    u16_l ethertype;
    u16_l pn[4];
    u16_l sn;
    u16_l timestamp;
    u8_l tid;
    u8_l vif_idx;
    u8_l staid;
    undefined field_0x2d;
    u16_l flags;
    u32_l pbuf_chained_ptr[4];
    u32_l pbuf_chained_len[4];
};

struct ipc_emb_env_tag {
    struct co_list rx_queue;
    struct co_list cfm_queue;
    uint8_t ipc_rxdesc_idx;
    uint8_t ipc_rxbuf_idx;
    uint8_t ipc_radar_buf_idx;
    uint8_t ipc_msge2a_buf_idx;
    uint8_t ipc_dbg_buf_idx;
    uint8_t ipc_msgacke2a_cnt;
    undefined field_0x16;
    undefined field_0x17;
    uint32_t txdesc_idx;
    struct txdesc_host * txdesc;
};

struct txdesc_host {
    uint32_t ready;
    struct hostdesc host;
    uint32_t pad_txdesc[55];
    uint32_t pad_buf[128];
};

void ipc_emb_init(void);
uint32_t ipc_emb_tx_evt_field(uint32_t stat);
_Bool ipc_emb_tx_q_has_data(int queue_idx);
void ipc_emb_txcfm_ind(void);
void ipc_emb_wait(void);
#if 0 //TODO EXISTS ALEADY
/**
* @file ipc_emb.h
* Header file for BL602
*/
#ifndef __IPC_EMB_H__
#define __IPC_EMB_H__

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
struct ipc_emb_env_tag ipc_emb_env;const int nx_txdesc_cnt_msk[];

#endif // __IPC_EMB_H__
#endf 0 //TODO EXISTS ALEADY
