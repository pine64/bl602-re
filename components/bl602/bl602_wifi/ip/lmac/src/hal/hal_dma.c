#include "hal_dma.h"


extern const uint8_t dma2chan[2];
extern const uint8_t dma2lli[2];
struct hal_dma_env_tag hal_dma_env;


void hal_dma_init(void)
{
	__builtin_trap();
}

void hal_dma_push(struct hal_dma_desc_tag *desc, int type)
{
	__builtin_trap();
}

void hal_dma_evt(int dma_queue)
{
	__builtin_trap();
}
