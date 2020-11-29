int bl60x_check_mac_status(int * is_ok);
typedef struct dump_data_t dump_data_t, *dump_data_t;

struct dump_data_t {
    uint32_t time;
    char * func_name;
    uint32_t rc_state;
    uint32_t rf_state;
    uint32_t mac_debugRegHWSM1;
    uint32_t mac_debugRegHWSM2;
    uint16_t mac_debugPortCoex;
    uint16_t mac_debugPortBackoff;
    uint16_t mac_debugPortMacPhyIf;
    uint16_t mac_debugPortMacPhyIf2;
    uint16_t phy_debugPortMainFSM;
    uint16_t phy_debugPortTDTX;
    uint16_t phy_debugPortDSSSCCK1;
    uint16_t phy_debugPortDSSSCCKTx;
};

void helper_channel_monitor(uint32_t chanfreq, timer_func_ptr * timer_func, int nrepeats, int mon_time_ms);
void helper_record_all_states(char * func_name);
void helper_record_dump(void);
void helper_record_rc_rf_states(uint32_t * rc_state, uint32_t * rf_state);
void helper_record_reset(void);
typedef struct HWStateMachineReg HWStateMachineReg, *HWStateMachineReg;

struct HWStateMachineReg {
    uint32_t rxControl:6;
    uint32_t reserved_7_6:2;
    uint32_t txControl:9;
    uint32_t reserved_23_17:7;
    uint32_t macControl:8;
};

void phy_macbyp_clr_status(void);
void phy_macbyp_reset(void);
void phy_macbyp_rx_print_status(void);
void phy_macbyp_rx_start(void);
void phy_mdm_reset(void);
longlong time_delta(longlong time1, longlong time0);
longlong timer_func_ptr(...);
#if 0 //TODO EXISTS ALEADY
/**
* @file phy_helper.c
* Source file for BL602
*/
#include "phy_helper.h"


static char *rc_state_str[8];
static char *rf_state_str[8];

struct HWStateMachineReg {
    uint32_t rxControl:6;
 // +0
    uint32_t reserved_7_6:2;
 // +0
    uint32_t txControl:9;
 // +0
    uint32_t reserved_23_17:7;
 // +0
    uint32_t macControl:8;
 // +0
};

struct dump_data_t {
    uint32_t time;
 // +0
    const char *func_name;
 // +4
    uint32_t rc_state;
 // +8
    uint32_t rf_state;
 // +12
    uint32_t mac_debugRegHWSM1;
 // +16
    uint32_t mac_debugRegHWSM2;
 // +20
    uint16_t mac_debugPortCoex;
 // +24
    uint16_t mac_debugPortBackoff;
 // +26
    uint16_t mac_debugPortMacPhyIf;
 // +28
    uint16_t mac_debugPortMacPhyIf2;
 // +30
    uint16_t phy_debugPortMainFSM;
 // +32
    uint16_t phy_debugPortTDTX;
 // +34
    uint16_t phy_debugPortDSSSCCK1;
 // +36
    uint16_t phy_debugPortDSSSCCKTx;
 // +38
};

static struct dump_data_t dump_data_poll[18];
static uint8_t dump_data_ptr;

typedef long long (*timer_func_ptr)(...);

void helper_channel_monitor(uint32_t chanfreq, timer_func_ptr timer_func, int nrepeats, int mon_time_ms);




/** helper_channel_monitor
 */
void helper_channel_monitor(uint32_t chanfreq, timer_func_ptr timer_func, int nrepeats, int mon_time_ms)
{
	ASSER_ERR(FALSE);
	return;
}
#endf 0 //TODO EXISTS ALEADY
