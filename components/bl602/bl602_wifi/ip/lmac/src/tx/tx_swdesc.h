#ifndef __TX_SWDESC_H__
#define __TX_SWDESC_H__

#include <stdbool.h>
#include <stdint.h>

#include <hal/hal_desc.h>
#include <co_list.h>
#include <mac.h>


struct hostdesc {
    uint32_t pbuf_addr; // +0
    uint32_t packet_addr; // +4
    uint16_t packet_len; // +8
    uint32_t status_addr; // +12
    struct mac_addr eth_dest_addr; // +16
    struct mac_addr eth_src_addr; // +22
    uint16_t ethertype; // +28
    uint16_t pn[4]; // +30
    uint16_t sn; // +38
    uint16_t timestamp; // +40
    uint8_t tid; // +42
    uint8_t vif_idx; // +43
    uint8_t staid; // +44
    uint16_t flags; // +46
    uint32_t pbuf_chained_ptr[4]; // +48
    uint32_t pbuf_chained_len[4]; // +64
};

struct umacdesc {
    struct txl_buffer_control *buf_control; // +0
    uint32_t buff_offset; // +4
    uint16_t payl_len; // +8
    uint8_t head_len; // +10
    uint8_t hdr_len_802_2; // +11
    uint8_t tail_len; // +12
};

struct lmacdesc {
    struct tx_agg_desc *agg_desc; // +0
    struct txl_buffer_tag *buffer; // +4
    struct tx_hw_desc *hw_desc; // +8
};

struct txdesc {
    struct co_list_hdr list_hdr; // +0
    struct hostdesc host; // +4
    struct umacdesc umac; // +84
    struct lmacdesc lmac; // +100
    struct tx_hw_desc hw_desc; // +112
    struct tx_cfm_tag hw_cfm; // +184
    uint32_t buf[128]; // +204
};

struct txdesc_host {
    uint32_t ready; // +0
    struct hostdesc host; // +4
    uint32_t pad_txdesc[55]; // +84
    uint32_t pad_buf[128]; // +304
};


extern struct txdesc *txdesc_array;
extern const int nx_txdesc_cnt[5];


bool is_int_frame(struct txdesc *txdesc);
bool is_qos_data(struct txdesc *txdesc);

#endif // __TX_SWDESC_H__
