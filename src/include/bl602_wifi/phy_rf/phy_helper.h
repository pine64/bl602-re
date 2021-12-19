#ifndef _PHY_HELPER_H_
#define _PHY_HELPER_H_
#include <stdint.h>

typedef long long (*timer_func_ptr)(void*); // :237:21

struct HWStateMachineReg {
    uint32_t rxControl:6; // +0
    uint32_t reserved_7_6:2; // +0
    uint32_t txControl:9; // +0
    uint32_t reserved_23_17:7; // +0
    uint32_t macControl:8; // +0
}; // :59:8

struct dump_data_t {
    uint32_t time; // +0
    const char *func_name; // +4
    uint32_t rc_state; // +8
    uint32_t rf_state; // +12
    uint32_t mac_debugRegHWSM1; // +16
    uint32_t mac_debugRegHWSM2; // +20
    uint16_t mac_debugPortCoex; // +24
    uint16_t mac_debugPortBackoff; // +26
    uint16_t mac_debugPortMacPhyIf; // +28
    uint16_t mac_debugPortMacPhyIf2; // +30
    uint16_t phy_debugPortMainFSM; // +32
    uint16_t phy_debugPortTDTX; // +34
    uint16_t phy_debugPortDSSSCCK1; // +36
    uint16_t phy_debugPortDSSSCCKTx; // +38
}; // :68:8

int bl60x_check_mac_status(int * is_ok);
void helper_channel_monitor(uint32_t chanfreq, timer_func_ptr * timer_func, int nrepeats, int mon_time_ms);
void helper_record_all_states(char * func_name);
void helper_record_dump(void);
void helper_record_rc_rf_states(uint32_t * rc_state, uint32_t * rf_state);
void helper_record_reset(void);

#endif