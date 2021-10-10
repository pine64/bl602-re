#include <stdint.h>


extern int dbg_assert_block;
extern uint8_t mac_hw_reset;

void assert_rec(const char *condition, const char *file, int line)
{
	__builtin_trap();
}

void assert_err(const char *condition, const char *file, int line)
{
	__builtin_trap();
}

void assert_warn(const char *condition, const char *file, int line)
{
	__builtin_trap();
}

void force_trigger(const char *msg)
{
	__builtin_trap();
}

void _ir_check(void)
{
	__builtin_trap();
}

void _dac_check(void)
{
	__builtin_trap();
}

void _reset_all_except_uart_gpio(void)
{
	__builtin_trap();
}

void _check_chip_status(void)
{
	__builtin_trap();
}

void wifi_main(void *param)
{
	__builtin_trap();
}

void coex_dump_pta_enable(void)
{
	__builtin_trap();
}

void coex_dump_pta(void)
{
	__builtin_trap();
}

void coex_dump_wifi_cntl(void)
{
	__builtin_trap();
}

void coex_dump_wifi_pti(void)
{
	__builtin_trap();
}

void coex_dump_wifi_status(void)
{
	__builtin_trap();
}

void coex_dump_wifi(void)
{
	__builtin_trap();
}

void coex_wifi_rf_forece_enable(int enable)
{
	__builtin_trap();
}

void coex_wifi_pti_forece_enable(int enable)
{
	__builtin_trap();
}

void AON_LowPower_Enter_PDS0(void)
{
	__builtin_trap();
}

void AON_LowPower_Exit_PDS0(void)
{
	__builtin_trap();
}


extern uint32_t pds_slept_time;
extern uint32_t pds_woken_time;

void coex_wifi_pta_forece_enable(int enable)
{
	__builtin_trap();
}
