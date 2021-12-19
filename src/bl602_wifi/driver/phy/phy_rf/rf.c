#include <phy_rf/rf.h>
#include <phy_rf/rfc_bl602.h>

void rf_set_channel(uint8_t bandwidth, uint16_t channel_freq) {
    rfc_config_channel(channel_freq);
}

void rf_clkpll_isr(void) {
    return ;
}

void rf_init(void) {
   __asm("csrci   mstatus, 8\n\t"
        "csrsi   mstatus, 8\n\t"
    );
}

void rf_lo_isr(void) {
    return ;
}
