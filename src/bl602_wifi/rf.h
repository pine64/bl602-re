#ifndef _RF_H_
#define _RF_H_
#include <stdint.h>

void rf_set_channel(uint8_t bandwidth, uint16_t channel_freq);
void rf_clkpll_isr(void);
void rf_init(void);
void rf_lo_isr(void);
#endif