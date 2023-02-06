#include <lmac/tx/txl/txl_frame.h>
#include <hal/hal_desc.h>

#include <modules/common/co_math.h>

uint32_t txl_frame_pool[NX_TXFRAME_CNT][(sizeof(struct txl_buffer_tag) + NX_TXFRAME_LEN) / 4];


#if NX_BCN_AUTONOMOUS_TX
//uint32_t txl_tim_ie_pool[NX_VIRT_DEV_MAX][CO_ALIGN4_HI(MAC_TIM_BMP_OFT + 1)/4];
//uint32_t txl_tim_bitmap_pool[NX_VIRT_DEV_MAX][CO_ALIGN4_HI(MAC_TIM_SIZE)/4];
uint8_t txl_tim_ie_pool[CO_ALIGN4_HI(MAC_TIM_BMP_OFT + 1)];
uint8_t txl_tim_bitmap_pool[CO_ALIGN4_HI(MAC_TIM_SIZE)];

//struct tx_pbd txl_tim_desc[NX_VIRT_DEV_MAX][2];
struct tx_pbd txl_tim_desc[2];

uint32_t txl_bcn_pool[(sizeof(struct txl_buffer_tag) + NX_BCNFRAME_LEN)];
//struct tx_hw_desc_s txl_bcn_hwdesc_pool[NX_VIRT_DEV_MAX];
struct tx_hw_desc_s txl_bcn_hwdesc_pool;
struct tx_pbd txl_bcn_end_desc;//[NX_VIRT_DEV_MAX];

struct txl_buffer_control txl_bcn_buf_ctrl;//[NX_VIRT_DEV_MAX];

#if (NX_P2P_GO)
/// Pool of P2P NOA payload descriptors
struct tx_pbd txl_p2p_noa_desc[NX_VIRT_DEV_MAX];
/// Pool of P2P NOA Attributes
uint16_t txl_p2p_noa_ie_pool[NX_VIRT_DEV_MAX][P2P_NOA_IE_BUFFER_LEN];
#endif //(NX_P2P_GO)

#if (RW_MESH_EN)
// Payload Descriptor for additional IEs of Mesh Beacon
struct tx_pbd txl_mesh_add_ies_desc[RW_MESH_VIF_NB];
// Buffer containing the additional IEs of Mesh Beacon
struct mesh_add_ies_tag txl_mesh_add_ies[RW_MESH_VIF_NB];
#endif //(RW_MESH_EN)
#endif //(NX_BCN_AUTONOMOUS_TX)

struct tx_hw_desc_s txl_frame_hwdesc_pool[NX_TXFRAME_CNT] ;

/// Default buffer control structure for 2.4GHz band
struct txl_buffer_control txl_buffer_control_24G;

#if (RW_BFMER_EN)
/// Default policy table for transmission of NDPA and BRP frames sent during Beamforming Sounding procedure
struct txl_buffer_control txl_buffer_control_ndpa_brp;
/// Default policy table for NDP frame sent during Beamforming Sounding procedure
struct txl_buffer_control txl_buffer_control_ndp;
#endif //(RW_BFMER_EN)

struct txl_buffer_control txl_frame_buf_ctrl[NX_TXFRAME_CNT] ;

#endif