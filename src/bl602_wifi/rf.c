#include "rf.h"
#include "rfc_bl602.h"

void rf_set_channel(uint8_t bandwidth, uint16_t channel_freq) {
    rfc_config_channel(channel_freq);
}

void rf_clkpll_isr(void) {
    return ;
}

void rf_init(void) {
    __asm(
        "csrrci a5, mstatus, 0x8\n\t"
        "andi a5, a5, 0x8\n\t"
        "beqz a5, .L0\n\t"
        "csrrsi zero, mstatus, 0x8\n\t"
        ".L0:"
    );
}

void rf_lo_isr(void) {
    return ;
}
