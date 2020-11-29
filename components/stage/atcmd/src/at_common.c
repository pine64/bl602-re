/**
* @file at_common.c
* Source file for BL602
*/
#include "at_common.h"


typedef struct {
    AT_ERROR_CODE aec;
 // +0
    const char *info;
 // +4
} err_info_t;

static const err_info_t err_info[24];

void at_response(AT_ERROR_CODE aec);
s32 at_event(s32 idx);
s32 at_serial(at_serial_para_t *ppara);
AT_ERROR_CODE at_act(void);
AT_ERROR_CODE at_reset(void);
AT_ERROR_CODE at_mode(AT_MODE mode);




/** at_response
 */
void at_response(AT_ERROR_CODE aec)
{
	ASSER_ERR(FALSE);
	return;
}

/** at_event
 */
s32 at_event(s32 idx)
{
	ASSER_ERR(FALSE);
	return -1;
}

/** at_serial
 */
s32 at_serial(at_serial_para_t *ppara)
{
	ASSER_ERR(FALSE);
	return -1;
}

/** at_act
 */
AT_ERROR_CODE at_act(void)
{
	ASSER_ERR(FALSE);
	return AT_ERROR_UNIMP;
}

/** at_reset
 */
AT_ERROR_CODE at_reset(void)
{
	ASSER_ERR(FALSE);
	return AT_ERROR_UNIMP;
}

/** at_mode
 */
AT_ERROR_CODE at_mode(AT_MODE mode)
{
	ASSER_ERR(FALSE);
	return AT_ERROR_UNIMP;
}
