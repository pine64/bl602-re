void coex_wifi_pta_forece_enable(int );
void GLB_Set_WiFi_Core_CLK(uint8_t );
void _check_chip_status(void);
void _dac_check(void);
void _ir_check(void);
void _reset_all_except_uart_gpio(void);
void AON_LowPower_Enter_PDS0(void);
void AON_LowPower_Exit_PDS0(void);
void assert_err(char * condition, char * file, int line);
void assert_rec(char * condition, char * file, int line);
void assert_warn(char * condition, char * file, int line);
void coex_dump_pta_enable(void);
void coex_dump_wifi_cntl(void);
void coex_dump_wifi_pti(void);
void coex_dump_wifi_status(void);
void coex_wifi_pta_forece_enable(int enable);
void coex_wifi_pti_forece_enable(int enable);
void coex_wifi_rf_forece_enable(int enable);
void force_trigger(char * msg);
void wifi_main(void * param);
#if 0 //TODO EXISTS ALEADY
/**
* @file arch_main.c
* Source file for BL602
*/
#include "arch_main.h"


int dbg_assert_block;

void assert_rec(const char *condition, const char *file, int line);
void assert_err(const char *condition, const char *file, int line);
void assert_warn(const char *condition, const char *file, int line);
void force_trigger(const char *msg);
void wifi_main(void *param);
void coex_dump_pta(void);
void coex_dump_wifi(void);
void coex_wifi_rf_forece_enable(int enable);
void coex_wifi_pti_forece_enable(int enable);

uint32_t pds_slept_time;
uint32_t pds_woken_time;

void coex_wifi_pta_forece_enable(int enable);




/** assert_rec
 */
void assert_rec(const char *condition, const char *file, int line)
{
	ASSER_ERR(FALSE);
	return;
}

/** assert_err
 */
void assert_err(const char *condition, const char *file, int line)
{
	ASSER_ERR(FALSE);
	return;
}

/** assert_warn
 */
void assert_warn(const char *condition, const char *file, int line)
{
	ASSER_ERR(FALSE);
	return;
}

/** force_trigger
 */
void force_trigger(const char *msg)
{
	ASSER_ERR(FALSE);
	return;
}

/** wifi_main
 */
void wifi_main(void *param)
{
	ASSER_ERR(FALSE);
	return;
}

/** coex_dump_pta
 */
void coex_dump_pta(void)
{
	ASSER_ERR(FALSE);
	return;
}

/** coex_dump_wifi
 */
void coex_dump_wifi(void)
{
	ASSER_ERR(FALSE);
	return;
}

/** coex_wifi_rf_forece_enable
 */
void coex_wifi_rf_forece_enable(int enable)
{
	ASSER_ERR(FALSE);
	return;
}

/** coex_wifi_pti_forece_enable
 */
void coex_wifi_pti_forece_enable(int enable)
{
	ASSER_ERR(FALSE);
	return;
}

/** coex_wifi_pta_forece_enable
 */
void coex_wifi_pta_forece_enable(int enable)
{
	ASSER_ERR(FALSE);
	return;
}
#endf 0 //TODO EXISTS ALEADY
