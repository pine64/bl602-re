#ifndef __PHY_ADAPT_H__
#define __PHY_ADAPT_H__

#include <stdint.h>

#include <hal/hal_desc.h>


void pa_init(void);
void pa_input(uint8_t id, struct rx_hd *rhd);
void pa_adapt(uint8_t id);

#endif // __PHY_ADAPT_H__
