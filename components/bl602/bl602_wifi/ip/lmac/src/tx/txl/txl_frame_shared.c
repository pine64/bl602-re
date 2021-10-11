#include "txl_frame.h"


extern uint32_t txl_frame_pool[147];
// extern uint8_t txl_tim_ie_pool[6]; TODO redecl of existing?
// extern uint8_t txl_tim_bitmap_pool[251]; TODO redecl of existing?
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
