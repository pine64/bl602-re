#ifndef __TXU_CNTRL_H__
#define __TXU_CNTRL_H__

#include <stdbool.h>
#include <stdint.h>

#include <lmac/tx/tx_swdesc.h>


bool txu_cntrl_push(struct txdesc *txdesc, uint8_t access_category);
void txu_cntrl_frame_build(struct txdesc *txdesc, uint32_t buf);
void txu_cntrl_tkip_mic_append(struct txdesc *txdesc, uint8_t ac);
void txu_cntrl_cfm(struct txdesc *txdesc);
void txu_cntrl_protect_mgmt_frame(struct txdesc *txdesc, uint32_t frame, uint16_t hdr_len);

#endif // __TXU_CNTRL_H__
