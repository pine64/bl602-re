#include <ipc/ipc_emb.h>
#include <phy/dma.h>
#include <phy/ipc.h>
#include <FreeRTOS.h>
#include <task.h>
#include <utils.h>
#include <ipc/ipc_shared.h>
#include <assert.h>
#include <modules/ke/ke_event.h>
#include <modules/ke/ke_mem.h>
#include <modules/ke/ke_msg.h>
#include <modules/ke/ke_env.h>
#include <modules/ke/ke_task.h>
#include <umac/txu/txu_cntrl.h>

#define IPC_EMB_SIGNATURE_RESET  0x49504332

int internel_cal_size_tx_desc; // :59:5
static TaskHandle_t xTaskToNotify; // :91:21
uint32_t ipc_emb_counter; // :92:10
const uint32_t ipc_emb_evt_bit[5] = {0x80, 0x100, 0x200, 0x400, 0x800};
struct ipc_emb_env_tag ipc_emb_env; // :110:24
const int nx_txdesc_cnt_msk[1] = {3}; // :113:11

void ipc_emb_msg_dma_int_handler(void) {
    // empty function
    return ;
}

void ipc_emb_dbg_dma_int_handler(void) {
    DMA->int_ack.b7 = 1;
    IPC->emb2app_trigger = 1;
}

void ipc_emb_dump(void) {
    // empty function
    return ;
}

bool ipc_emb_tx_q_has_data(int queue_idx) {
    // guessed, not sure if it's !=0 or == 0
    // rationally, it should be != 0
    return (ipc_emb_env.txdesc + (ipc_emb_env.txdesc_idx & 3))->ready != 0;
}

uint32_t ipc_emb_tx_evt_field(uint32_t stat) {
    // can't find impl
    return 0;
}

void ipc_emb_txcfm_ind(uint32_t queue_bits) {
    IPC->emb2app_trigger = queue_bits << 7;
}

void ipc_emb_init(void) {
    xTaskToNotify = xTaskGetCurrentTaskHandle();
    memset(&ipc_emb_env, 0, 0x20);
    ipc_emb_env.txdesc = ipc_shared_env.txdesc0;
    ASSERT_ERR(IPC->emb_signature == IPC_EMB_SIGNATURE_RESET);
    IPC->app2emb_line_sel_low.value = 0;
    IPC->app2emb_line_sel_high = 0;
    IPC->app2emb_line_sel_low.app2emb0_sel = 0;
    IPC->app2emb_line_sel_low.app2emb1_sel = 1;
    IPC->app2emb_line_sel_low.app2emb4_sel = 2;
    IPC->app2emb_line_sel_low.app2emb5_sel = 2;
    IPC->app2emb_line_sel_low.app2emb6_sel = 2;
    IPC->app2emb_line_sel_low.app2emb8_sel = 3;
    IPC->app2emb_line_sel_low.app2emb9_sel = 3;
    IPC->app2emb_line_sel_low.app2emb10_sel = 3;
    IPC->app2emb_line_sel_low.app2emb11_sel = 3;
    IPC->app2emb_line_sel_low.app2emb12_sel = 3;
    IPC->app2emb_unmask_set = 0x1f03;
}

void ipc_emb_notify(void) {
    ASSERT_ERR(xTaskToNotify != NULL);
    if (TrapNetCounter == 0) {
        xTaskGenericNotify(xTaskToNotify,0,eIncrement,(uint32_t *)0x0);
    } else {
        BaseType_t xHigherPriorityTaskWoken = pdFALSE;
        vTaskNotifyGiveFromISR(xTaskToNotify, &xHigherPriorityTaskWoken);
        if (xHigherPriorityTaskWoken != 0) {
            vTaskSwitchContext();
        }
    }
}

void ipc_emb_wait(void) {
    ulTaskNotifyTake(1, portMAX_DELAY);
}

void ipc_emb_tx_flow_off(void) {
	IPC->app2emb_unmask_clear = 0x1f00;
    ke_evt_clear(0xf80);
}

void ipc_emb_tx_flow_on(void) {
	IPC->app2emb_unmask_set = 0x1f00;
}

void ipc_emb_tx_irq(void) {
    uint32_t status = IPC->app2emb_status;
	if (status & 0x1f00) {
        ke_evt_set(status >> 1);
        IPC->app2emb_unmask_clear = status;
        IPC->app2emb_ack = status;
    }
}

void ipc_emb_txdesc_copy(struct txdesc *dst_local, volatile struct txdesc_host *src_shared) {
    for (int i = 0; i < sizeof(struct hostdesc); i++) {
        *(uint32_t*)&dst_local->host = *(uint32_t*)&src_shared->host;
    }
}

void ipc_emb_tx_evt(int queue_idx) {
	uint32_t event = ipc_emb_evt_bit[queue_idx];
    ke_evt_clear(event);
    while (true) {
        volatile struct txdesc_host* txdesc_hx = ipc_emb_env.txdesc + (ipc_emb_env.txdesc_idx & 3);
        if (txdesc_hx->ready != 0xffffffff) {
            IPC->app2emb_unmask_set = 0x100;
            return ;
        }
        if (((event & 0x800) == 0) && ((ke_env.evt_field & 0x440800) != 0)) break;
        IPC->app2emb_ack = 0x100;
        struct txdesc* txdesc = (struct txdesc*)txdesc_hx->pad_txdesc;
        memset(txdesc, 0, sizeof(struct txdesc));
        txdesc->hw_desc.cfm_ptr = &txdesc->hw_cfm;
        txdesc->lmac.hw_desc = &txdesc->hw_desc;
        ipc_emb_txdesc_copy(txdesc, txdesc_hx);
        txdesc->lmac.agg_desc = 0;
        txdesc->hw_desc.thd.nextmpdudesc_ptr = 0;
        txdesc->hw_desc.thd.optlen[0] = 0;
        txdesc->hw_desc.thd.optlen[1] = 0;
        txdesc->hw_desc.thd.optlen[2] = 0;
        txdesc->umac.buf_control = 0;
        txu_cntrl_push(txdesc, 0);
        txdesc_hx->ready = 1;
        ipc_emb_env.txdesc_idx = ipc_emb_env.txdesc_idx + 1;
    }
    ke_evt_set(event);
}

void ipc_emb_cfmback_irq(void) {
	if (IPC->app2emb_status & 0x20) {
        IPC->app2emb_unmask_clear = 0x20;
        IPC->app2emb_ack = 0x20;
        ke_evt_set(0x40000);
    }
	if (IPC->app2emb_status & 0x10) {
        IPC->app2emb_unmask_clear = 0x10;
        IPC->app2emb_ack = 0x10;
        ke_evt_set(0x80000);
    }
}

bool ipc_emb_hostrxdesc_check(void) {
	return 1;
}

void ipc_emb_radar_event_ind(void) {
	IPC->emb2app_trigger = 0x40;
}

void ipc_emb_prim_tbtt_ind(void) {
	IPC->emb2app_trigger = 0x10;
}

void ipc_emb_sec_tbtt_ind(void) {
	IPC->emb2app_trigger = 0x20;
}

void ipc_emb_kmsg_hdlr(struct ke_msg *kmsg_ipc) {
	struct ke_msg* kmsg_dst = ke_malloc(kmsg_ipc->param_len + sizeof(struct ke_msg));
    ASSERT_ERR(kmsg_dst != NULL);
    kmsg_dst->hdr.next = NULL;
    kmsg_dst->id = kmsg_ipc->id;
    kmsg_dst->dest_id = kmsg_ipc->dest_id;
    kmsg_dst->src_id = 13;
    kmsg_dst->param_len = kmsg_ipc->param_len;
    memcpy(kmsg_dst->param, kmsg_ipc->param, kmsg_dst->param_len);
    kmsg_ipc->src_id = ipc_emb_env.ipc_msgacke2a_cnt++;
    ipc_emb_env.ipc_msgacke2a_cnt = ipc_emb_env.ipc_msgacke2a_cnt;
    ASSERT_ERR(ke_task_local(kmsg_dst->dest_id));
    IPC->emb2app_trigger = 4;
    ke_msg_send(kmsg_dst + 1);
}

void ipc_emb_msg_irq(void) {
	if (IPC->app2emb_status & 2) {
        ke_evt_set(0x2000000);
        IPC->app2emb_unmask_clear = 2;
    }
}

void ipc_emb_msg_evt(int dummy) {
	for (uint32_t rawstatus = IPC->app2emb_rawstatus; rawstatus & 2; rawstatus = IPC->app2emb_rawstatus) {
        IPC->app2emb_ack = 2;
        ipc_emb_kmsg_hdlr((struct ke_msg *)&ipc_shared_env.msg_a2e_buf);
    }
    ke_evt_clear(0x2000000);
    IPC->app2emb_unmask_set = 2;
}
