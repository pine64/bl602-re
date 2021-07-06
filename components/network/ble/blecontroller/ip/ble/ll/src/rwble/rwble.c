/**
* @file rwble.c
* Source file for BL602
*/
#include "rwble.h"


void rwble_init(void);
void rwble_reset(void);
bool rwble_sleep_check(void);
bool rwble_activity_ongoing_check(void);
void rwble_version(uint8_t *fw_version, uint8_t *hw_version);
void rwble_isr_clear(void);
void rwble_isr(void);




/** rwble_init
 */
void rwble_init(void)
{
	em_buf_init();
	lld_init(0);
	llc_init();
	llm_init(0);
	_DAT_28000050 = 0;
}

/** rwble_reset
 */
void rwble_reset(void)
{
	ASSER_ERR(FALSE);
	return;
}

/** rwble_sleep_check
 */
bool rwble_sleep_check(void)
{
	ASSER_ERR(FALSE);
	return false;
}

/** rwble_activity_ongoing_check
 */
bool rwble_activity_ongoing_check(void)
{
	ASSER_ERR(FALSE);
	return false;
}

/** rwble_version
 */
void rwble_version(uint8_t *fw_version, uint8_t *hw_version)
{
	ASSER_ERR(FALSE);
	return;
}

/** rwble_isr_clear
 */
void rwble_isr_clear(void)
{
	ASSER_ERR(FALSE);
	return;
}

/** rwble_isr
 */
void rwble_isr(void)
{
	ASSER_ERR(FALSE);
	return;
}
