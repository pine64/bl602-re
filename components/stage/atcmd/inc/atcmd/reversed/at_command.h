typedef enum AT_CALLBACK_CMD {
	ACC_ACT = 0,
	ACC_APCFG = 39,
	ACC_AP_STA_GET = 40,
	ACC_BLESYNC = 65,
	ACC_CIPCLOSE = 45,
	ACC_CIPDNS_CUR = 54,
	ACC_CIPDOMAIN = 42,
	ACC_CIPMODE = 52,
	ACC_CIPMUX = 51,
	ACC_CIPRECVDATA = 55,
	ACC_CIPRECVMODE = 56,
	ACC_CIPSEND = 57,
	ACC_CIPSENDBUF = 44,
	ACC_CIPSSLCALPN = 48,
	ACC_CIPSSLCCONF_P = 46,
	ACC_CIPSSLCSNI = 47,
	ACC_CIPSTAMAC_CUR = 36,
	ACC_CIPSTART = 43,
	ACC_CIPSTATUS = 41,
	ACC_CIPSTA_CUR = 37,
	ACC_CIPSTA_IP = 66,
	ACC_CIPSTA_IP_GET = 67,
	ACC_CWDHCP_CUR = 35,
	ACC_CWHOSTNAME = 38,
	ACC_CWJAP_CUR = 30,
	ACC_CWJAP_INFO = 31,
	ACC_CWLAP = 33,
	ACC_CWLAPOPT = 32,
	ACC_CWMODE_CUR = 28,
	ACC_CWMODE_GET = 29,
	ACC_CWQAP = 34,
	ACC_DEEP_SLEEP = 26,
	ACC_DELETEAP = 63,
	ACC_FACTORY = 6,
	ACC_GMR = 21,
	ACC_GPIOC = 17,
	ACC_GPIOR = 18,
	ACC_GPIOW = 19,
	ACC_HTTP_REQ = 53,
	ACC_LOAD = 4,
	ACC_MODE = 2,
	ACC_OTA = 64,
	ACC_PEER = 7,
	ACC_PING = 8,
	ACC_REASSOCIATE = 16,
	ACC_RESTORE = 22,
	ACC_RST = 1,
	ACC_SAVE = 3,
	ACC_SCAN = 20,
	ACC_SLEEP = 25,
	ACC_SOCKC = 13,
	ACC_SOCKD = 14,
	ACC_SOCKON = 9,
	ACC_SOCKQ = 11,
	ACC_SOCKR = 12,
	ACC_SOCKW = 10,
	ACC_STATUS = 5,
	ACC_SYSGPIODIR = 60,
	ACC_SYSGPIOREAD = 62,
	ACC_SYSGPIOWRITE = 61,
	ACC_SYSIOGETCFG = 59,
	ACC_SYSIOSETCFG = 58,
	ACC_TCPSERVER = 49,
	ACC_TCPSERVERMAXCONN = 50,
	ACC_UART_GET = 24,
	ACC_UART_SET = 23,
	ACC_WAKEUPGPIO = 27,
	ACC_WIFI = 15
} AT_CALLBACK_CMD;

typedef enum AT_ERROR_CODE {
	AEC_BIND_FAIL = 15,
	AEC_BLANK_LINE = 1,
	AEC_CMD_ERROR = 3,
	AEC_CMD_FAIL = 2,
	AEC_CONNECT_FAIL = 14,
	AEC_DISCONNECT = 18,
	AEC_IMPROPER_OPERATION = 21,
	AEC_LIMITED = 17,
	AEC_NETWORK_ERROR = 19,
	AEC_NOT_ENOUGH_MEMORY = 20,
	AEC_NOT_FOUND = 7,
	AEC_NO_PARA = 5,
	AEC_NO_RESPONSE = 27,
	AEC_NULL_POINTER = 8,
	AEC_OK = 0,
	AEC_OUT_OF_RANGE = 9,
	AEC_PARA_ERROR = 4,
	AEC_READ_ONLY = 11,
	AEC_SCAN_FAIL = 10,
	AEC_SEND_FAIL = 12,
	AEC_SEND_READY = 23,
	AEC_SEND_TIMEOUT = 24,
	AEC_SOCKET_EXISTING = 22,
	AEC_SOCKET_FAIL = 16,
	AEC_SWITCH_MODE = 13,
	AEC_UNDEFINED = 26,
	AEC_UNSUPPORTED = 6,
	AEC_UPGRADE_FAILED = 25
} AT_ERROR_CODE;

struct at_callback_t {
	AT_ERROR_CODE (*handle_cb)(enum AT_CALLBACK_CMD cmd, struct at_callback_para_t *para, struct at_callback_rsp_t *rsp);
	s32 (*dump_cb)(u8 *, s32);
};

struct at_ip_para_t {
	at_ip_t ip;
	at_ip_t getway;
	at_ip_t netmask;
	at_ip_t dns1;
	at_ip_t dns2;
};

struct at_network_para_t {
	at_di_t linkId;
	at_text_t type[4];
	at_text_t hostname[256];
	at_di_t port;
	at_di_t localport;
	at_di_t keepAlive;
};

struct at_tcpserver_para_t {
	at_di_t port;
	at_di_t enable;
	at_di_t tls;
	at_di_t ca;
};

struct at_sendData_para_t {
	at_di_t linkId;
	at_di_t bufferlen;
	at_text_t *buffer;
	at_text_t hostname[256];
	at_di_t port;
};

struct at_close_para_t {
	at_di_t linkId;
};

struct at_client_ssl_alpn_t {
	at_di_t linkId;
	at_text_t **alpn;
};

struct at_client_ssl_sni_t {
	at_di_t linkId;
	at_text_t sni[256];
};

struct at_client_ssl_path_para_t {
	at_di_t linkId;
	at_di_t auth_mode;
	at_text_t *ca;
	at_text_t *key;
	at_text_t *cert;
};

struct at_ble_sync_mode_t {
	int mode;
};

struct at_callback_para_t {
	struct at_config_t * cfg;
	struct at_status_t * sts;
	union {
		struct {
			char hostname[256];
		} ping;
		struct {
			s32 value;
		} wifi;
		struct {
			s32 method;
		} scan;
		struct at_tcpserver_para_t tcp_server;
		struct {
			s32 len;
			u8 *buf;
		} mode;
		struct {
			int uartId;
			int uartBaud;
			int dataBit;
			int parity;
			int stopBit;
			int hwfc;
		} uart;
		struct {
			uint32_t sleep_time;
			int weakup_pin;
		} sleep;
		struct {
			int mode;
		} wifiMode;
		struct {
			char ssid[33];
			char pwd[33];
		} joinParam;
		struct at_ip_para_t at_ip_para;
		struct {
			char ssid[64];
			char psk[64];
			int chl;
			int ecn;
			int max_conn;
			int hidden;
		} apcfgParam;
		struct {
			char hostname[33];
		} iphostname;
		struct {
			char hostname[128];
		} dns_parse;
		struct {
			char hostname[128];
			uint8_t type;
			uint8_t content_type;
			undefined field_0x82;
			undefined field_0x83;
			uint8_t * data;
		} http_req;
		struct {
			at_ip_t setdnsip;
		} set_dns;
		struct at_network_para_t net_param;
		struct at_sendData_para_t send_param;
		struct at_close_para_t close_id;
		struct at_client_ssl_path_para_t client_ssl_path_cfg;
		struct at_client_ssl_sni_t client_ssl_sni_cfg;
		struct at_client_ssl_alpn_t client_ssl_alpn_cfg;
		struct at_ble_sync_mode_t ble_sync_mode;
		struct {
			int ID;
			int mode;
			int pull;
		} setgpio_para;
		struct {
			int ID;
			int mode;
		} setiodir_para;
		struct {
			int ID;
			int data;
		} writeiodata_para;
		struct {
			int ID;
		} readiodata_para;
		struct {
			int apnum;
		} deleteap_para;
	} u;
};
