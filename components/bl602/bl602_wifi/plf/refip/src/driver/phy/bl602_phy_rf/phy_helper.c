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
