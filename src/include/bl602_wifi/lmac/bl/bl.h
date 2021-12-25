#ifndef _BL_H_
#define _BL_H_

#include <stdint.h>


struct bl_env_tag {
    uint8_t prev_hw_state; // +0
    int hw_in_doze; // +4
};

extern struct bl_env_tag bl_env;

void bl_init(void);
uint32_t bl_nap_calculate(void);
int bl_sleep(void);
void bl_reset_evt(int dummy);

#endif // _BL_H_
