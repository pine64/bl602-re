#include <atcmd/at_command.h>


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


AT_ERROR_CODE wifi_supports(at_para_t *at_para)
{
  AT_ERROR_CODE code = at_get_parameters(&at_para->ptr, NULL, 0, NULL);
  if (code != AEC_OK)
  {
	code = AEC_PARA_ERROR;
  }
  return code;
}

AT_ERROR_CODE attention_handler(at_para_t *at_para)
{
  return at_get_parameters(&at_para->ptr, NULL, 0, NULL);
}


/** get_reconnect_enable_status
 */
int get_reconnect_enable_status(void)
{
	__builtin_trap();
}

/** at_get_ssid_psk
 */
AT_ERROR_CODE at_get_ssid_psk(char **ppara, char *ssid, char *pwd)
{
	__builtin_trap();
}

/** join_ap_handler
 */
static AT_ERROR_CODE join_ap_handler(at_para_t *at_para)
{
	__builtin_trap();
}

/** disconnect_handler
 */
static AT_ERROR_CODE disconnect_handler(at_para_t *at_para)
{
	__builtin_trap();
}

/** setautoconnect_handler
 */
static AT_ERROR_CODE setautoconnect_handler(at_para_t *at_para)
{
	__builtin_trap();
}

/** set_ip_handler
 */
static AT_ERROR_CODE set_ip_handler(at_para_t *at_para)
{
	__builtin_trap();
}
