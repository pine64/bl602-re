#ifndef __TXL_FRAME_H__
#define __TXL_FRAME_H__

#include <stdbool.h>
#include <stdint.h>

#include <tx/txl/txl_buffer.h>
#include <tx/tx_swdesc.h>


typedef void (*cfm_func_ptr)(void *, uint32_t);
struct txl_frame_cfm_tag {
    cfm_func_ptr cfm_func; // +0
    void *env; // +4
};

struct txl_frame_desc_tag {
    struct txdesc txdesc; // +0
    struct txl_frame_cfm_tag cfm; // +716
    uint8_t type; // +724
    bool postponed; // +725
    bool keep_desc; // +726
};

struct txl_frame_env_tag {
    struct co_list desc_free; // +0
    struct co_list desc_done; // +8
};

extern struct txl_frame_env_tag txl_frame_env;
extern uint32_t txl_frame_pool[147];
extern uint32_t txl_tim_ie_pool[2];
extern uint32_t txl_tim_bitmap_pool[63];
extern struct tx_pbd txl_tim_desc[2];
extern uint32_t txl_bcn_pool[211];
extern struct tx_hw_desc txl_bcn_hwdesc_pool[2];
extern struct tx_cfm_tag txl_bcn_hwdesc_cfms[2];
extern struct tx_pbd txl_bcn_end_desc[2];
extern struct txl_buffer_control txl_bcn_buf_ctrl[2];
extern struct tx_hw_desc txl_frame_hwdesc_pool[4];
extern struct tx_cfm_tag txl_frame_hwdesc_cfms[4];
extern struct txl_buffer_control txl_buffer_control_24G;
extern struct txl_buffer_control txl_buffer_control_5G;
extern struct txl_buffer_control txl_frame_buf_ctrl[4];

void txl_frame_init(bool reset);
void txl_frame_init_desc(struct txl_frame_desc_tag *frame, struct txl_buffer_tag *buffer, struct tx_hw_desc *hwdesc, struct txl_buffer_control *bufctrl);
struct txl_frame_desc_tag *txl_frame_get(int type, int len);
bool txl_frame_push(struct txl_frame_desc_tag *frame, uint8_t ac);
bool txl_frame_push_force(struct txl_frame_desc_tag *frame, uint8_t ac);
void txl_frame_cfm(struct txdesc *txdesc);
void txl_frame_release(struct txdesc *txdesc, bool postponed);
void txl_frame_evt(int dummy);
uint8_t txl_frame_send_null_frame(uint8_t sta_idx, cfm_func_ptr cfm, void *env);
uint8_t txl_frame_send_qosnull_frame(uint8_t sta_idx, uint16_t qos, cfm_func_ptr cfm, void *env);
uint8_t txl_frame_send_eapol_frame(uint8_t sta_idx, cfm_func_ptr cfm, void *cfm_env, uint8_t *pBuf, uint32_t pBuf_len);

#endif // __TXL_FRAME_H__
