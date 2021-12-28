#include <lmac/bl/bl.h>

#include <modules/common/notifier.h>
#include <modules/dbg/dbg.h>
#include <lmac/mm/mm.h>
#include <umac/me/me.h>

#include <modules/ke/ke_event.h>
#include <modules/ke/ke_task.h>

#include <modules/supplicant/w81connmgr.h>
#include <modules/supplicant/keyMgmtSta.h>
#include <utils.h>

#include <hal/hal_machw.h>

#include <lmac/rx/rxl/rxl_cntrl.h>
#include <lmac/tx/txl/txl_cntrl.h>
#include <lmac/ps/ps.h>

#include <phy/mac_pl.h>

#include <arch/rv32i/ll.h>

struct bl_env_tag bl_env;
static struct notifier_block *fw_nap_chain_ptr;
struct notifier_block fw_nap_chain;

extern void supplicantFuncInit(void); /// from bl_supplicant.c

void bl_init(void) {
    fw_nap_chain_ptr = &fw_nap_chain;
    bl_env.hw_in_doze = 0;
    dbg_init();
    me_init();
    mm_init();
    ke_init();
    memset(&sta_conn_info, 0, 0xec);
    sta_conn_info.ptkHwKeyId = sta_conn_info.mfpHwKeyId = 0xff;
    sta_conn_info.conType = 0;
    sta_conn_info.gtkHwKeyId = 0xff;
    supplicantFuncInit();
    allocSupplicantData(&sta_conn_info);
}

void bl_reset_evt(int dummy) {
    __disable_irq();
    ke_evt_clear(KE_EVT_RESET_BIT);
    hal_machw_reset();
    rxl_reset();
    txl_reset();
    mm_reset();
    vif_mgmt_reset();
    __enable_irq();
}

int bl_sleep(void) {
    // fun fact, this function is not going to
    // put anything into sleep.
    if (ke_evt_get()) return false;
    if (ke_state_get(TASK_SCANU) == 0) {
        if (!ps_sleep_check())
            return false;
        if (txl_cntrl_env.pck_cnt == 0) {
            return hal_machw_sleep_check();
        }
    }
    return false;
}

void bl_wakeup(void) {
    if (bl_env.hw_in_doze != 0) {
        // okay, bl_env.hw_in_doze is always zero
        MAC_PL->GEN_INT_ENABLE.masterGenIntEn = 0;
        MAC_PL->DOZE_CNTRL_2.wakeUpFromDoze = 1;
        bl_env.hw_in_doze = 0;
        for (; MAC_PL->GEN_INT_STATUS.idleInterrupt == 0;);
        MAC_PL->GEN_INT_ACK.value = 4;
        MAC_PL->GEN_INT_ENABLE.masterGenIntEn = 1;
        if (bl_env.prev_hw_state != HW_IDLE) {
            ASSERT_ERR((bl_env.prev_hw_state & (~0xf)) == 0);
            MAC_CORE->STATE_CNTRL.value = ((uint32_t)bl_env.prev_hw_state) << 4;
            for (; bl_env.prev_hw_state != MAC_CORE->STATE_CNTRL.currentState; );
        }
        MAC_PL->DOZE_CNTRL_2.wakeUpFromDoze = 0;
    }
}

uint32_t bl_nap_calculate(void) {
    uint32_t unmask = MAC_PL->TIMERS_INT_UN_MASK.value;
    // only used timer 0 - 8?
    uint32_t nap_time = 0xffffffff;
    for (int i = 0; i < 9; i++) {
        if ((1 << i) & unmask) {
            // timer i in use
            uint32_t tick = MAC_CORE->ABS_TIMER[i];
            uint32_t now = hal_machw_time();
            if (now < tick) {
                tick = tick - now;
            } else {
                tick = (now - 1) - tick;
            }
            if (tick < nap_time) {
                nap_time = tick;
            }
        }
    }
    return nap_time;
}

int bl_nap_call(uint32_t time) {
    return 0;
}

int bl_nap_hook_register(struct notifier_block *nb) {
    notifier_chain_regsiter(&fw_nap_chain_ptr, nb);
    return 0;
}

int bl_nap_hook_register_fromCritical(struct notifier_block *nb) {
    notifier_chain_regsiter_fromCritical(&fw_nap_chain_ptr, nb);
    return 0;
}

int bl_nap_hook_unregister(struct notifier_block *nb) {
    notifier_chain_unregsiter(&fw_nap_chain_ptr, nb);
    return 0;
}

int bl_nap_hook_unregister_fromCritical(struct notifier_block *nb) {
    notifier_chain_unregsiter_fromCritical(&fw_nap_chain_ptr, nb);
    return 0;
}

int bl_nap_hook_call(int event, void *env) {
    notifier_chain_call(&fw_nap_chain_ptr, event, env);
    return 0;
}

int bl_nap_hook_call_fromCritical(int event, void *env){
    notifier_chain_call_fromeCritical(&fw_nap_chain_ptr, event, env);
    return 0;
}
