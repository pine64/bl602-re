#ifndef __RXU_CNTRL_H__
#define __RXU_CNTRL_H__

#include <stdbool.h>
#include <stdint.h>

#include <rx/rx_swdesc.h>
#include <me/me_mic.h>


enum rx_status_bits {
    RX_STAT_FORWARD = 1,
    RX_STAT_ALLOC = 2,
    RX_STAT_DELETE = 4,
    RX_STAT_LEN_UPDATE = 8,
    RX_STAT_ETH_LEN_UPDATE = 16,
    RX_STAT_COPY = 32,
};

enum rxu_cntrl_frame_info_pos {
    RXU_CNTRL_MIC_CHECK_NEEDED = 1,
    RXU_CNTRL_PN_CHECK_NEEDED = 2,
    RXU_CNTRL_NEW_MESH_PEER = 4,
};

struct rxu_mic_calc {
    struct mic_calc mic_calc; // +0
    uint32_t last_bytes[2]; // +16
};

struct rx_cntrl_rx_status {
    uint16_t frame_cntl; // +0
    uint16_t seq_cntl; // +2
    uint16_t sn; // +4
    uint8_t fn; // +6
    uint8_t tid; // +7
    uint8_t machdr_len; // +8
    uint8_t sta_idx; // +9
    uint8_t vif_idx; // +10
    uint8_t dst_idx; // +11
    uint64_t pn; // +16
    uint32_t statinfo; // +24
    uint32_t host_buf_addr; // +28
    struct key_info_tag *key; // +32
    struct mac_addr da; // +36
    struct mac_addr sa; // +42
    uint8_t frame_info; // +48
    bool eth_len_present; // +49
    uint8_t payl_offset; // +50
};

struct rx_cntrl_ipcdesc {
    uint32_t host_id; // +0
};

struct rx_cntrl_dupli {
    struct mac_addr last_src_addr; // +0
    uint16_t last_seq_cntl; // +6
};

struct rx_cntrl_pm_mon {
    struct mac_addr addr; // +0
    uint8_t pm_state; // +6
    bool mon; // +7
};

struct rxu_cntrl_env_tag {
    struct rx_cntrl_rx_status rx_status; // +0
    struct co_list rxdesc_pending; // +56
    struct co_list rxdesc_ready; // +64
    struct rx_cntrl_ipcdesc rx_ipcdesc_stat; // +72
    struct co_list rxu_defrag_free; // +76
    struct co_list rxu_defrag_used; // +84
    struct rx_cntrl_dupli rxu_dupli; // +92
    struct mac_addr *mac_addr_ptr; // +100
    struct rx_cntrl_pm_mon pm_mon; // +104
    uint32_t ttr; // +112
};


extern struct rxu_cntrl_env_tag rxu_cntrl_env;


bool rxu_cntrl_frame_handle(struct rx_swdesc *swdesc);
void rxu_cntrl_init(void);
void rxu_cntrl_monitor_pm(struct mac_addr *addr);
uint8_t rxu_cntrl_get_pm(void);

#endif // __RXU_CNTRL_H__
