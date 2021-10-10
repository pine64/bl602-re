#include "hal_desc.h"


struct rx_dmadesc rx_dma_hdrdesc[];
struct rx_payloaddesc rx_payload_desc[];
uint32_t rx_payload_desc_buffer[212];
struct dma_desc bcn_dwnld_desc;
