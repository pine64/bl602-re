
void helper_record_all_states(char * );
void hal_machw_abs_timer_handler(void);
void hal_machw_gen_handler(void);
void hal_machw_idle_irq_handler(void);
void hal_machw_idle_req(void);
void hal_machw_monitor_mode(void);
uint8_t hal_machw_search_addr(mac_addr * addr);
void hal_machw_setfreq(uint8_t newfreq);
_Bool hal_machw_sleep_check(void);
void hal_machw_stop(void);
void helper_record_all_states(void);
#if 0 //TODO EXISTS ALEADY
/**
* @file hal_machw.c
* Source file for BL602
*/
#include "hal_machw.h"


const uint8_t rxv2macrate[];

void hal_machw_idle_req(void);
void hal_machw_stop(void);
void hal_machw_init(void);
void hal_machw_disable_int(void);
void hal_machw_reset(void);
uint8_t hal_machw_search_addr(struct mac_addr *addr);
void hal_machw_monitor_mode(void);
bool hal_machw_sleep_check(void);
void hal_machw_gen_handler(void);




/** hal_machw_idle_req
 */
void hal_machw_idle_req(void)
{
	ASSER_ERR(FALSE);
	return;
}

/** hal_machw_stop
 */
void hal_machw_stop(void)
{
	ASSER_ERR(FALSE);
	return;
}

/** hal_machw_init
 */
void hal_machw_init(void)
{
	ASSER_ERR(FALSE);
	return;
}

/** hal_machw_disable_int
 */
void hal_machw_disable_int(void)
{
	ASSER_ERR(FALSE);
	return;
}

/** hal_machw_reset
 */
void hal_machw_reset(void)
{
	ASSER_ERR(FALSE);
	return;
}

/** hal_machw_search_addr
 */
uint8_t hal_machw_search_addr(struct mac_addr *addr)
{
	ASSER_ERR(FALSE);
	return 0xff;
}

/** hal_machw_monitor_mode
 */
void hal_machw_monitor_mode(void)
{
	ASSER_ERR(FALSE);
	return;
}

/** hal_machw_sleep_check
 */
bool hal_machw_sleep_check(void)
{
	ASSER_ERR(FALSE);
	return false;
}

/** hal_machw_gen_handler
 */
void hal_machw_gen_handler(void)
{
	ASSER_ERR(FALSE);
	return;
}
#endf 0 //TODO EXISTS ALEADY
