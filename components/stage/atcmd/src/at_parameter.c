/**
* @file at_parameter.c
* Source file for BL602
*/
#include <atcmd/at_macros.h>


s32 at_get_value(char *strbuf, s32 pt, void *pvar, s32 vsize);
s32 at_set_value(s32 pt, void *pvar, s32 vsize, at_value_t *value);
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
	ASSER_ERR(FALSE);
	return AT_ERROR_UNIMP;
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
	ASSER_ERR(FALSE);
	return 0xffffffff;
}

/** get_tdata_para
 */
static u32 get_tdata_para(char **ppara, void *pvar, u32 opt)
{
	ASSER_ERR(FALSE);
	return 0xffffffff;
}

/** get_hex_para
 */
static u32 get_hex_para(char **ppara, void *pvar, u32 opt)
{
	ASSER_ERR(FALSE);
	return 0xffffffff;
}

/** get_di_para
 */
static u32 get_di_para(char **ppara, void *pvar, u32 opt)
{
	ASSER_ERR(FALSE);
	return 0xffffffff;
}

/** get_hi_para
 */
static u32 get_hi_para(char **ppara, void *pvar, u32 opt)
{
	ASSER_ERR(FALSE);
	return 0xffffffff;
}

/** get_ip_para
 */
static u32 get_ip_para(char **ppara, void *pvar, u32 opt)
{
	ASSER_ERR(FALSE);
	return 0xffffffff;
}
