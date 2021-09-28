/**
* @file at_common.c
* Source file for BL602
*/
#include <atcmd/at_command.h>
#include <atcmd/at_config.h>
#include <atcmd/at_types.h>
#include <at_private.h>

extern s32 at_dump_noend(char *format,...);

typedef struct {
    AT_ERROR_CODE aec;
 // +0
    const char *info;
 // +4
} err_info_t;

static const err_info_t err_info[24];

AT_ERROR_CODE at_mode(AT_MODE mode);




/** at_response
 */
void at_response(AT_ERROR_CODE aec)
{
#ifdef EQUIVALENT_CODE
	if (aec == AEC_NO_RESPONSE)
	{
		return;
	}

	if (aec == AEC_OK)
	{
		at_dump_noend("\r\n");
		at_dump_noend("OK");
		at_dump_noend("\r\n");
	}
	else if (aec == AEC_CMD_FAIL)
    {
		at_dump_noend("\r\n");
		at_dump_noend("FAIL");
		at_dump_noend("\r\n");
	}
	else
	{
		u32 i = 0;
		while (err_info[i].aec != aec)
		{
			++i;
			if (i == sizeof(err_info) / sizeof(err_info[0]))
			{
				if (aec != AEC_BLANK_LINE)
				{
					printf("[atcmd] \r\nno rsp message!\r\n");
					return;
				}
				return;
			}
		}

		const char *info = err_info[i].info;
		at_dump_noend("\r\n");
		if (aec == AEC_SEND_READY) {
			at_dump_noend("%s", info);
		}
		else {
			at_dump_noend("ERROR: %s", info);
		}
		at_dump_noend("\r\n");
	}
#else
  char *pcVar1;
  char *pcVar2;
  const err_info_t *peVar3;
  int iVar4;
  
  if (aec == AEC_NO_RESPONSE) {
    return;
  }
  if (aec == AEC_OK) {
    at_dump_noend("\r\n");
    pcVar1 = "OK";
  }
  else {
    if (aec != AEC_CMD_FAIL) {
      peVar3 = err_info;
      iVar4 = 0;
	  while (peVar3->aec != aec) {
        iVar4 = iVar4 + 1;
        peVar3 = peVar3 + 1;
        if (iVar4 == 0x18) {
          if (aec != AEC_BLANK_LINE) {
            printf("[atcmd] \r\nno rsp message!\r\n");
            return;
          }
          return;
        }
      }
      pcVar1 = err_info[iVar4].info;
      if (aec == AEC_SEND_READY) {
        at_dump_noend("\r\n");
        pcVar2 = "%s";
      }
      else {
        at_dump_noend("\r\n");
        pcVar2 = "ERROR: %s";
      }
      at_dump_noend(pcVar2,pcVar1);
      goto L0;
    }
    at_dump_noend("\r\n");
    pcVar1 = "FAIL";
  }
  at_dump_noend(pcVar1);
L0:
  at_dump_noend("\r\n");
  return;
#endif
}

/** at_event
 */
s32 at_event(s32 idx)
{
	u32 mask;
	u32 value;

	if (idx < 0x20)
	{
		mask = 1 << (idx & 0x1fU);
		value = at_cfg.wind_off_low;
	}
	else if (idx < 0x40)
	{
		mask = 1 << ((idx - 0x20U) & 0x1f);
		value = at_cfg.wind_off_medium;
	}
	else if (idx < 0x60)
	{
		mask = 1 << ((idx - 0x40U) & 0x1f);
		value = at_cfg.wind_off_high;
	}
	else
	{
		return 0;
	}

	return (value & mask) == 0;
}

/** at_serial
 */
s32 at_serial(at_serial_para_t *ppara)
{
	(void) ppara;
	ppara->baudrate = at_cfg.console1_speed;
	ppara->hwfc = at_cfg.console1_hwfc;
	return 0;
}

/** at_act
 */
AT_ERROR_CODE at_act(void)
{
	if (at_callback.handle_cb != NULL)
	{
		at_callback_para_t para;
		memset(&para, 0, sizeof(para));
		para.cfg = &at_cfg;
		(*at_callback.handle_cb)(ACC_ACT, &para, NULL);
	}
	return AEC_OK;
}

/** at_reset
 */
AT_ERROR_CODE at_reset(void)
{
	if (at_callback.handle_cb != NULL)
	{
		(*at_callback.handle_cb)(ACC_RST, NULL, NULL);
	}
	return AEC_OK;
}

/** at_mode
 */
AT_ERROR_CODE at_mode(AT_MODE mode)
{
	(void) mode;
#warning Unimplemented at_mode
	return AEC_UNSUPPORTED;
}
