#ifndef __RF_H__
#define __RF_H__

#include <stdint.h>


void rf_set_channel(uint8_t bandwidth, uint16_t channel_freq);
void rf_dump_status(void);

#endif // __RF_H__
