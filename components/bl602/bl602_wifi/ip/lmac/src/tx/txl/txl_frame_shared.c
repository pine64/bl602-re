/**
* @file txl_frame_shared.c
* Source file for BL602
*/
#include "txl_frame_shared.h"


uint32_t txl_frame_pool[4];
uint8_t txl_tim_ie_pool[2];
uint8_t txl_tim_bitmap_pool[2];
struct tx_pbd txl_tim_desc[2];
uint32_t txl_bcn_pool[2];
struct tx_hw_desc txl_bcn_hwdesc_pool[2];
struct tx_cfm_tag txl_bcn_hwdesc_cfms[2];
struct tx_pbd txl_bcn_end_desc[2];
struct txl_buffer_control txl_bcn_buf_ctrl[2];
struct tx_hw_desc txl_frame_hwdesc_pool[4];
struct tx_cfm_tag txl_frame_hwdesc_cfms[4];
struct txl_buffer_control txl_buffer_control_24G;
struct txl_buffer_control txl_buffer_control_5G;
struct txl_buffer_control txl_frame_buf_ctrl[4];



