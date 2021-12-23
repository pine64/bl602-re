#ifndef _DMA_H_
#define _DMA_H_

#include <stdint.h>

struct dma_desc {
    uint32_t src; // +0
    uint32_t dest; // +4
    uint16_t length; // +8
    uint16_t ctrl; // +10
    uint32_t next; // +12
};

struct dma_env_tag {
    volatile struct dma_desc *last_dma[4]; // +0
};

extern struct dma_env_tag dma_env;

#endif 
