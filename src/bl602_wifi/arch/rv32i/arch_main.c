#include <arch/arch.h>
#include <modules/ke/ke_env.h>
#include <modules/ke/ke_event.h>
#include <hal/hal_machw.h>
#include <utils.h>

#include <phy/sysctrl.h>
#include <phy/sysctrl92.h>
#include <phy/mac_core.h>

#include <soc/ef_data_0.h>
#include <soc/glb.h>
#include <soc/gpip.h>
#include <soc/AON.h>

#include <arch/rv32i/ll.h>
#include <macro.h>
#include <phy_rf/rfc_bl602.h>
#include <phy_rf/phy_bl602.h>
#include <intc/intc.h>
#include <sysctrl/sysctrl.h>

#include <lmac/bl/bl.h>
#include <ipc/ipc_emb.h>

#include <FreeRTOS.h>
#include <task.h>

int dbg_assert_block = 1; // :54:5
extern uint8_t mac_hw_reset;

void assert_rec(const char *condition, const char *file, int line) {
    #ifdef PRINT_ASSERT
    printf("[Assertion failed] [%s:%d] %s\r\n". file, line, condition);
    #endif
    if (mac_hw_reset != 1)
        return ;
    if (((int)ke_env.evt_field) < 0)
        return ;
    hal_machw_disable_int();
    ke_evt_set(0x80000000);
    return ;
}

void assert_err(const char *condition, const char *file, int line) {
    #ifdef PRINT_ASSERT
    printf("[Assertion failed] [%s:%d] %s\r\n". file, line, condition);
    #endif
    for (;;);
    __builtin_unreachable();
}

void assert_warn(const char *condition, const char *file, int line) {
    #ifdef PRINT_ASSERT
    printf("[Assertion failed] [%s:%d] %s\r\n". file, line, condition);
    #endif
}

void force_trigger(const char *msg) {
    __disable_irq();
    SYSCTRL->diag_trigger = 1;
    SYSCTRL->diag_trigger = 0;
    __enable_irq();
}

static uint32_t packets_num;

static void _check_chip_status(void) {
    if (packets_num & 0xf) {
        uint32_t ef_wifi_mac_high = EF_DATA_0->ef_wifi_mac_high.value;
        uint32_t val = (ef_wifi_mac_high >> 0x18) & 7;
        if (val != 0) {
            if (val != 3) {
                GLB->swrst_cfg1.swrst_s1a2 = 1; // _ir_check?

                PACK(GPIP->gpdac_config, gpdac_config) {
                    gpdac_config.gpdac_en = 0;
                    gpdac_config.gpdac_en2 = 0;
                }
                GPIP->gpdac_dma_config.gpdac_dma_tx_en = 0;
            }
        }
        if ((ef_wifi_mac_high >> 0x18) & 4) {
            // _reset_all_except_uart_gpio
            GLB->swrst_cfg1.value = 0b00000000010111000010000000000000;
            PACK(AON->gpadc_reg_cmd, gpadc_reg_cmd) {
                gpadc_reg_cmd.gpadc_global_en = 0;
                gpadc_reg_cmd.gpadc_soft_rst = 1;
            }
        }
    }
    packets_num = packets_num + 1;
}

void coex_wifi_pta_forece_enable(int enable);

void wifi_main(void *param) {
    rfc_init(40000000);
    MAC_CORE->COEX_CONTROL.coexEnable = 1;
    mpif_clk_init();
    sysctrl_init();
    intc_init();
    ipc_emb_init();
    bl_init();
    PACK(MAC_CORE->COEX_PTI, pti) {
        pti.coexPTIAck = 0x7;
        pti.coexPTICntl = 0x3;
        pti.coexPTIMgt = 0x0;
        pti.coexPTIVOData = 0xf;
        pti.coexPTIVIData = 0x4;
        pti.coexPTIBEData = 0x2;
        pti.coexPTIBKData = 0x0;
        pti.coexPTIBcnData = 0x0;
    }
    MAC_CORE->COEX_CONTROL.value = 0x1;
    MAC_CORE->COEX_CONTROL.value = 0;
    MAC_CORE->COEX_CONTROL.value = 0x69;
    MAC_CORE->COEX_CONTROL.coexAutoPTIAdjEnable = 0;
    SYSCTRL92->ptr_config = 0x5010001f;
    for (;;) {
        int32_t counter = MAC_CORE->MONOTONIC_COUNTER_2_LO.monotonicCounterLow2;
        if ((counter << 12) < 0) {
            // or gpio_out? seems to be a selector?
            SYSCTRL->time.time_greater_on_bit12 = 1; 
        } else {
            SYSCTRL->time.time_greater_on_bit12 = 0; 
        }
        if (ke_env.evt_field == 0) {
            ipc_emb_wait();
        }
        _check_chip_status();
        ke_evt_schedule();
        int res = bl_sleep();
        coex_wifi_pta_forece_enable(res == 0);
    }
}

void coex_dump_pta(void) {
    #ifdef PRINT_ASSERT
    printf("%d\r\n", SYSCTRL92->ptr_config);
    #endif
}

#define dump_print(var, field) printf(#field" = %u, ", (uint32_t)var.field);
#define DUMP(var, ...) APPLYarg(dump_print, var, __VA_ARGS__);

void coex_dump_wifi(void) {
    #ifdef PRINT_ASSERT
    DUMP(MAC_CORE->COEX_CONTROL, coexEnable, coexForceEnable, coexWlanChanOffset, coexWlanChanFreq, coexForceWlanChanNw, coexForceWlanPtiToggle, coexForceWlanPti);
    DUMP(MAC_CORE->COEX_PTI, coexPTIAck, coexPTICntl, coexPTIMgt, coexPTIVOData, coexPTIVIData, coexPTIBEData, coexPTIBKData, coexPTIBcnData);
    printf("MAC_CORE->coex_stat = %u\r\n", MAC_CORE->coex_stat);
    #endif
}

void coex_wifi_rf_forece_enable(int enable) {
    if (enable != 0)
        enable = 1;
    rfc_coex_force_to(enable, 0);
}

void coex_wifi_pti_forece_enable(int enable) {
    if (enable == 0) {
        MAC_CORE->COEX_CONTROL.coexForceEnable = 0;
    } else {
        MAC_CORE->COEX_CONTROL.coexForceWlanPti = 0xf;
        MAC_CORE->COEX_CONTROL.coexForceEnable = 1;
    }
    if (MAC_CORE->COEX_CONTROL.coexForceWlanPtiToggle) {
        MAC_CORE->COEX_CONTROL.coexForceWlanChanBw = 0;
    } else {
        MAC_CORE->COEX_CONTROL.coexForceWlanChanBw = 1;
    }
}

uint32_t pds_slept_time;
uint32_t pds_woken_time;

typedef enum {
  SUCCESS  = 0, 
  ERROR   = 1,
  TIMEOUT = 2,
} BL_Err_Type;
extern BL_Err_Type AON_LowPower_Enter_PDS0(void);
extern BL_Err_Type AON_LowPower_Exit_PDS0(void);

void coex_wifi_pta_forece_enable(int enable) {
    static int pta_status = 0xffffffff;
    static TickType_t time_sleep;
    if (pta_status != enable) {
        if (pta_status == 0) {
            TickType_t now = xTaskGetTickCount();
            pds_slept_time = pds_slept_time + (now - time_sleep);
        } else {
            if (pta_status == 1) {
                TickType_t now = xTaskGetTickCount();
                pds_woken_time = pds_woken_time + (now - time_sleep);
                __disable_irq();
                uint32_t bl_nap = bl_nap_calculate();
                __enable_irq();
                if (bl_nap > 1000) {
                    AON_LowPower_Enter_PDS0();
                    vTaskDelay(bl_nap / 1000);
                    AON_LowPower_Exit_PDS0();
                    
                }
            }
        }
        pta_status = enable;
        time_sleep = xTaskGetTickCount();
    }
}
