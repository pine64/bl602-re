
void hal_dma_evt(int dma_queue);
void hal_dma_push(hal_dma_desc_tag * desc, int type);
#if 0 //TODO EXISTS ALEADY
/**
* @file hal_dma.c
* Source file for BL602
*/
#include "hal_dma.h"


const uint8_t dma2chan[2];
const uint8_t dma2lli[2];
struct hal_dma_env_tag hal_dma_env;

void hal_dma_init(void);
void hal_dma_push(struct hal_dma_desc_tag *desc, int type);
void hal_dma_evt(int dma_queue);




/** hal_dma_init
 */
void hal_dma_init(void)
{
	ASSER_ERR(FALSE);
	return;
}

/** hal_dma_push
 */
void hal_dma_push(struct hal_dma_desc_tag *desc, int type)
{
	ASSER_ERR(FALSE);
	return;
}

/** hal_dma_evt
 */
void hal_dma_evt(int dma_queue)
{
	ASSER_ERR(FALSE);
	return;
}
#endf 0 //TODO EXISTS ALEADY
