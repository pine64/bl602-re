#include <intc/intc.h>
#include <phy_rf/phy_bl602.h>
#include <phy/intc.h>
#include <assert.h>
#include <ipc/ipc_emb.h>
#include <lmac/tx/txl/txl_cntrl.h>
#include <lmac/rx/rxl/rxl_cntrl.h>
#include <hal/hal_machw.h>
#include <phy/ipc.h>
#include <modules/ke/ke_event.h>

void intc_spurious(void) {
    ASSERT_ERR(0);
}

typedef void (*void_fn)(void);
static const void_fn intc_irq_handlers[64] = {
    [10] = phy_mdm_isr,
    [11] = phy_rc_isr,
    [24 ... 28] = txl_payload_handle,
    [29] = rxl_dma_int_handler,
    [30] = ipc_emb_msg_dma_int_handler,
    [31] = ipc_emb_dbg_dma_int_handler,
    [34] = intc_spurious,
    [36 ... 39] = intc_spurious,
    [50] = rxl_timer_int_handler,
    [51] = intc_spurious,
    [52] = rxl_timer_int_handler,
    [53] = txl_transmit_trigger,
    [54] = hal_machw_gen_handler,
    [55] = intc_spurious,
    [60] = intc_spurious,
    [61] = ipc_emb_msg_irq,
    [62] = ipc_emb_cfmback_irq,
    [63] = ipc_emb_tx_irq,
};

static void intc_enable_irq(int index) {
    INTC->irq_unmask_set[index >> 5] = 1 << (index & 0x1F);
}

void intc_init(void) {
    intc_enable_irq(63);
    intc_enable_irq(62);
    intc_enable_irq(61);
    intc_enable_irq(24);
    intc_enable_irq(25);
    intc_enable_irq(26);
    intc_enable_irq(27);
    intc_enable_irq(28);
    intc_enable_irq(29);
    intc_enable_irq(30);
    intc_enable_irq(31);
    intc_enable_irq(32);
    intc_enable_irq(33);
    intc_enable_irq(35);
    intc_enable_irq(55);
    intc_enable_irq(53);
    intc_enable_irq(50);
    intc_enable_irq(52);
    intc_enable_irq(54);
    intc_enable_irq(10);
    intc_enable_irq(11);
}

void mac_irq(void) {
    if (INTC->irq_status[0] == 0 && INTC->irq_status[1] == 0) {
        return ;
    }
    ASSERT_ERR(intc_irq_handlers[INTC->irq_index] != 0);
    intc_irq_handlers[INTC->irq_index]();
    ipc_emb_notify();
}

void ipc_host_disable_irq_e2a(void) {
    IPC->emb2app_unmask_clear = 0x7ff;
}

void bl_irq_handler(void) {
    ipc_host_disable_irq_e2a();
    ke_evt_set(0x40000000);
    ipc_emb_notify();
}
