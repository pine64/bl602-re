/**
* @file at_gpio.c
* Source file for BL602
*/
#include "at_gpio.h"


AT_ERROR_CODE at_gpioc(s32 num, char *direction, char *interrupt);
AT_ERROR_CODE at_gpior(s32 num);
AT_ERROR_CODE at_gpiow(s32 num, s32 value);




/** at_gpioc
 */
AT_ERROR_CODE at_gpioc(s32 num, char *direction, char *interrupt)
{
	ASSER_ERR(FALSE);
	return AT_ERROR_UNIMP;
}

/** at_gpior
 */
AT_ERROR_CODE at_gpior(s32 num)
{
	ASSER_ERR(FALSE);
	return AT_ERROR_UNIMP;
}

/** at_gpiow
 */
AT_ERROR_CODE at_gpiow(s32 num, s32 value)
{
	ASSER_ERR(FALSE);
	return AT_ERROR_UNIMP;
}
