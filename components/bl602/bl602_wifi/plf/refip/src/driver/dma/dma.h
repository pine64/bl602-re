typedef struct dma_desc dma_desc, *dma_desc;

struct dma_desc {
    uint32_t src;
    uint32_t dest;
    uint16_t length;
    uint16_t ctrl;
    uint32_t next;
};

typedef struct dma_env_tag dma_env_tag, *dma_env_tag;

struct dma_env_tag {
    struct dma_desc * last_dma[4];
};

#if 0 //TODO EXISTS ALEADY
/**
* @file dma.h
* Header file for BL602
*/
#ifndef __DMA_H__
#define __DMA_H__

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

#endif // __DMA_H__
#endf 0 //TODO EXISTS ALEADY
