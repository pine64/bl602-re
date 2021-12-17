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

/** lld_sleep_init
 */
void lld_sleep_init(void)
{
	__builtin_trap();
}

/** lld_sleep_enter
 */
void lld_sleep_enter(uint32_t sleep_duration, bool ext_wakeup)
{
	__builtin_trap();
}

/** lld_sleep_wakeup
 */
void lld_sleep_wakeup(void)
{
	__builtin_trap();
}

/** lld_sleep_wakeup_end
 */
void lld_sleep_wakeup_end(void)
{
	__builtin_trap();
}

/** lld_sleep_set_sw_wakeup
 */
void lld_sleep_set_sw_wakeup(bool sw_wakeup)
{
	lld_sleep_env.sw_wakeup = sw_wakeup;
}

/** lld_sleep_is_sw_wakeup
 */
bool lld_sleep_is_sw_wakeup(void)
{
	return lld_sleep_env.sw_wakeup;
}

/** lld_sleep_set_last_sleep_dur
 */
void lld_sleep_set_last_sleep_dur(uint32_t sleep_dur)
{
	lld_sleep_env.last_sleep_dur = sleep_dur;
}

/** lld_sleep_get_last_sleep_dur
 */
uint32_t lld_sleep_get_last_sleep_dur(void)
{
	return lld_sleep_env.last_sleep_dur;
}

/** lld_sleep_set_pds_reset
 */
void lld_sleep_set_pds_reset(bool pds_reset)
{
	lld_sleep_env.pds_reset = pds_reset;
}

/** lld_sleep_get_pds_reset
 */
uint32_t lld_sleep_get_pds_reset(void)
{
	return lld_sleep_env.pds_reset;
}

/** lld_sleep_set_current_time
 */
void lld_sleep_set_current_time(void)
{
	__builtin_trap();
}
