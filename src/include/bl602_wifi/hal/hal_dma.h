#ifndef _HAL_DMA_H_
#define _HAL_DMA_H_

#include <stdint.h>

#include <dma/dma.h>
#include <modules/common/co_list.h>


typedef void (*cb_dma_func_ptr)(void *, int);
struct hal_dma_desc_tag {
    struct co_list_hdr hdr; // +0
    struct dma_desc *dma_desc; // +4
    cb_dma_func_ptr cb; // +8
    void *env; // +12
};
struct hal_dma_env_tag {
    struct co_list prog[2]; // +0
    struct co_list free_gp_dma_descs; // +16
    uint16_t lli_cnt[2]; // +24
};

extern struct hal_dma_env_tag hal_dma_env;

void hal_dma_init(void);
void hal_dma_push(struct hal_dma_desc_tag *desc, int type);
void hal_dma_evt(int dma_queue);

#endif // _HAL_DMA_H_
