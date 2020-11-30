/**
* @file at_command.c
* Source file for BL602
*/
#include "at_command.h"


at_callback_t at_callback;
char *c_atCmdRspBuf[1028];
static const at_command_handler_t *g_at_cmd_handler_usr;
static uint32_t g_at_cmd_usr_cnt;
static cmd_cache_t cache;
cmd_send_cache_t send_cache;
static int reconnect_enable;
static const at_command_handler_t at_command_table[28];

int get_reconnect_enable_status(void);
AT_ERROR_CODE at_get_ssid_psk(char **ppara, char *ssid, char *pwd);
static AT_ERROR_CODE join_ap_handler(at_para_t *at_para);
static AT_ERROR_CODE disconnect_handler(at_para_t *at_para);
static AT_ERROR_CODE setautoconnect_handler(at_para_t *at_para);
static AT_ERROR_CODE set_ip_handler(at_para_t *at_para);




/** get_reconnect_enable_status
 */
int get_reconnect_enable_status(void)
{
	ASSER_ERR(FALSE);
	return -1;
}

/** at_get_ssid_psk
 */
AT_ERROR_CODE at_get_ssid_psk(char **ppara, char *ssid, char *pwd)
{
	ASSER_ERR(FALSE);
	return AT_ERROR_UNIMP;
}

/** join_ap_handler
 */
static AT_ERROR_CODE join_ap_handler(at_para_t *at_para)
{
	ASSER_ERR(FALSE);
	return AT_ERROR_UNIMP;
}

/** disconnect_handler
 */
static AT_ERROR_CODE disconnect_handler(at_para_t *at_para)
{
	ASSER_ERR(FALSE);
	return AT_ERROR_UNIMP;
}

/** setautoconnect_handler
 */
static AT_ERROR_CODE setautoconnect_handler(at_para_t *at_para)
{
	ASSER_ERR(FALSE);
	return AT_ERROR_UNIMP;
}

/** set_ip_handler
 */
static AT_ERROR_CODE set_ip_handler(at_para_t *at_para)
{
	ASSER_ERR(FALSE);
	return AT_ERROR_UNIMP;
}
