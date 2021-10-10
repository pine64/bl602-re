#ifndef __RX_SWDESC_H__
#define __RX_SWDESC_H__

#include <stdint.h>

#include <hal/hal_desc.h>
#include <co_list.h>


struct rx_swdesc {
    struct co_list_hdr list_hdr; // +0
    struct rx_dmadesc *dma_hdrdesc; // +4
    struct rx_payloaddesc *pd; // +8
    struct rx_pbd *last_pbd; // +12
    struct rx_pbd *spare_pbd; // +16
    uint32_t host_id; // +20
    uint32_t frame_len; // +24
    uint8_t status; // +28
    uint8_t pbd_count; // +29
    uint8_t use_in_tcpip; // +30
};


extern struct rx_swdesc rx_swdesc_tab[13];


void rx_swdesc_init(void);

#endif // __RX_SWDESC_H__
