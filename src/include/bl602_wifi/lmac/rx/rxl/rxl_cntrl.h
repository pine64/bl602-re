#ifndef _RXL_CNTRL_H_
#define _RXL_CNTRL_H_

#include <stdint.h>

#include <hal/hal_desc.h>
#include <modules/common/co_list.h>


struct rxl_cntrl_env_tag {
    struct co_list ready; // +0
    struct rx_dmadesc *first; // +8
    struct rx_dmadesc *last; // +12
    struct rx_dmadesc *free; // +16
    uint32_t packet_stack_cnt; // +20
};


extern struct rxl_cntrl_env_tag rxl_cntrl_env;


void rxl_init(void);
void rxl_reset(void);
void rxl_cntrl_evt(int dummy);
void rxl_timer_int_handler(void);
void rxl_timeout_int_handler(void);
void rxl_mpdu_free(struct rx_swdesc *swdesc);
void rxl_mpdu_transfer(struct rx_swdesc *swdesc);
void rxl_dma_int_handler(void);
void rxl_dma_evt(int dummy);

/// Threshold of frame upload preparation before which we handle the DMA interrupts
#define RX_FRAME_PREP_THD                 4
#endif // _RXL_CNTRL_H_
