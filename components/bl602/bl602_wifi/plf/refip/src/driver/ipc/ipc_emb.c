#include "ipc_emb.h"

#include <FreeRTOS.h>
#include <task.h>

#include <tx/tx_swdesc.h>
#include <ke_msg.h>


extern int internel_cal_size_tx_desc;
static TaskHandle_t xTaskToNotify;
extern uint32_t ipc_emb_counter;
extern const uint32_t ipc_emb_evt_bit[5];
struct ipc_emb_env_tag ipc_emb_env;
const int nx_txdesc_cnt_msk[];


void ipc_emb_txdesc_copy(struct txdesc *dst_local, volatile struct txdesc_host *src_shared)
{
	__builtin_trap();
}

void ipc_emb_notify(void)
{
	__builtin_trap();
}

void ipc_emb_wait(void)
{
	__builtin_trap();
}

void ipc_emb_init(void)
{
	__builtin_trap();
}

void ipc_emb_tx_flow_off(void)
{
	__builtin_trap();
}

void ipc_emb_tx_flow_on(void)
{
	__builtin_trap();
}

void ipc_emb_tx_irq(void)
{
	__builtin_trap();
}

void ipc_emb_tx_evt(int queue_idx)
{
	__builtin_trap();
}

void ipc_emb_cfmback_irq(void)
{
	__builtin_trap();
}

bool ipc_emb_hostrxdesc_check(void)
{
	__builtin_trap();
}

void ipc_emb_radar_event_ind(void)
{
	__builtin_trap();
}

void ipc_emb_txcfm_ind(uint32_t queue_bits)
{
	__builtin_trap();
}

void ipc_emb_prim_tbtt_ind(void)
{
	__builtin_trap();
}

void ipc_emb_sec_tbtt_ind(void)
{
	__builtin_trap();
}

void ipc_emb_kmsg_hdlr(struct ke_msg *kmsg_ipc)
{
	__builtin_trap();
}

void ipc_emb_msg_irq(void)
{
	__builtin_trap();
}

void ipc_emb_msg_evt(int dummy)
{
	__builtin_trap();
}

void ipc_emb_msg_dma_int_handler(void)
{
	__builtin_trap();
}

void ipc_emb_dbg_dma_int_handler(void)
{
	__builtin_trap();
}

void ipc_emb_dump(void)
{
	__builtin_trap();
}
