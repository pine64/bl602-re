#include <stdint.h>


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


void helper_record_reset(void)
{
	__builtin_trap();
}

int bl60x_check_mac_status(int *is_ok)
{
	__builtin_trap();
}

void helper_record_dump(void)
{
	__builtin_trap();
}

void helper_record_rc_rf_states(uint32_t *rc_state, uint32_t *rf_state)
{
	__builtin_trap();
}

void helper_record_all_states(const char *func_name)
{
	__builtin_trap();
}


typedef long long int (*timer_func_ptr)(void);


void wait_us(uint32_t us)
{
	__builtin_trap();
}

void wait_ms(uint32_t ms)
{
	__builtin_trap();
}

long long int time_delta(long long int time1, long long int time0)
{
	__builtin_trap();
}

float calc_ppm_ofdm(uint16_t rxv_freqoff)
{
	__builtin_trap();
}

float calc_ppm_dsss(uint8_t rxv_freqoff)
{
	__builtin_trap();
}

static void phy_mdm_reset(void)
{
	__builtin_trap();
}

static void phy_macbyp_reset(void)
{
	__builtin_trap();
}

void phy_macbyp_clr_status(void)
{
	__builtin_trap();
}

void phy_macbyp_rx_start(void)
{
	__builtin_trap();
}

void phy_macbyp_rx_print_status(void)
{
	__builtin_trap();
}

void helper_channel_monitor(uint32_t chanfreq, timer_func_ptr timer_func, int nrepeats, int mon_time_ms)
{
	__builtin_trap();
}
