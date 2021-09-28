#include <atcmd/at_command.h>
#include <atcmd/at_macros.h>


AT_ERROR_CODE at_get_value(char *strbuf, AT_PARA_TYPE pt, void *pvar, s32 vsize);
s32 at_set_value(AT_PARA_TYPE pt, void *pvar, s32 vsize, at_value_t *value);
int at_atoi(char *str);
static int hex_to_num(char ch);
static u32 get_text_para(char **ppara, void *pvar, u32 opt);
static u32 get_tdata_para(char **ppara, void *pvar, u32 opt);
static u32 get_hex_para(char **ppara, void *pvar, u32 opt);
static u32 get_di_para(char **ppara, void *pvar, u32 opt);
static u32 get_hi_para(char **ppara, void *pvar, u32 opt);
static u32 get_ip_para(char **ppara, void *pvar, u32 opt);
AT_ERROR_CODE at_get_parameters(char **ppara, at_para_descriptor_t *list, s32 lsize, s32 *pcnt);
AT_ERROR_CODE at_get_newline(char *para, s32 size);




/** at_get_value
 */
AT_ERROR_CODE at_get_value(char *strbuf, AT_PARA_TYPE pt, void *pvar, s32 vsize)
{
	if (pvar == NULL) {
		return AEC_CMD_FAIL;
	}

	const char *format;
	switch (pt)
	{
	case APT_DI:
		format = "%d";
		break;
	case APT_HI:
		format = "0x%08X";
		break;
	case APT_HEX:
		if (vsize > 0)
		{
			sprintf(strbuf, "%02X", ((u8 *)pvar)[0]);
		}
		for (int i = 1; i < vsize; ++i)
		{
			sprintf(strbuf + strlen(strbuf), ":%02X", ((u8 *)pvar)[i]);
		}
		return AEC_OK;
	case APT_IP:
		if (vsize > 0)
		{
			sprintf(strbuf, "%d", ((u8 *)pvar)[0]);
		}
		for (int i = 1; i < vsize; ++i)
		{
			sprintf(strbuf + strlen(strbuf), ".%d", ((u8 *)pvar)[i]);
		}
		return AEC_OK;
	case APT_TEXT:
		sprintf(strbuf, "%s", (const char *)pvar);
		return AEC_OK;
	default:
		return AEC_BLANK_LINE;
	}
	sprintf(strbuf, format, *(u32 *)pvar);
	return AEC_OK;
}

/** at_set_value
 */
s32 at_set_value(AT_PARA_TYPE pt, void *pvar, s32 vsize, at_value_t *value)
{
	switch(pt)
	{
	case APT_TEXT:
		strcpy((char *)pvar, value->text);
		break;
	case APT_HEX:
	case APT_IP:
		memcpy(pvar, value, vsize);
		break;
	case APT_DI:
	case APT_HI:
		*(u32 *)pvar = value->hi;
		break;
	default:
		return -1;
	}
	return 0;
}

/** at_atoi
 */
int at_atoi(char *str)
{
	return atoi(str);
}

/** at_get_parameters
 */
AT_ERROR_CODE at_get_parameters(char **ppara, at_para_descriptor_t *list, s32 lsize, s32 *pcnt)
{
	__builtin_trap();
#if 0
	int iVar1;
	AT_ERROR_CODE AVar2;
	uint uVar3;
	uint uVar4;
	int iVar5;
	
	if ((list == NULL) || (lsize == 0)) {
		return at_get_newline(*ppara, 2);
	}
	iVar1 = 0;
	for (s32 i = 0; i < lsize; ++i) {
		if ((u8)list->pt > 5) {
			return AEC_PARA_ERROR;
		}
		u32 opt = list->option;
		void *pvar = list->pvar;
		switch (list->pt)
		{
		case APT_TEXT:
			uVar4 = get_text_para(ppara, pvar, opt);
			break;
		case APT_TDATA:
			uVar4 = get_tdata_para(ppara, pvar, opt);
			break;
		case APT_HEX:
			uVar4 = get_hex_para(ppara, pvar, opt);
			break;
		case APT_DI:
			uVar4 = get_di_para(ppara, pvar, opt);
			break;
		case APT_HI:
			uVar4 = get_hi_para(ppara, pvar, opt);
			break;
		case APT_IP:
			uVar4 = get_ip_para(ppara, pvar, opt);
			break;
		}
		TODO
      uVar3 = uVar4 >> 1 & 1;
      if (uVar3 == 0) {
        iVar1 = iVar1 + 1;
      }
      if (((uVar4 & 1) != 0) || (list = list + 1, uVar3 != 0)) goto .L0;
    }
    uVar3 = 0;
.L0:
    *pcnt = iVar1;
	return (AT_ERROR_CODE)(uVar3 << 2);
#endif
}

/** at_get_newline
 */
AT_ERROR_CODE at_get_newline(char *para, s32 size)
{
	if ((*para != AT_CR) && (*para != AT_LF))
	{
		return AEC_CMD_ERROR;
	}
	return AEC_OK;
}

/** hex_to_num
 */
static int hex_to_num(char ch)
{
	if ((ch >= '0') && (ch <= '9'))
	{
		return ch - '0';
	}
	if ((ch >= 'a') && (ch <= 'f'))
	{
		return ch - 'a' + 10;
	}
	if ((ch >= 'A') && (ch <= 'F'))
	{
		return ch - 'A' + 10;
	}
	return -1;
}

/** get_text_para
 */
static u32 get_text_para(char **ppara, void *pvar, u32 opt)
{
	__builtin_trap();
}

/** get_tdata_para
 */
static u32 get_tdata_para(char **ppara, void *pvar, u32 opt)
{
	__builtin_trap();
}

/** get_hex_para
 */
static u32 get_hex_para(char **ppara, void *pvar, u32 opt)
{
	__builtin_trap();
}

/** get_di_para
 */
static u32 get_di_para(char **ppara, void *pvar, u32 opt)
{
	__builtin_trap();
}

/** get_hi_para
 */
static u32 get_hi_para(char **ppara, void *pvar, u32 opt)
{
	__builtin_trap();
}

/** get_ip_para
 */
static u32 get_ip_para(char **ppara, void *pvar, u32 opt)
{
	__builtin_trap();
}
