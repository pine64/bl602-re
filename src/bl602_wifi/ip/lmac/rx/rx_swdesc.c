#include <blconfig.h>

#include <lmac/rx/rx_swdesc.h>
#include <hal/hal_desc.h>

struct rx_swdesc rx_swdesc_tab[NX_RXDESC_CNT];

void rx_swdesc_init(void) {
    for (int i = 0; i < NX_RXDESC_CNT; i++) {
        rx_swdesc_tab[i].dma_hdrdesc = rx_dma_hdrdesc + i;
    }
}
