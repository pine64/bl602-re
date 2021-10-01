#include "lld_sleep.h"

#include <stdbool.h>
#include <stdint.h>


struct lld_sleep_env_tag {
    uint32_t irq_mask;
 // +0
    int32_t last_sleep_dur;
 // +4
    bool sw_wakeup;
 // +8
    bool pds_reset;
 // +9
    uint32_t basetimecnt;
 // +12
    uint32_t finetimecnt;
 // +16
};

static struct lld_sleep_env_tag lld_sleep_env;


/** lld_sleep_get_pds_reset
 */
uint32_t lld_sleep_get_pds_reset(void)
{
	__builtin_trap();
}

/** lld_sleep_set_current_time
 */
void lld_sleep_set_current_time(void)
{
	__builtin_trap();
}
