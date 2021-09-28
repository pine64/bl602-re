/**
* @file at_extend.c
* Source file for BL602
*/
//#include "at_extend.h"
#include <atcmd/at_command.h>
#include <atcmd/at_types.h>


AT_ERROR_CODE at_version(char *version);
AT_ERROR_CODE at_restore(char *address);
AT_ERROR_CODE at_uart_config_get(void);
AT_ERROR_CODE at_uart_config(int uartId, int uartBaud, int dataBit, int parity, int stopBit, int hwfc);
AT_ERROR_CODE at_deep_sleep_mode(uint32_t sleep_time, int weakup_pin);
AT_ERROR_CODE at_wifi_mode(int wifiMode);
AT_ERROR_CODE at_wifi_mode_get(void);
AT_ERROR_CODE at_get_apinfo(void);
AT_ERROR_CODE at_join_ap(char *ssid, char *pwd);
AT_ERROR_CODE at_scan_attr(char *at_para);
AT_ERROR_CODE at_disconnect(char *at_para);
AT_ERROR_CODE at_set_dhcp(unsigned char *at_para);
AT_ERROR_CODE at_set_mac(unsigned char *at_para);
AT_ERROR_CODE at_set_hostname(char *hostname);
AT_ERROR_CODE at_network_status(char *param, at_callback_rsp_t *rsp);
AT_ERROR_CODE at_domain_query(char *dnsAdress);
AT_ERROR_CODE at_send_tcp_buffer(char *tcpBuffer);
AT_ERROR_CODE at_set_ap(char *ssid, char *psk, char chl, int max_conn);
AT_ERROR_CODE at_ap_sta_get(void);
AT_ERROR_CODE at_mux_network(int mux);
AT_ERROR_CODE at_set_trans_mode(int mode);
AT_ERROR_CODE at_http_request(char *url, uint8_t type, uint8_t content_type, uint8_t *data, at_callback_rsp_t *req_rsp);
AT_ERROR_CODE at_set_dns(char *dnsAdress);
AT_ERROR_CODE at_io_cfg(int ID, int mode, int pull);
AT_ERROR_CODE at_get_io_cfg(void);
AT_ERROR_CODE at_set_iodir_cfg(int ID, int mode, int driving, int pull);
AT_ERROR_CODE at_write_io_data(int ID, int data);
AT_ERROR_CODE at_read_io_data(int ID, int data);




/** at_version
 */
AT_ERROR_CODE at_version(char *version)
{
	at_callback_para_t para;
	printf("[atcmd WARN] ------>%s\n", __func__);
	para.cfg  = &at_cfg;
	if (at_callback.handle_cb != NULL)
	{
		(*at_callback.handle_cb)(ACC_GMR, &para, NULL);
	}
	return AEC_OK;
}

/** at_restore
 */
AT_ERROR_CODE at_restore(char *address)
{
	at_callback_para_t para;
	printf("[atcmd WARN] ------>%s\n", __func__);
	para.cfg  = &at_cfg;
	if (at_callback.handle_cb != NULL)
	{
		(*at_callback.handle_cb)(ACC_RESTORE, &para, NULL);
	}
	return AEC_OK;
}

/** at_uart_config_get
 */
AT_ERROR_CODE at_uart_config_get(void)
{
	AT_ERROR_CODE code = AEC_UNSUPPORTED;
	at_callback_para_t para;
	printf("[atcmd WARN] ------>%s\n", __func__);
	para.cfg  = &at_cfg;
	if (at_callback.handle_cb != NULL)
	{
		code = (*at_callback.handle_cb)(ACC_UART_GET, &para, NULL);
		if (code == AEC_OK)
		{
			at_dump_noend("\r\n");
			at_dump_noend(
					"+UART_CUR:%d,%d,%d,%d,%d",
					para.u.uart.uartBaud, para.u.uart.dataBit, para.u.uart.stopBit,
					para.u.uart.parity, para.u.uart.hwfc);
			at_dump_noend("\r\n");
		}
	}
	return code;
}

/** at_uart_config
 */
AT_ERROR_CODE at_uart_config(int uartId, int uartBaud, int dataBit, int parity, int stopBit, int hwfc)
{
	at_callback_para_t para;
	printf("[atcmd WARN] ------>%s\n", __func__);
	para.u.uart.uartId = uartId;
	para.u.uart.uartBaud = uartBaud;
	para.u.uart.dataBit = dataBit;
	para.u.uart.parity = parity;
	para.u.uart.stopBit = stopBit;
	para.u.uart.hwfc = hwfc;
	para.cfg  = &at_cfg;
	if (at_callback.handle_cb != NULL)
	{
		(*at_callback.handle_cb)(ACC_UART_SET, &para, NULL);
	}
	return AEC_OK;
}

/** at_deep_sleep_mode
 */
AT_ERROR_CODE at_deep_sleep_mode(uint32_t sleep_time, int weakup_pin)
{
	AT_ERROR_CODE code = AEC_CMD_ERROR;
	at_callback_para_t para;
	printf("[atcmd WARN] ------>%s\n", __func__);
	para.cfg = &at_cfg;
	para.u.sleep.sleep_time = sleep_time;
	para.u.sleep.weakup_pin = weakup_pin;
	if (at_callback.handle_cb != NULL)
	{
		code = (*at_callback.handle_cb)(ACC_DEEP_SLEEP, &para, NULL);
	}
	return code;
}

/** at_wifi_mode
 */
AT_ERROR_CODE at_wifi_mode(int wifiMode)
{
	AT_ERROR_CODE code = AEC_OK;
	at_callback_para_t para;
	printf("[atcmd WARN] ------>%s\n", __func__);
	para.cfg = &at_cfg;
	para.u.wifiMode.mode = wifiMode;
	if (at_callback.handle_cb != NULL)
	{
		code = (*at_callback.handle_cb)(ACC_CWMODE_CUR, &para, NULL);
	}
	return code;
}

/** at_wifi_mode_get
 */
AT_ERROR_CODE at_wifi_mode_get(void)
{
	AT_ERROR_CODE code = AEC_OK;
	at_callback_para_t para;
	printf("[atcmd WARN] ------>%s\n", __func__);
	para.cfg = &at_cfg;
	if (at_callback.handle_cb != NULL)
	{
		code = (*at_callback.handle_cb)(ACC_CWMODE_GET, &para, NULL);
		if (code == AEC_OK)
		{
			at_dump_noend("\r\n");
			at_dump_noend("+CWMODE:%d", para.u.wifiMode.mode);
			at_dump_noend("\r\n");
		}
	}
	return code;
}

/** at_get_apinfo
 */
AT_ERROR_CODE at_get_apinfo(void)
{
	if (at_callback.handle_cb != NULL)
	{
		return (*at_callback.handle_cb)(ACC_CWJAP_INFO, NULL, NULL);
	}
	return AEC_CMD_FAIL;
}

/** at_join_ap
 */
AT_ERROR_CODE at_join_ap(char *ssid, char *pwd)
{
	AT_ERROR_CODE code;
	at_callback_para_t para;
	size_t ssid_len;
	printf("[atcmd WARN] ------>%s\n", __func__);
	strcpy(para.u.joinParam.ssid, ssid);
	strcpy(para.u.joinParam.pwd, pwd);
	para.cfg  = &at_cfg;
	ssid_len = strlen(ssid);
	para.cfg->wifi_ssid_len = ssid_len;
	if (ssid_len < sizeof(para.cfg->wifi_ssid))
	{
		memset(para.cfg->wifi_ssid, 0, sizeof(para.cfg->wifi_ssid));
		memset(para.cfg->wifi_wpa_psk_text, 0, sizeof(para.cfg->wifi_wpa_psk_text));
		strcpy((char*) para.cfg->wifi_ssid, ssid);
		strcpy(para.cfg->wifi_wpa_psk_text, pwd);
		if (at_callback.handle_cb != NULL)
		{
			code = (*at_callback.handle_cb)(ACC_CWJAP_CUR, &para, NULL);
			if (code == AEC_OK)
			{
				return code;
			}
		}
		return AEC_CMD_FAIL;
	}
	else
	{
		code = AEC_LIMITED;
	}
	return code;
}

/** at_scan_attr
 */
AT_ERROR_CODE at_scan_attr(char *at_para)
{
	printf("[atcmd WARN] ------>%s\n", __func__);
	return AEC_OK;
}

/** at_disconnect
 */
AT_ERROR_CODE at_disconnect(char *at_para)
{
	at_callback_para_t para;
	printf("[atcmd WARN] ------>%s\n", __func__);
	para.cfg  = &at_cfg;
	if (at_callback.handle_cb != NULL)
	{
		(*at_callback.handle_cb)(ACC_CWQAP, &para, NULL);
	}
	return AEC_OK;
}

/** at_set_dhcp
 */
AT_ERROR_CODE at_set_dhcp(unsigned char *at_para)
{
	at_callback_para_t para;
	printf("[atcmd WARN] ------>%s\n", __func__);
	para.cfg  = &at_cfg;
	if (at_callback.handle_cb != NULL)
	{
		(*at_callback.handle_cb)(ACC_CWQAP, &para, NULL);
	}
	return AEC_OK;
}

/** at_set_mac
 */
AT_ERROR_CODE at_set_mac(unsigned char *at_para)
{
	at_callback_para_t para;
	printf("[atcmd WARN] ------>%s\n", __func__);
	printf("[atcmd WARN] ------>%s\n", __func__);
	para.cfg  = &at_cfg;
	if (at_callback.handle_cb != NULL)
	{
		(*at_callback.handle_cb)(ACC_CWQAP, &para, NULL);
	}
	return AEC_OK;
}

/** at_set_hostname
 */
AT_ERROR_CODE at_set_hostname(char *hostname)
{
	at_callback_para_t para;
	printf("[atcmd WARN] ------>%s\n", __func__);
	strcpy(para.u.iphostname.hostname, hostname);
	para.cfg  = &at_cfg;
	if (at_callback.handle_cb != NULL)
	{
		(*at_callback.handle_cb)(ACC_CWQAP, &para, NULL);
	}
	return AEC_OK;
}

/** at_network_status
 */
AT_ERROR_CODE at_network_status(char *param, at_callback_rsp_t *rsp)
{
	at_callback_para_t para;
	printf("[atcmd WARN] ------>%s\n", __func__);
	para.cfg  = &at_cfg;
	if (at_callback.handle_cb != NULL)
	{
		(*at_callback.handle_cb)(ACC_CIPSTATUS, &para, rsp);
	}
	return AEC_OK;
}

/** at_domain_query
 */
AT_ERROR_CODE at_domain_query(char *dnsAdress)
{
	AT_ERROR_CODE code = AEC_OK;
	at_callback_para_t para;
	printf("[atcmd WARN] ------>%s\n", __func__);
	para.cfg  = &at_cfg;
	memcpy(para.u.iphostname.hostname, dnsAdress, sizeof(para.u.iphostname.hostname) - 1);
	if (at_callback.handle_cb != NULL)
	{
		code = (*at_callback.handle_cb)(ACC_CIPDOMAIN, &para, NULL);
	}
	return code << 24 >> 24;
}

/** at_send_tcp_buffer
 */
AT_ERROR_CODE at_send_tcp_buffer(char *tcpBuffer)
{
	at_callback_para_t para;
	printf("[atcmd WARN] ------>%s\n", __func__);
	para.cfg  = &at_cfg;
	if (at_callback.handle_cb != NULL)
	{
		(*at_callback.handle_cb)(ACC_CWQAP, &para, NULL);
	}
	return AEC_OK;
}

/** at_set_ap
 */
AT_ERROR_CODE at_set_ap(char *ssid, char *psk, char chl, int max_conn)
{
	AT_ERROR_CODE code = AEC_CMD_FAIL;
	at_callback_para_t para;
	printf("[atcmd WARN] ------>%s\n", __func__);
	memset(para.u.apcfgParam.ssid, 0, sizeof(para.u.apcfgParam.ssid));
	memset(para.u.apcfgParam.psk, 0, sizeof(para.u.apcfgParam.psk));
	memcpy(para.u.apcfgParam.ssid, ssid, strlen(ssid));
	memcpy(para.u.apcfgParam.psk, psk, strlen(psk));
	para.u.apcfgParam.chl = chl;
	para.u.apcfgParam.max_conn = max_conn;
	para.cfg  = &at_cfg;
	if (at_callback.handle_cb != NULL)
	{
		code = (*at_callback.handle_cb)(ACC_APCFG, &para, NULL);
	}
	return code;
}

/** at_ap_sta_get
 */
AT_ERROR_CODE at_ap_sta_get(void)
{
	at_callback_para_t para;
	printf("[atcmd WARN] ------>%s\n", __func__);
	para.cfg = &at_cfg;
	if (at_callback.handle_cb != NULL)
	{
		(*at_callback.handle_cb)(ACC_AP_STA_GET, &para, NULL);
	}
	return AEC_OK;
}

/** at_mux_network
 */
AT_ERROR_CODE at_mux_network(int mux)
{
	at_callback_para_t para;
	printf("[atcmd WARN] ------>%s\n", __func__);
	para.cfg = &at_cfg;
	at_cfg.CIPMUX = mux;
	if (at_callback.handle_cb != NULL)
	{
		(*at_callback.handle_cb)(ACC_CWQAP, &para, NULL);
	}
	return AEC_OK;
}

/** at_set_trans_mode
 */
AT_ERROR_CODE at_set_trans_mode(int mode)
{
	at_callback_para_t para;
	printf("[atcmd WARN] ------>%s\n", __func__);
	para.cfg = &at_cfg;
	if (at_callback.handle_cb != NULL)
	{
		(*at_callback.handle_cb)(ACC_CWQAP, &para, NULL);
	}
	return AEC_OK;
}

/** at_http_request
 */
AT_ERROR_CODE at_http_request(char *url, uint8_t type, uint8_t content_type, uint8_t *data, at_callback_rsp_t *req_rsp)
{
	AT_ERROR_CODE code = AEC_UNSUPPORTED;
	at_callback_para_t para;
	printf("[atcmd WARN] ------>%s\n", __func__);
	memcpy(para.u.http_req.hostname, url, sizeof(para.u.http_req.hostname));
	para.u.http_req.type = type;
	para.u.http_req.data = data;
	para.u.http_req.content_type = content_type;
	para.cfg = &at_cfg;
	if (at_callback.handle_cb != NULL)
	{
		code = (*at_callback.handle_cb)(ACC_HTTP_REQ, &para, req_rsp);
	}
	return code;
}

/** at_set_dns
 */
AT_ERROR_CODE at_set_dns(char *dnsAdress)
{
	at_callback_para_t para;
	printf("[atcmd WARN] ------>%s\n", __func__);
	memcpy(para.u.set_dns.setdnsip, dnsAdress, sizeof(para.u.set_dns.setdnsip));
	para.cfg  = &at_cfg;
	if (at_callback.handle_cb != NULL)
	{
		(*at_callback.handle_cb)(ACC_CIPDNS_CUR, &para, NULL);
	}
	return AEC_OK;
}

/** at_io_cfg
 */
AT_ERROR_CODE at_io_cfg(int ID, int mode, int pull)
{
	at_callback_para_t para;
	printf("[atcmd WARN] ------>%s\n", "at_io_cfg");
	para.u.setgpio_para.ID = ID;
	para.u.setgpio_para.mode = mode;
	para.u.setgpio_para.pull = pull;
	para.cfg = &at_cfg;
	if (at_callback.handle_cb != NULL)
	{
		(*at_callback.handle_cb)(ACC_SYSIOSETCFG, &para, NULL);
	}
	return AEC_OK;
}

/** at_get_io_cfg
 */
AT_ERROR_CODE at_get_io_cfg(void)
{
	if (at_callback.handle_cb != NULL)
	{
		(*at_callback.handle_cb)(ACC_SYSIOGETCFG, NULL, NULL);
	}
	return AEC_OK;
}

/** at_set_iodir_cfg
 */
AT_ERROR_CODE at_set_iodir_cfg(int ID, int mode, int driving, int pull)
{
	at_callback_para_t para;
	printf("[atcmd WARN] ------>%s\n", __func__);
	para.cfg = &at_cfg;
	para.u.setiodir_para.ID = ID;
	para.u.setiodir_para.mode = mode;
	if (at_callback.handle_cb != NULL)
	{
		(*at_callback.handle_cb)(ACC_SYSGPIODIR, &para, NULL);
	}
	return AEC_OK;
}

/** at_write_io_data
 */
AT_ERROR_CODE at_write_io_data(int ID, int data)
{
	at_callback_para_t para;
	printf("[atcmd WARN] ------>%s\n", __func__);
	para.cfg = &at_cfg;
	para.u.writeiodata_para.ID = ID;
	para.u.writeiodata_para.data = data;
	if (at_callback.handle_cb != NULL)
	{
		(*at_callback.handle_cb)(ACC_SYSGPIOWRITE, &para, NULL);
	}
	return AEC_OK;
}

/** at_read_io_data
 */
AT_ERROR_CODE at_read_io_data(int ID, int data)
{
	at_callback_para_t para;
	printf("[atcmd WARN] ------>%s\n", __func__);
	para.cfg = &at_cfg;
	para.u.readiodata_para.ID = ID;
	if (at_callback.handle_cb != NULL)
	{
		(*at_callback.handle_cb)(ACC_SYSGPIOREAD, &para, NULL);
	}
	return AEC_OK;
}
