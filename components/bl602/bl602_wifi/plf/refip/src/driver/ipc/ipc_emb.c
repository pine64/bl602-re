void ipc_emb_cfmback_irq(void);
void ipc_emb_dbg_dma_int_handler(void);
_Bool ipc_emb_hostrxdesc_check(void);
void ipc_emb_kmsg_hdlr(ke_msg * kmsg_ipc);
void ipc_emb_msg_dma_int_handler(void);
void ipc_emb_msg_evt(int dummy);
void ipc_emb_msg_irq(void);
void ipc_emb_notify(void);
void ipc_emb_prim_tbtt_ind(void);
void ipc_emb_radar_event_ind(void);
void ipc_emb_sec_tbtt_ind(void);
void ipc_emb_tx_evt(int queue_idx);
void ipc_emb_tx_flow_off(void);
void ipc_emb_tx_flow_on(void);
void ipc_emb_tx_irq(void);
void ipc_emb_txcfm_ind(uint32_t queue_bits);
void ipc_emb_txdesc_copy(txdesc * dst_local, txdesc_host * src_shared);
#if 0 //TODO EXISTS ALEADY
/**
* @file ipc_emb.c
* Source file for BL602
*/
#include "ipc_emb.h"


int internel_cal_size_tx_desc;
static TaskHandle_t xTaskToNotify;
uint32_t ipc_emb_counter;
const uint32_t ipc_emb_evt_bit[5];
struct ipc_emb_env_tag ipc_emb_env;
const int nx_txdesc_cnt_msk[];

void ipc_emb_msg_dma_int_handler(void);
void ipc_emb_dbg_dma_int_handler(void);
void ipc_emb_dump(void);




/** ipc_emb_msg_dma_int_handler
 */
void ipc_emb_msg_dma_int_handler(void)
{
	ASSER_ERR(FALSE);
	return;
}

/** ipc_emb_dbg_dma_int_handler
 */
void ipc_emb_dbg_dma_int_handler(void)
{
	ASSER_ERR(FALSE);
	return;
}

/** ipc_emb_dump
 */
void ipc_emb_dump(void)
{
	ASSER_ERR(FALSE);
	return;
}
#endf 0 //TODO EXISTS ALEADY
