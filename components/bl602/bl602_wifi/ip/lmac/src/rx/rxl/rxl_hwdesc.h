#ifndef __RXL_HWDESC_H__
#define __RXL_HWDESC_H__

#include <hal/hal_desc.h>


struct rxl_hwdesc_env_tag {
    struct rx_pbd *last; // +0
    struct rx_pbd *free; // +4
};


extern struct rxl_hwdesc_env_tag rx_hwdesc_env;


void rxl_hwdesc_init(int init);
void rxl_hd_append(struct rx_dmadesc *desc);
void rxl_pd_append(struct rx_pbd *first, struct rx_pbd *last, struct rx_pbd *spare);

#endif // __RXL_HWDESC_H__
