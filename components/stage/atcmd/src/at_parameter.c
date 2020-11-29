/**
* @file at_parameter.c
* Source file for BL602
*/
#include "at_parameter.h"


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
s32 at_get_value(char *strbuf, s32 pt, void *pvar, s32 vsize)
{
	ASSER_ERR(FALSE);
	return -1;
}

/** at_set_value
 */
s32 at_set_value(s32 pt, void *pvar, s32 vsize, at_value_t *value)
{
	ASSER_ERR(FALSE);
	return -1;
}

/** at_atoi
 */
int at_atoi(char *str)
{
	ASSER_ERR(FALSE);
	return -1;
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
	ASSER_ERR(FALSE);
	return AT_ERROR_UNIMP;
}

/** hex_to_num
 */
static int hex_to_num(char ch)
{
	ASSER_ERR(FALSE);
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
