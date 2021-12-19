#include <phy_rf/phy_helper.h>
#include <phy/mac_core.h>
#include <phy/sysctrl.h>
#include <soc/glb.h>
#include <soc/rf.h>

#include "utils.h"

static char *rc_state_str[8] = {
    "RC_IDLE",
    "RC_RX2ON",
    "RC_TX2ON",
    "RC_RXON",
    "RC_TX2PAON",
    "UNKNOWN",
    "UNKNOWN",
    "RC_TXPAON",
};

static char *rf_state_str[8] = {
    "RF_PD",
    "RF_SB",
    "RF_LO",
    "RF_RX",
    "RF_TX",
    "RF_T2RI",
    "RF_R2T",
    "RF_MS",
};

static struct dump_data_t dump_data_poll[18]; // :86:27
static uint8_t dump_data_ptr; // :87:16

int bl60x_check_mac_status(int * is_ok) {
    int ok = 0;
    for (int i = 0; i < dump_data_ptr; i++) {
        if (dump_data_poll[i].mac_debugRegHWSM2 != 0x8801e000) {
            ok = 1;
            break;
        }
    }
    * is_ok = ok;
}

void helper_channel_monitor(uint32_t chanfreq, timer_func_ptr * timer_func, int nrepeats, int mon_time_ms) {
    // no code
    return ;
}

void helper_record_all_states(char * func_name) {
    int id = dump_data_ptr;
    dump_data_poll[id].func_name = func_name;
    dump_data_poll[id].time = MAC_CORE->MONOTONIC_COUNTER_2_LO.value;

    helper_record_rc_rf_states(&dump_data_poll[id].rc_state, &dump_data_poll[id].rf_state);

    dump_data_poll[id].mac_debugRegHWSM1 = MAC_CORE->DEBUG_HWSM_1.value;
    dump_data_poll[id].mac_debugRegHWSM2 = MAC_CORE->DEBUG_HWSM_2.value;

    MAC_CORE->DEBUG_PORT_SEL.debugPortSel1 = 0x31;
    MAC_CORE->DEBUG_PORT_SEL.debugPortSel2 = 0;

    *(uint32_t*)(&dump_data_poll[id].mac_debugPortCoex) = MAC_CORE->DEBUG_PORT_VALUE.value;
    
    MAC_CORE->DEBUG_PORT_SEL.debugPortSel1 = 0xb;
    MAC_CORE->DEBUG_PORT_SEL.debugPortSel2 = 0x2f;

    *(uint32_t*)(&dump_data_poll[id].mac_debugPortMacPhyIf) = MAC_CORE->DEBUG_PORT_VALUE.value;
    
    SYSCTRL->r074 = 0x33a;
    SYSCTRL->diag_conf.diag_sel = 0x14;

    GLB->DBG_SEL_LL.value = 0x4;
    GLB->DBG_SEL_LH.value = 0x40000004;
    GLB->DBG_SEL_HL.value = 0x80000004;
    GLB->DBG_SEL_HH.value = 0xc0000004;

    GLB->debug.debug_oe = 0;

    uint32_t debug = GLB->debug.value;

    dump_data_poll[id].phy_debugPortTDTX = (uint16_t)(debug >> 1);
    dump_data_poll[id].phy_debugPortMainFSM = (uint16_t)(debug >> 0x11);

    SYSCTRL->r074 = 0xb09;
    
    GLB->debug.debug_oe = 0;
    debug = GLB->debug.value;
    dump_data_poll[id].phy_debugPortDSSSCCK1 = (uint16_t)(debug >> 1);
    dump_data_poll[id].phy_debugPortDSSSCCKTx = (uint16_t)(debug >> 0x11);
    dump_data_ptr = (dump_data_ptr + 1) & 0xf;
}

void helper_record_dump(void) {
    puts("========= helper_record_dump\r\n");
    for (int i = 0; i < dump_data_ptr; i++) {
        struct dump_data_t *data = &dump_data_poll[i];
        printf("[%d] time %ld, func %s\r\n", i, data->time, data->func_name);
        printf("MAC: %08lx: rxControlCs %d,txControlCs %d,macControlCs %d\r\n",
            data->mac_debugRegHWSM2, 
            data->mac_debugRegHWSM2 & 0x3f,
            data->mac_debugRegHWSM2 >> 8 & 0x1ff,
            data->mac_debugRegHWSM2 >> 24 & 0xff
        );
        printf("MAC: Coex %04x,Backoff %04x,MPIF %04x,MPIF2 %04x\r\n", 
            (uint32_t)data->mac_debugPortCoex,
            (uint32_t)data->mac_debugPortBackoff,
            (uint32_t)data->mac_debugPortMacPhyIf,
            (uint32_t)data->mac_debugPortMacPhyIf2
        );
        printf("PHY: MainFSM %04x,TDTX %04x,DSSSCCK1 %04x,DSSSCCKTx %04x\r\n",
            (uint32_t)data->phy_debugPortMainFSM,
            (uint32_t)data->phy_debugPortTDTX,
            (uint32_t)data->phy_debugPortDSSSCCK1,
            (uint32_t)data->phy_debugPortDSSSCCKTx
        );
        
        printf("RFC: RC %s, RF %s\r\n", rc_state_str[data->rc_state], rf_state_str[data->rf_state]);
    }
    printf("\r\n\r\n");
}

void helper_record_rc_rf_states(uint32_t * rc_state, uint32_t * rf_state) {
    RF->rfif_dfe_ctrl0.value = RF->rfif_dfe_ctrl0.value & 0xfffffff | 0x10000000;
    uint32_t x = RF->rfif_test_read.value;
    RF->rfif_dfe_ctrl0.value = RF->rfif_dfe_ctrl0.value & 0xfffffff | 0x20000000;
    x = RF->rfif_test_read.value;
    *rc_state = x >> 0x1c & 7;
    *rf_state = x >> 0x19 & 7;
}

void helper_record_reset(void) {
    dump_data_ptr = 0;
}
