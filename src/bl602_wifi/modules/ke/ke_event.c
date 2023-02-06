#include <modules/ke/ke_event.h>
#include <modules/ke/ke_mem.h>

#include <modules/common/co_list.h>

#include <lmac/mm/mm.h>
#include <lmac/mm/mm_timer.h>
#include <lmac/tx/txl/txl_cfm.h>
#include <lmac/rx/rxl/rxl_cntrl.h>
#include <lmac/bl/bl.h>
#include <ipc/ipc_emb.h>
#include <modules/ke/ke_task.h>
#include <modules/ke/ke_timer.h>

#include <umac/rxu/rxu_cntrl.h>

#include <arch/rv32i/ll.h>
#include <assert.h>

typedef void (*evt_ptr_t)(int);

struct ke_evt_tag {
    evt_ptr_t func; // +0
    int param; // +4
};

void bl_event_handle(int param) {
    ke_evt_clear(KE_EVT_MAIN_BIT);
    void bl_main_event_handle(void); // this is a wifidrv function
    bl_main_event_handle();
}

void bl_fw_statistic_dump(int param);

#define EVENT_DEF(name, F, P) [KE_EVT_##name] = {.func = F, .param = P},
static const struct ke_evt_tag ke_evt_hdlr[32] = {
    #include <modules/ke/ke_events_list.h>
};
#undef EVENT_DEF

void bl_fw_statistic_dump(int param) {
    void bl_utils_dump(void);
    void txl_frame_dump(void);
    void ipc_emb_dump(void);
    void txl_cntrl_env_dump(void);
    void txl_cfm_dump(void);
    void rxl_hwdesc_dump(void);
    void rxl_cntrl_dump(void);
    void hal_mib_dump(void);
    ke_evt_clear(KE_EVT_EVM_VIA_MAC_TEST_BIT);
    bl_utils_dump();
    txl_frame_dump();
    ipc_emb_dump();
    txl_cntrl_env_dump();
    txl_cfm_dump();
    rxl_hwdesc_dump();
    rxl_cntrl_dump();
    hal_mib_dump();
}

void ke_evt_set(const evt_field_t event) {
    __disable_irq();
    ke_env.evt_field |= event;
    __enable_irq();
}

void ke_evt_clear(const evt_field_t event) {
    __disable_irq();
    ke_env.evt_field &= ~event;
    __enable_irq();
}

void ke_evt_schedule(void) {
    while (ke_env.evt_field) {
        int event = __builtin_clz(ke_env.evt_field);
        ASSERT_ERR((event < KE_EVT_MAX) && ke_evt_hdlr[event].func);
        ke_evt_hdlr[event].func(ke_evt_hdlr[event].param);
    }
}

void ke_init(void) {
    ke_env.mblock_first = ke_mem_init();
    ke_env.queue_saved.first = (struct co_list_hdr *)0x0;
    ke_env.queue_saved.last = (struct co_list_hdr *)0x0;
    ke_env.queue_sent.first = (struct co_list_hdr *)0x0;
    ke_env.queue_sent.last = (struct co_list_hdr *)0x0;
    ke_env.queue_timer.first = (struct co_list_hdr *)0x0;
    ke_env.queue_timer.last = (struct co_list_hdr *)0x0;
    ke_evt_clear(0xffffffff);
}

void ke_flush(void) {
    struct co_list_hdr *cur;
    for (cur = co_list_pop_front(&ke_env.queue_sent); cur; cur = co_list_pop_front(&ke_env.queue_sent))
        ke_msg_free((struct ke_msg *)cur);
    for (cur = co_list_pop_front(&ke_env.queue_saved); cur; cur = co_list_pop_front(&ke_env.queue_saved))
        ke_msg_free((struct ke_msg *)cur);
    for (cur = co_list_pop_front(&ke_env.queue_timer); cur; cur = co_list_pop_front(&ke_env.queue_timer))
        ke_free((struct ke_msg *)cur);
    ke_evt_clear(0xffffffff);
}

void bl60x_fw_dump_statistic(int forced) {
    if (forced != 0) {
        bl_fw_statistic_dump(0);
        return ;
    }
    ke_evt_set(KE_EVT_EVM_VIA_MAC_TEST_BIT);
}
