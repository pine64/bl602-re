#include "rwble.h"

#include <bl602.h>
#include <em/em_buf.h>
#include <lld/lld.h>
#include <llc/llc.h>
#include <llm/llm.h>

/** rwble_init
 */
void rwble_init(void)
{
	em_buf_init();
	lld_init(0);
	llc_init();
	llm_init(0);
	BL_WR_WORD(0x28000050, 0);
}

/** rwble_reset
 */
void rwble_reset(void)
{
	__builtin_trap();
}

/** rwble_sleep_check
 */
bool rwble_sleep_check(void)
{
	__builtin_trap();
}

/** rwble_activity_ongoing_check
 */
bool rwble_activity_ongoing_check(void)
{
	__builtin_trap();
}

/** rwble_version
 */
void rwble_version(uint8_t *fw_version, uint8_t *hw_version)
{
	__builtin_trap();
}

/** rwble_isr_clear
 */
void rwble_isr_clear(void)
{
	__builtin_trap();
}

/** rwble_isr
 */
void rwble_isr(void)
{
	__builtin_trap();
}
