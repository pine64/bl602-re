/* ======== components/stage/atcmd/at_bl602/at_server.c ======== */

struct _at_evt {
    int evt_id; // +0
    uint8_t ctx_buf[20]; // +4
    uint32_t ctx_size; // +24
}; // :34:8

static at_sever_t g_at_server; // :40:19

static int at_serial_read(unsigned char *buf, int size); // :65:12
static int at_serial_write(unsigned char *buf, int len); // :73:12
int at_serial_cfg_set(uint32_t baud, uint8_t data_bit, uint8_t stop_bit, uint8_t parity, uint8_t hwfc); // :123:5
int at_serial_open(void); // :205:5
int at_serial_close(void); // :210:5
int at_serial_lock(void); // :217:5
int at_serial_unlock(void); // :225:5
int at_data_output(char *buf, int size); // :233:5
int at_key_value_set(char *key, void *p_value); // :250:5
int at_key_value_get(char *key, void *p_value); // :287:5
s32 at_dump_noend(char *format); // :329:5
void at_async_event(void *param); // :360:6
void at_cmd_init(void); // :401:6
static void at_cmd_exec(void *param); // :418:13
int at_server_init(void); // :425:5
int at_server_notify(at_evt_t event); // :501:5
int at_server_notify_with_ctx(at_evt_t event, void *p_ctx, uint32_t ctx_size); // :506:5
void at_uart_reinit(at_serial_para_t *at_para); // :520:6

/* ======== components/stage/atcmd/at_bl602/bl_socket.c ======== */

static struct server_arg g_server_arg; // :44:26
static server_ctrl_t g_server_ctrl; // :45:22
static network_t networks; // :46:18
static u32 g_server_enable; // :47:12
SemaphoreHandle_t g_server_sem; // :50:19
SemaphoreHandle_t g_network_sem; // :51:19
static int32_t cipsend_totlen; // :54:16

AT_ERROR_CODE bl_cipstatus(at_callback_para_t *para, at_callback_rsp_t *rsp); // :105:15
static err_t tcp_receive_callback(void *arg, struct altcp_pcb *conn, struct pbuf *p, err_t err); // :126:14
static err_t tcp_sent_callback(void *arg, struct altcp_pcb *conn, u16_t len); // :168:14
static void tcp_err_callback(void *arg, err_t err); // :196:13
static err_t tcp_connected_callback(void *arg, struct altcp_pcb *conn, err_t err); // :213:14
static void udp_receive_callback(void *arg, struct udp_pcb *pcb, struct pbuf *p, const ip_addr_t *addr, u16_t port); // :255:13
static int get_romfs_file_content(const char *path, romfs_filebuf_t *buf); // :285:12
AT_ERROR_CODE bl_cipstart(at_callback_para_t *para, at_callback_rsp_t *rsp); // :296:15
AT_ERROR_CODE bl_cipsendbuf(at_callback_para_t *para, at_callback_rsp_t *rsp); // :512:15
AT_ERROR_CODE bl_cipclose(at_callback_para_t *para, at_callback_rsp_t *rsp); // :518:15
static err_t tcp_accept_callback(void *arg, struct altcp_pcb *new_conn, err_t err); // :538:14
AT_ERROR_CODE bl_tcpserver(at_callback_para_t *para, at_callback_rsp_t *rsp); // :579:15

struct send_data_ctx {
    int linkId; // +0
    uint8_t *buf; // +4
}; // :665:8

static void tcp_send_data(void *arg); // :672:13
static void udp_send_data(void *arg); // :693:13
AT_ERROR_CODE bl_cipsend(at_callback_para_t *para, at_callback_rsp_t *rsp); // :728:15
AT_ERROR_CODE bl_cipsslcconf_path(at_callback_para_t *para, at_callback_rsp_t *unused); // :774:15
AT_ERROR_CODE bl_cipsslcsni(at_callback_para_t *para, at_callback_rsp_t *rsp); // :849:15
AT_ERROR_CODE bl_cipsslcalpn(at_callback_para_t *para, at_callback_rsp_t *unused); // :893:15

/* ======== components/stage/atcmd/at_bl602/bl_socket.h ======== */

struct server_arg {
    s16 port; // +0
    s32 protocol; // +4
}; // :25:8

typedef struct {
    u32 flag; // +0
    s16 port; // +4
    s32 protocol; // +8
    u32 auth_mode; // +12
    const char *cert; // +16
    const char *key; // +20
    const char *ca; // +24
    const char **alpn; // +28
    union {
        struct udp_pcb *udp;
        struct altcp_pcb *tcp;
        struct {
            struct altcp_pcb *pcb; // +0
            struct altcp_tls_config *config; // +4
        } tls;
    } pcb; // +32
} server_ctrl_t; // :48:3

enum socket_state {
    SOCK_IDLE_CLOSE = 0,
    SOCK_SERVER_LISTENING = 1,
    SOCK_CLIENT_CONNECTING = 2,
    SOCK_CLIENT_CONNECTED = 3,
}; // :50:6

enum socket_type {
    SOCK_TYPE_TCP = 1,
    SOCK_TYPE_UDP = 2,
    SOCK_TYPE_TLS = 3,
}; // :57:6

enum auth_mode {
    NO_AUTH = 0,
    SERVER_AUTH_CERT_KEY = 1,
    CLIENT_AUTH_CA = 2,
    BOTH_AUTH = 3,
}; // :63:6

typedef struct {
    char ip[16]; // +0
    u32 port; // +16
    enum socket_type protocol; // +20
    enum auth_mode auth_mode; // +21
    const char *sni; // +24
    const char *ca; // +28
    const char *cert; // +32
    const char *key; // +36
    const char **alpn; // +40
    union {
        struct udp_pcb *udp;
        struct altcp_pcb *tcp;
        struct {
            struct altcp_pcb *pcb; // +0
            struct altcp_tls_config *config; // +4
        } tls;
    } pcb; // +44
    enum socket_state status; // +52
} connect_t; // :87:3

typedef struct {
    s32 count; // +0
    connect_t connect[5]; // +4
} network_t; // :92:3

/* ======== components/stage/atcmd/at_bl602/functions.c ======== */

typedef struct {
    s32 cmd; // +0
    AT_ERROR_CODE (*handler)(at_callback_para_t *, at_callback_rsp_t *); // +4
} callback_handler_t; // :68:3

static wifi_interface_t g_wifi_interface; // :81:25
int is_disp_ipd; // :84:5
static const callback_handler_t callback_tbl[27]; // :129:33

u32 at_get_errorcode(void); // :289:5
int at_cmd_impl_init(void); // :337:5
AT_ERROR_CODE callback(AT_CALLBACK_CMD cmd, at_callback_para_t *para, at_callback_rsp_t *rsp); // :348:15
static AT_ERROR_CODE reset(at_callback_para_t *para, at_callback_rsp_t *rsp); // :370:22
static AT_ERROR_CODE scan(at_callback_para_t *para, at_callback_rsp_t *rsp); // :795:22
static AT_ERROR_CODE version(at_callback_para_t *para, at_callback_rsp_t *rsp); // :870:22
static AT_ERROR_CODE restory(at_callback_para_t *para, at_callback_rsp_t *rsp); // :880:22
static AT_ERROR_CODE uart_get(at_callback_para_t *para, at_callback_rsp_t *rsp); // :912:22
static AT_ERROR_CODE uart_set(at_callback_para_t *para, at_callback_rsp_t *rsp); // :939:22
static AT_ERROR_CODE deep_sleep(at_callback_para_t *para, at_callback_rsp_t *rsp); // :962:22

enum wlan_mode {
    WIFI_DISABLE = 0,
    WIFI_STATION_MODE = 1,
    WIFI_SOFTAP_MODE = 2,
    WIFI_AP_STA_MODE = 3,
}; // :1022:6

static char g_soft_ap_ssid[65]; // :1029:13

static AT_ERROR_CODE __wifimode_set(int mode); // :1031:22
static AT_ERROR_CODE cwmode_cur(at_callback_para_t *para, at_callback_rsp_t *rsp); // :1056:22
static AT_ERROR_CODE cwmode_cur_get(at_callback_para_t *para, at_callback_rsp_t *rsp); // :1073:22

static char cur_ssid[32]; // :1079:13
static char cur_psk[65]; // :1080:13

static AT_ERROR_CODE cwjap_cur(at_callback_para_t *para, at_callback_rsp_t *rsp); // :1081:22
static AT_ERROR_CODE cwjap_info(at_callback_para_t *para, at_callback_rsp_t *rsp); // :1125:22
static AT_ERROR_CODE cwqap(at_callback_para_t *para, at_callback_rsp_t *rsp); // :1170:22
static AT_ERROR_CODE ap_sta_get(at_callback_para_t *para, at_callback_rsp_t *rsp); // :1242:22
static AT_ERROR_CODE set_apcfg(at_callback_para_t *para, at_callback_rsp_t *rsp); // :1285:22
static AT_ERROR_CODE cipsta_ip_get(at_callback_para_t *para, at_callback_rsp_t *rsp); // :1315:22
static AT_ERROR_CODE cipsta_ip(at_callback_para_t *para, at_callback_rsp_t *rsp); // :1332:22

static SemaphoreHandle_t g_http_xSemaphore; // :1450:26

static void cb_httpc_result(void *arg, httpc_result_t httpc_result, u32_t rx_content_len, u32_t srv_res, err_t err); // :1451:13
static err_t cb_httpc_headers_done_fn(httpc_state_t *connection, void *arg, struct pbuf *hdr, u16_t hdr_len, u32_t content_len); // :1459:14
static err_t cb_altcp_recv_fn(void *arg, struct altcp_pcb *conn, struct pbuf *p, err_t err); // :1472:14
static AT_ERROR_CODE http_url_req(at_callback_para_t *para, at_callback_rsp_t *rsp); // :1498:22
static AT_ERROR_CODE ble_sync(at_callback_para_t *para, at_callback_rsp_t *rsp); // :1565:22

/* ======== components/stage/atcmd/src/at_command.c ======== */

at_callback_t at_callback; // :37:15
char *c_atCmdRspBuf[1028]; // :39:7
static const at_command_handler_t *g_at_cmd_handler_usr; // :40:36
static uint32_t g_at_cmd_usr_cnt; // :41:17
static cmd_cache_t cache; // :43:20
cmd_send_cache_t send_cache; // :44:18
static int reconnect_enable; // :45:12
static const at_command_handler_t at_command_table[28]; // :69:35

int get_reconnect_enable_status(void); // :1542:5
AT_ERROR_CODE at_get_ssid_psk(char **ppara, char *ssid, char *pwd); // :1544:15
static AT_ERROR_CODE join_ap_handler(at_para_t *at_para); // :1583:22
static AT_ERROR_CODE disconnect_handler(at_para_t *at_para); // :1624:22
static AT_ERROR_CODE setautoconnect_handler(at_para_t *at_para); // :1639:22
static AT_ERROR_CODE set_ip_handler(at_para_t *at_para); // :1688:22

/* ======== components/stage/atcmd/src/at_common.c ======== */

typedef struct {
    AT_ERROR_CODE aec; // +0
    const char *info; // +4
} err_info_t; // :40:3

static const err_info_t err_info[24]; // :42:25

void at_response(AT_ERROR_CODE aec); // :69:6
s32 at_event(s32 idx); // :98:5
s32 at_serial(at_serial_para_t *ppara); // :112:5
AT_ERROR_CODE at_act(void); // :119:15
AT_ERROR_CODE at_reset(void); // :131:15
AT_ERROR_CODE at_mode(AT_MODE mode); // :139:15

/* ======== components/stage/atcmd/src/at_config.c ======== */

at_config_t at_cfg; // :63:13
static const at_var_descriptor_t at_cfg_table[22]; // :65:34

AT_ERROR_CODE at_getcfg(char *key); // :126:15
AT_ERROR_CODE at_typecfg(char *key); // :148:15
AT_ERROR_CODE at_setcfg(char *key, at_value_t *value); // :165:15
AT_ERROR_CODE at_ssidtxt(char *ssid); // :194:15
AT_ERROR_CODE at_config(void); // :211:15
AT_ERROR_CODE at_factory(void); // :225:15
AT_ERROR_CODE at_save(void); // :238:15
static s32 localecho1_verify(at_value_t *value); // :261:12
static s32 console1_speed_verify(at_value_t *value); // :271:12
static s32 console1_hwfc_verify(at_value_t *value); // :287:12
static s32 wifi_ssid_len_verify(at_value_t *value); // :391:12
static s32 wifi_mode_verify(at_value_t *value); // :401:12
static s32 ip_use_dhcp_verify(at_value_t *value); // :451:12

/* ======== components/stage/atcmd/src/at_extend.c ======== */

AT_ERROR_CODE at_version(char *version); // :36:15
AT_ERROR_CODE at_restore(char *address); // :50:15
AT_ERROR_CODE at_uart_config_get(void); // :66:15
AT_ERROR_CODE at_uart_config(int uartId, int uartBaud, int dataBit, int parity, int stopBit, int hwfc); // :92:15
AT_ERROR_CODE at_deep_sleep_mode(uint32_t sleep_time, int weakup_pin); // :129:15
AT_ERROR_CODE at_wifi_mode(int wifiMode); // :162:15
AT_ERROR_CODE at_wifi_mode_get(void); // :181:15
AT_ERROR_CODE at_get_apinfo(void); // :232:15
AT_ERROR_CODE at_join_ap(char *ssid, char *pwd); // :237:15
AT_ERROR_CODE at_scan_attr(char *at_para); // :267:15
AT_ERROR_CODE at_disconnect(char *at_para); // :274:15
AT_ERROR_CODE at_set_dhcp(unsigned char *at_para); // :287:15
AT_ERROR_CODE at_set_mac(unsigned char *at_para); // :300:15
AT_ERROR_CODE at_set_hostname(char *hostname); // :315:15
AT_ERROR_CODE at_network_status(char *param, at_callback_rsp_t *rsp); // :328:22
AT_ERROR_CODE at_domain_query(char *dnsAdress); // :340:22
AT_ERROR_CODE at_send_tcp_buffer(char *tcpBuffer); // :355:22
AT_ERROR_CODE at_set_ap(char *ssid, char *psk, char chl, int max_conn); // :368:22
AT_ERROR_CODE at_ap_sta_get(void); // :387:22
AT_ERROR_CODE at_mux_network(int mux); // :400:22
AT_ERROR_CODE at_set_trans_mode(int mode); // :415:22
AT_ERROR_CODE at_http_request(char *url, uint8_t type, uint8_t content_type, uint8_t *data, at_callback_rsp_t *req_rsp); // :428:22
AT_ERROR_CODE at_set_dns(char *dnsAdress); // :447:22
AT_ERROR_CODE at_io_cfg(int ID, int mode, int pull); // :461:22
AT_ERROR_CODE at_get_io_cfg(void); // :478:15
AT_ERROR_CODE at_set_iodir_cfg(int ID, int mode, int driving, int pull); // :487:22
AT_ERROR_CODE at_write_io_data(int ID, int data); // :503:22
AT_ERROR_CODE at_read_io_data(int ID, int data); // :519:22

/* ======== components/stage/atcmd/src/at_gpio.c ======== */

AT_ERROR_CODE at_gpioc(s32 num, char *direction, char *interrupt); // :34:15
AT_ERROR_CODE at_gpior(s32 num); // :40:15
AT_ERROR_CODE at_gpiow(s32 num, s32 value); // :46:15

/* ======== components/stage/atcmd/src/at_parameter.c ======== */

s32 at_get_value(char *strbuf, s32 pt, void *pvar, s32 vsize); // :36:5
s32 at_set_value(s32 pt, void *pvar, s32 vsize, at_value_t *value); // :80:5
int at_atoi(char *str); // :123:5
static int hex_to_num(char ch); // :138:12
static u32 get_text_para(char **ppara, void *pvar, u32 opt); // :171:12
static u32 get_tdata_para(char **ppara, void *pvar, u32 opt); // :241:12
static u32 get_hex_para(char **ppara, void *pvar, u32 opt); // :315:12
static u32 get_di_para(char **ppara, void *pvar, u32 opt); // :428:12
static u32 get_hi_para(char **ppara, void *pvar, u32 opt); // :515:12
static u32 get_ip_para(char **ppara, void *pvar, u32 opt); // :598:12
AT_ERROR_CODE at_get_parameters(char **ppara, at_para_descriptor_t *list, s32 lsize, s32 *pcnt); // :732:15
AT_ERROR_CODE at_get_newline(char *para, s32 size); // :835:15

/* ======== components/stage/atcmd/src/at_queue.c ======== */

static at_queue_callback_t at_queue_callback; // :34:28
static at_queue_t at_queue; // :35:19

s32 at_queue_init(void *buf, s32 size, at_queue_callback_t cb); // :37:5
AT_QUEUE_ERROR_CODE at_queue_get(u8 *element); // :55:21
AT_QUEUE_ERROR_CODE at_queue_peek(u8 *element); // :95:21

/* ======== components/stage/atcmd/src/at_socket.c ======== */

AT_ERROR_CODE create_tcp_udp_handler(at_para_t *at_para); // :39:15
AT_ERROR_CODE close_network_handler(at_para_t *at_para); // :120:15
AT_ERROR_CODE send_data_handler(at_para_t *at_para); // :157:15
AT_ERROR_CODE ap_server_handler(at_para_t *at_para); // :222:15
AT_ERROR_CODE client_ssl_config_path(at_para_t *at_para); // :278:15
AT_ERROR_CODE client_ssl_set_sni(at_para_t *at_para); // :378:15
AT_ERROR_CODE client_ssl_set_alpn(at_para_t *at_para); // :415:15

/* ======== components/stage/atcmd/src/at_status.c ======== */

static at_status_t at_sts; // :36:20
static at_peer_t dummy_peer; // :37:18
static const at_var_descriptor_t at_sts_table[7]; // :39:34
static const at_var_descriptor_t at_peer_table[22]; // :70:34

AT_ERROR_CODE at_status(char *sts_var); // :95:15
AT_ERROR_CODE at_setsts(char *key, at_value_t *value); // :131:15
AT_ERROR_CODE at_peer(s32 pn, at_peer_t *peer, char *var); // :150:15

/* ======== components/stage/atcmd/src/at_upgrade.c ======== */

AT_ERROR_CODE at_upgrade(char *hostname, char *path, s32 port); // :34:15

/* ======== components/stage/atcmd/src/at_wlan.c ======== */

static at_peer_t peers[5]; // :34:18

AT_ERROR_CODE at_peers(s32 pn, char *pv); // :36:15
AT_ERROR_CODE at_ping(char *hostname); // :60:15
AT_ERROR_CODE at_wifi(s32 value); // :73:15
AT_ERROR_CODE at_reassociate(void); // :87:15
AT_ERROR_CODE at_scan(char *mode, char *repeat); // :100:15
