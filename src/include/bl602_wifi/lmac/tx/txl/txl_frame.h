#ifndef _TXL_FRAME_H_
#define _TXL_FRAME_H_

#include <stdbool.h>
#include <stdint.h>

#include <lmac/tx/txl/txl_buffer.h>
#include <lmac/tx/tx_swdesc.h>

#include <modules/mac/mac_frame.h>

#include <blconfig.h>

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

/// TX frame buffer pool
// (332 + NX_TXFRAME_LEN) / 4 == 147
// NX_TXFRAME_LEN == 256
extern uint32_t txl_frame_pool[NX_TXFRAME_CNT][(sizeof(struct txl_buffer_tag) + NX_TXFRAME_LEN) / 4];

#if NX_BCN_AUTONOMOUS_TX
/// Pool of TIM IE buffers
extern uint32_t txl_tim_ie_pool[NX_VIRT_DEV_MAX][CO_ALIGN4_HI(MAC_TIM_BMP_OFT + 1)/4];
/// Pool of TIM virtual bitmap
extern uint32_t txl_tim_bitmap_pool[NX_VIRT_DEV_MAX][CO_ALIGN4_HI(MAC_TIM_SIZE)/4];
/// Pool of TIM descriptors
extern struct tx_pbd txl_tim_desc[NX_VIRT_DEV_MAX][2];
/// Beacon buffer pool
// 211 == (332 + NX_BCNFRAME_LEN) / 4
extern uint32_t txl_bcn_pool[NX_VIRT_DEV_MAX][(sizeof(struct txl_buffer_tag) + NX_BCNFRAME_LEN) / 4];
/// TX beacon header descriptor pool
extern struct tx_hw_desc txl_bcn_hwdesc_pool[NX_VIRT_DEV_MAX];
/// TX payload buffer descriptor for the post-TIM part of the beacon
extern struct tx_pbd txl_bcn_end_desc[NX_VIRT_DEV_MAX];
extern struct txl_buffer_control txl_bcn_buf_ctrl[NX_VIRT_DEV_MAX];

#if (NX_P2P_GO)
/// Pool of P2P NOA payload descriptors
extern struct tx_pbd txl_p2p_noa_desc[NX_VIRT_DEV_MAX];
/// Pool of P2P NOA Attributes
extern uint16_t txl_p2p_noa_ie_pool[NX_VIRT_DEV_MAX][P2P_NOA_IE_BUFFER_LEN];
#endif //(NX_P2P_GO)

#if (RW_MESH_EN)
// Payload Descriptor for additional IEs of Mesh Beacon
extern struct tx_pbd txl_mesh_add_ies_desc[RW_MESH_VIF_NB];
// Buffer containing the additional IEs of Mesh Beacon
extern struct mesh_add_ies_tag txl_mesh_add_ies[RW_MESH_VIF_NB];
#endif //(RW_MESH_EN)
#endif //(NX_BCN_AUTONOMOUS_TX)

/// TX frame header descriptor pool
extern struct tx_hw_desc txl_frame_hwdesc_pool[NX_TXFRAME_CNT];

/// Default policy table for 2.4GHz band
extern struct txl_buffer_control txl_buffer_control_24G;
/// Default policy table for 5GHz band
extern struct txl_buffer_control txl_buffer_control_5G;
extern struct tx_policy_tbl txl_frame_pol_24G ;
extern struct tx_policy_tbl txl_frame_pol_5G ;

extern struct txl_buffer_control txl_frame_buf_ctrl[NX_TXFRAME_CNT];
extern struct tx_cfm_tag txl_bcn_hwdesc_cfms[NX_VIRT_DEV_MAX];

extern struct tx_cfm_tag txl_frame_hwdesc_cfms[NX_TXFRAME_CNT];

extern struct txl_buffer_control txl_buffer_control_24G;
extern struct txl_buffer_control txl_buffer_control_5G;
extern struct txl_buffer_control txl_frame_buf_ctrl[NX_TXFRAME_CNT];

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

#endif 
