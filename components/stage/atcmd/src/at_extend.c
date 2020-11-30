/**
* @file at_extend.c
* Source file for BL602
*/
#include "at_extend.h"


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
	ASSER_ERR(FALSE);
	return AT_ERROR_UNIMP;
}

/** at_restore
 */
AT_ERROR_CODE at_restore(char *address)
{
	ASSER_ERR(FALSE);
	return AT_ERROR_UNIMP;
}

/** at_uart_config_get
 */
AT_ERROR_CODE at_uart_config_get(void)
{
	ASSER_ERR(FALSE);
	return AT_ERROR_UNIMP;
}

/** at_uart_config
 */
AT_ERROR_CODE at_uart_config(int uartId, int uartBaud, int dataBit, int parity, int stopBit, int hwfc)
{
	ASSER_ERR(FALSE);
	return AT_ERROR_UNIMP;
}

/** at_deep_sleep_mode
 */
AT_ERROR_CODE at_deep_sleep_mode(uint32_t sleep_time, int weakup_pin)
{
	ASSER_ERR(FALSE);
	return AT_ERROR_UNIMP;
}

/** at_wifi_mode
 */
AT_ERROR_CODE at_wifi_mode(int wifiMode)
{
	ASSER_ERR(FALSE);
	return AT_ERROR_UNIMP;
}

/** at_wifi_mode_get
 */
AT_ERROR_CODE at_wifi_mode_get(void)
{
	ASSER_ERR(FALSE);
	return AT_ERROR_UNIMP;
}

/** at_get_apinfo
 */
AT_ERROR_CODE at_get_apinfo(void)
{
	ASSER_ERR(FALSE);
	return AT_ERROR_UNIMP;
}

/** at_join_ap
 */
AT_ERROR_CODE at_join_ap(char *ssid, char *pwd)
{
	ASSER_ERR(FALSE);
	return AT_ERROR_UNIMP;
}

/** at_scan_attr
 */
AT_ERROR_CODE at_scan_attr(char *at_para)
{
	ASSER_ERR(FALSE);
	return AT_ERROR_UNIMP;
}

/** at_disconnect
 */
AT_ERROR_CODE at_disconnect(char *at_para)
{
	ASSER_ERR(FALSE);
	return AT_ERROR_UNIMP;
}

/** at_set_dhcp
 */
AT_ERROR_CODE at_set_dhcp(unsigned char *at_para)
{
	ASSER_ERR(FALSE);
	return AT_ERROR_UNIMP;
}

/** at_set_mac
 */
AT_ERROR_CODE at_set_mac(unsigned char *at_para)
{
	ASSER_ERR(FALSE);
	return AT_ERROR_UNIMP;
}

/** at_set_hostname
 */
AT_ERROR_CODE at_set_hostname(char *hostname)
{
	ASSER_ERR(FALSE);
	return AT_ERROR_UNIMP;
}

/** at_network_status
 */
AT_ERROR_CODE at_network_status(char *param, at_callback_rsp_t *rsp)
{
	ASSER_ERR(FALSE);
	return AT_ERROR_UNIMP;
}

/** at_domain_query
 */
AT_ERROR_CODE at_domain_query(char *dnsAdress)
{
	ASSER_ERR(FALSE);
	return AT_ERROR_UNIMP;
}

/** at_send_tcp_buffer
 */
AT_ERROR_CODE at_send_tcp_buffer(char *tcpBuffer)
{
	ASSER_ERR(FALSE);
	return AT_ERROR_UNIMP;
}

/** at_set_ap
 */
AT_ERROR_CODE at_set_ap(char *ssid, char *psk, char chl, int max_conn)
{
	ASSER_ERR(FALSE);
	return AT_ERROR_UNIMP;
}

/** at_ap_sta_get
 */
AT_ERROR_CODE at_ap_sta_get(void)
{
	ASSER_ERR(FALSE);
	return AT_ERROR_UNIMP;
}

/** at_mux_network
 */
AT_ERROR_CODE at_mux_network(int mux)
{
	ASSER_ERR(FALSE);
	return AT_ERROR_UNIMP;
}

/** at_set_trans_mode
 */
AT_ERROR_CODE at_set_trans_mode(int mode)
{
	ASSER_ERR(FALSE);
	return AT_ERROR_UNIMP;
}

/** at_http_request
 */
AT_ERROR_CODE at_http_request(char *url, uint8_t type, uint8_t content_type, uint8_t *data, at_callback_rsp_t *req_rsp)
{
	ASSER_ERR(FALSE);
	return AT_ERROR_UNIMP;
}

/** at_set_dns
 */
AT_ERROR_CODE at_set_dns(char *dnsAdress)
{
	ASSER_ERR(FALSE);
	return AT_ERROR_UNIMP;
}

/** at_io_cfg
 */
AT_ERROR_CODE at_io_cfg(int ID, int mode, int pull)
{
	ASSER_ERR(FALSE);
	return AT_ERROR_UNIMP;
}

/** at_get_io_cfg
 */
AT_ERROR_CODE at_get_io_cfg(void)
{
	ASSER_ERR(FALSE);
	return AT_ERROR_UNIMP;
}

/** at_set_iodir_cfg
 */
AT_ERROR_CODE at_set_iodir_cfg(int ID, int mode, int driving, int pull)
{
	ASSER_ERR(FALSE);
	return AT_ERROR_UNIMP;
}

/** at_write_io_data
 */
AT_ERROR_CODE at_write_io_data(int ID, int data)
{
	ASSER_ERR(FALSE);
	return AT_ERROR_UNIMP;
}

/** at_read_io_data
 */
AT_ERROR_CODE at_read_io_data(int ID, int data)
{
	ASSER_ERR(FALSE);
	return AT_ERROR_UNIMP;
}
