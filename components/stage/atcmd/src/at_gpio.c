/**
* @file at_gpio.c
* Source file for BL602
*/
#include <atcmd/at_command.h>
#include <atcmd/at_types.h>

/** at_gpioc
 */
AT_ERROR_CODE at_gpioc(s32 num, char *direction, char *interrupt)
{
	(void) num;
	(void) direction;
	(void) interrupt;
	return AEC_OK;
}

/** at_gpior
 */
AT_ERROR_CODE at_gpior(s32 num)
{
	(void) num;
	return AEC_OK;
}

/** at_gpiow
 */
AT_ERROR_CODE at_gpiow(s32 num, s32 value)
{
	(void) num;
	(void) value;
	return AEC_OK;
}
