#include "td.h"

struct td_env_tag td_env[2];

static void td_timer_end(void *env);


/** td_init
 */
void td_init(void)
{
	__builtin_trap();
}

/** td_reset
 */
void td_reset(uint8_t vif_index)
{
	__builtin_trap();
}

/** td_start
 */
void td_start(uint8_t vif_index)
{
	__builtin_trap();
}

/** td_pck_ind
 */
void td_pck_ind(uint8_t vif_index, uint8_t sta_index, bool rx)
{
	__builtin_trap();
}

/** td_pck_ps_ind
 */
void td_pck_ps_ind(uint8_t vif_index, bool rx)
{
	__builtin_trap();
}

/** td_timer_end
 */
static void td_timer_end(void *env)
{
	__builtin_trap();
}
