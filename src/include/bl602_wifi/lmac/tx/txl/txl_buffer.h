#ifndef _TXL_BUFFER_H_
#define _TXL_BUFFER_H_

#include <stdint.h>

#include <dma/dma.h>
#include <hal/hal_desc.h>


struct txl_buffer_hw_desc_tag {
    struct dma_desc dma_desc; // +0
    struct tx_pbd pbd; // +16
};

struct txl_buffer_list_tag {
    struct txl_buffer_tag *first; // +0
    struct txl_buffer_tag *last; // +4
};

struct txl_buffer_idx_tag {
    uint32_t used_area; // +0
    uint32_t free; // +4
    uint32_t free_size; // +8
    uint32_t last; // +12
    uint32_t next_needed; // +16
    uint32_t buf_size; // +20
    uint32_t *pool; // +24
    struct txl_buffer_hw_desc_tag *desc; // +28
    uint8_t count; // +32
};

struct txl_buffer_control {
    union {
        struct tx_policy_tbl policy_tbl;
        struct tx_compressed_policy_tbl comp_pol_tbl;
    }; // +0
    uint32_t mac_control_info; // +52
    uint32_t phy_control_info; // +56
};

struct txl_buffer_env_tag {
    struct txl_buffer_idx_tag buf_idx[5]; // +0
    struct txl_buffer_list_tag list[5]; // +180
};

struct txl_buffer_tag {
    uint32_t length; // +0
    uint32_t lenheader; // +4
    uint32_t lenpad; // +8
    uint32_t flags; // +12
    struct txl_buffer_tag *next; // +16
    struct txdesc *txdesc; // +20
    struct dma_desc dma_desc[1]; // +24
    struct dma_desc dma_desc_pat; // +40
    struct tx_pbd tbd; // +56
    struct tx_pbd tbd_body[8]; // +76
    uint8_t user_idx; // +236
    struct txl_buffer_control buffer_control; // +240
    struct tx_pbd tkip_mic_icv_pbd; // +300
    uint8_t tkip_mic_icv[12]; // +320
    uint32_t payload[0]; // +332
};

extern struct txl_buffer_env_tag txl_buffer_env;
extern struct txl_buffer_control txl_buffer_control_desc[10];
extern struct txl_buffer_control txl_buffer_control_desc_bcmc[2];

void txl_buffer_push(uint8_t access_category, struct txl_buffer_tag *buf);
struct txl_buffer_tag *txl_buffer_pop(uint8_t access_category);
struct txl_buffer_tag *txl_buffer_get(struct txdesc *txdesc);
struct txl_buffer_control *txl_buffer_control_get(struct txdesc *txdesc);
void *txl_buffer_payload_get(struct txdesc *txdesc);
void txl_buffer_control_copy(struct txdesc *txdesc, struct txl_buffer_tag *buf);
void txl_buffer_mic_compute(struct txdesc *txdesc, uint32_t *mic_key, uint32_t start, uint32_t len, uint8_t access_category);
void txl_buffer_init(void);
void txl_buffer_reinit(void);
void txl_buffer_reset(void);
struct txl_buffer_tag *txl_buffer_alloc(struct txdesc *txdesc, uint8_t access_category, uint8_t user_idx);
void txl_buffer_update_thd(struct txdesc *txdesc);

#endif 
