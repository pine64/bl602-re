#include <phy_rf/rf.h>
#include <phy_rf/rfc_bl602.h>
#include <arch/rv32i/ll.h>

void rf_set_channel(uint8_t bandwidth, uint16_t channel_freq) {
    rfc_config_channel(channel_freq);
}

void rf_clkpll_isr(void) {
    return ;
}

void rf_init(void) {
   __disable_irq();
   __enable_irq();
}

void rf_lo_isr(void) {
    return ;
}

void rf_dump_status(void) {
    return ;
}