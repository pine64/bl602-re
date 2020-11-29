/**
* @file lld_sleep.c
* Source file for BL602
*/
#include "lld_sleep.h"


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

uint32_t lld_sleep_get_pds_reset(void);
void lld_sleep_set_current_time(void);




/** lld_sleep_get_pds_reset
 */
uint32_t lld_sleep_get_pds_reset(void)
{
	ASSER_ERR(FALSE);
	return 0xffffffff;
}

/** lld_sleep_set_current_time
 */
void lld_sleep_set_current_time(void)
{
	ASSER_ERR(FALSE);
	return;
}
