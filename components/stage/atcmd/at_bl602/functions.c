#include <at_command.h>

#include <FreeRTOS.h>
#include <semphr.h>

#warning Add #include <lwip/err.h>
typedef s8 err_t;
typedef u16 u16_t;
typedef u32 u32_t;

#warning Add #include <wifi_mgmr_ext.h>
typedef void *wifi_interface_t;

#warning Add #include <http_client.h>
typedef struct {} httpc_result_t;
typedef struct {} httpc_state_t;

struct pbuf;
struct altcp_pcb;


typedef struct {
    s32 cmd;
 // +0
    AT_ERROR_CODE (*handler)(at_callback_para_t *, at_callback_rsp_t *);
 // +4
} callback_handler_t;

static wifi_interface_t g_wifi_interface;
int is_disp_ipd;
static const callback_handler_t callback_tbl[27];

u32 at_get_errorcode(void);
int at_cmd_impl_init(void);
AT_ERROR_CODE callback(AT_CALLBACK_CMD cmd, at_callback_para_t *para, at_callback_rsp_t *rsp);
static AT_ERROR_CODE reset(at_callback_para_t *para, at_callback_rsp_t *rsp);
static AT_ERROR_CODE scan(at_callback_para_t *para, at_callback_rsp_t *rsp);
static AT_ERROR_CODE version(at_callback_para_t *para, at_callback_rsp_t *rsp);
static AT_ERROR_CODE restory(at_callback_para_t *para, at_callback_rsp_t *rsp);
static AT_ERROR_CODE uart_get(at_callback_para_t *para, at_callback_rsp_t *rsp);
static AT_ERROR_CODE uart_set(at_callback_para_t *para, at_callback_rsp_t *rsp);
static AT_ERROR_CODE deep_sleep(at_callback_para_t *para, at_callback_rsp_t *rsp);

enum wlan_mode {
    WIFI_DISABLE = 0,
    WIFI_STATION_MODE = 1,
    WIFI_SOFTAP_MODE = 2,
    WIFI_AP_STA_MODE = 3,
};

static char g_soft_ap_ssid[65];

static AT_ERROR_CODE __wifimode_set(int mode);
static AT_ERROR_CODE cwmode_cur(at_callback_para_t *para, at_callback_rsp_t *rsp);
static AT_ERROR_CODE cwmode_cur_get(at_callback_para_t *para, at_callback_rsp_t *rsp);

static char cur_ssid[32];
static char cur_psk[65];

static AT_ERROR_CODE cwjap_cur(at_callback_para_t *para, at_callback_rsp_t *rsp);
static AT_ERROR_CODE cwjap_info(at_callback_para_t *para, at_callback_rsp_t *rsp);
static AT_ERROR_CODE cwqap(at_callback_para_t *para, at_callback_rsp_t *rsp);
static AT_ERROR_CODE ap_sta_get(at_callback_para_t *para, at_callback_rsp_t *rsp);
static AT_ERROR_CODE set_apcfg(at_callback_para_t *para, at_callback_rsp_t *rsp);
static AT_ERROR_CODE cipsta_ip_get(at_callback_para_t *para, at_callback_rsp_t *rsp);
static AT_ERROR_CODE cipsta_ip(at_callback_para_t *para, at_callback_rsp_t *rsp);

static SemaphoreHandle_t g_http_xSemaphore;

static void cb_httpc_result(void *arg, httpc_result_t httpc_result, u32_t rx_content_len, u32_t srv_res, err_t err);
static err_t cb_httpc_headers_done_fn(httpc_state_t *connection, void *arg, struct pbuf *hdr, u16_t hdr_len, u32_t content_len);
static err_t cb_altcp_recv_fn(void *arg, struct altcp_pcb *conn, struct pbuf *p, err_t err);
static AT_ERROR_CODE http_url_req(at_callback_para_t *para, at_callback_rsp_t *rsp);
static AT_ERROR_CODE ble_sync(at_callback_para_t *para, at_callback_rsp_t *rsp);




/** at_get_errorcode
 */
u32 at_get_errorcode(void)
{
	__builtin_trap();
}

/** at_cmd_impl_init
 */
int at_cmd_impl_init(void)
{
	__builtin_trap();
}

/** callback
 */
AT_ERROR_CODE callback(AT_CALLBACK_CMD cmd, at_callback_para_t *para, at_callback_rsp_t *rsp)
{
	__builtin_trap();
}

/** reset
 */
static AT_ERROR_CODE reset(at_callback_para_t *para, at_callback_rsp_t *rsp)
{
	__builtin_trap();
}

/** scan
 */
static AT_ERROR_CODE scan(at_callback_para_t *para, at_callback_rsp_t *rsp)
{
	__builtin_trap();
}

/** version
 */
static AT_ERROR_CODE version(at_callback_para_t *para, at_callback_rsp_t *rsp)
{
	__builtin_trap();
}

/** restory
 */
static AT_ERROR_CODE restory(at_callback_para_t *para, at_callback_rsp_t *rsp)
{
	__builtin_trap();
}

/** uart_get
 */
static AT_ERROR_CODE uart_get(at_callback_para_t *para, at_callback_rsp_t *rsp)
{
	__builtin_trap();
}

/** uart_set
 */
static AT_ERROR_CODE uart_set(at_callback_para_t *para, at_callback_rsp_t *rsp)
{
	__builtin_trap();
}

/** deep_sleep
 */
static AT_ERROR_CODE deep_sleep(at_callback_para_t *para, at_callback_rsp_t *rsp)
{
	__builtin_trap();
}

/** __wifimode_set
 */
static AT_ERROR_CODE __wifimode_set(int mode)
{
	__builtin_trap();
}

/** cwmode_cur
 */
static AT_ERROR_CODE cwmode_cur(at_callback_para_t *para, at_callback_rsp_t *rsp)
{
	__builtin_trap();
}

/** cwmode_cur_get
 */
static AT_ERROR_CODE cwmode_cur_get(at_callback_para_t *para, at_callback_rsp_t *rsp)
{
	__builtin_trap();
}

/** cwjap_cur
 */
static AT_ERROR_CODE cwjap_cur(at_callback_para_t *para, at_callback_rsp_t *rsp)
{
	__builtin_trap();
}

/** cwjap_info
 */
static AT_ERROR_CODE cwjap_info(at_callback_para_t *para, at_callback_rsp_t *rsp)
{
	__builtin_trap();
}

/** cwqap
 */
static AT_ERROR_CODE cwqap(at_callback_para_t *para, at_callback_rsp_t *rsp)
{
	__builtin_trap();
}

/** ap_sta_get
 */
static AT_ERROR_CODE ap_sta_get(at_callback_para_t *para, at_callback_rsp_t *rsp)
{
	__builtin_trap();
}

/** set_apcfg
 */
static AT_ERROR_CODE set_apcfg(at_callback_para_t *para, at_callback_rsp_t *rsp)
{
	__builtin_trap();
}

/** cipsta_ip_get
 */
static AT_ERROR_CODE cipsta_ip_get(at_callback_para_t *para, at_callback_rsp_t *rsp)
{
	__builtin_trap();
}

/** cipsta_ip
 */
static AT_ERROR_CODE cipsta_ip(at_callback_para_t *para, at_callback_rsp_t *rsp)
{
	__builtin_trap();
}

/** cb_httpc_result
 */
static void cb_httpc_result(void *arg, httpc_result_t httpc_result, u32_t rx_content_len, u32_t srv_res, err_t err)
{
	__builtin_trap();
}

/** cb_httpc_headers_done_fn
 */
static err_t cb_httpc_headers_done_fn(httpc_state_t *connection, void *arg, struct pbuf *hdr, u16_t hdr_len, u32_t content_len)
{
	__builtin_trap();
}

/** cb_altcp_recv_fn
 */
static err_t cb_altcp_recv_fn(void *arg, struct altcp_pcb *conn, struct pbuf *p, err_t err)
{
	__builtin_trap();
}

/** http_url_req
 */
static AT_ERROR_CODE http_url_req(at_callback_para_t *para, at_callback_rsp_t *rsp)
{
	__builtin_trap();
}

/** ble_sync
 */
static AT_ERROR_CODE ble_sync(at_callback_para_t *para, at_callback_rsp_t *rsp)
{
	__builtin_trap();
}
