#include "rwip.h"

#include <stdbool.h>

typedef struct {
    uint32_t time;
 // +0
    uint32_t next_tick;
 // +4
} rwip_time_t;

const struct rwip_prio rwip_priority[7];
const uint8_t rwip_coex_cfg[5];

struct rwip_env_tag {
    uint32_t lp_cycle_wakeup_delay;
 // +0
    uint32_t sleep_acc_error;
 // +4
    uint16_t sleep_algo_dur;
 // +8
    uint16_t prevent_sleep;
 // +10
    bool sleep_enable;
 // +12
    bool ext_wakeup_enable;
 // +13
};

static struct rwip_env_tag rwip_env;
struct rwip_rf_api rwip_rf;
uint8_t *rwip_heap_em;
uint32_t rwip_heap_ram[707];
int32_t sw_wakeup_cnt;
int32_t sleep_dur_cnt;
int32_t sleep_stat_cnt;
int32_t sleep_cnt;

bool rwip_ext_wakeup_enable(void);
uint32_t rwip_sleep_lpcycles_2_us(uint32_t lpcycles);
uint32_t rwip_us_2_lpcycles(uint32_t us);
void rwip_wlcoex_set(bool state);




/** rwip_ext_wakeup_enable
 */
bool rwip_ext_wakeup_enable(void)
{
	__builtin_trap();
}

/** rwip_sleep_lpcycles_2_us
 */
uint32_t rwip_sleep_lpcycles_2_us(uint32_t lpcycles)
{
	__builtin_trap();
}

/** rwip_us_2_lpcycles
 */
uint32_t rwip_us_2_lpcycles(uint32_t us)
{
	__builtin_trap();
}

/** rwip_wlcoex_set
 */
void rwip_wlcoex_set(bool state)
{
	__builtin_trap();
}
