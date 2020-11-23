

#ifndef AT_COMMAND_INCLUDED
#define AT_COMMAND_INCLUDED

typedef unsigned char   undefined;

typedef unsigned char    byte;
typedef unsigned int    dword;
typedef long long    longlong;
typedef unsigned char    uchar;
typedef unsigned int    uint;
typedef unsigned long    ulong;
typedef unsigned long long    ulonglong;
typedef unsigned char    undefined1;
typedef unsigned int    undefined4;
typedef unsigned long long    undefined8;
typedef unsigned short    ushort;
typedef unsigned short    word;
typedef int at_di_t;

typedef uchar at_hex_t;
typedef uint at_hi_t;
typedef uchar at_ip_t[4];
typedef char at_text_t;
typedef int s32;
typedef ushort u16;
typedef uint u32;
typedef uchar u8;
typedef uchar __uint8_t;
typedef __uint8_t uint8_t;

// Error code return value enumeration
typedef enum AT_ERROR_CODE {
    AEC_OK=0,
    AEC_BLANK_LINE=1,
    AEC_CMD_FAIL=2,
    AEC_CMD_ERROR=3,
    AEC_PARA_ERROR=4,
    AEC_NO_PARA=5,
    AEC_UNSUPPORTED=6,
    AEC_NOT_FOUND=7,
    AEC_NULL_POINTER=8,
    AEC_OUT_OF_RANGE=9,
    AEC_SCAN_FAIL=10,
    AEC_READ_ONLY=11,
    AEC_SEND_FAIL=12,
    AEC_SWITCH_MODE=13,
    AEC_CONNECT_FAIL=14,
    AEC_BIND_FAIL=15,
    AEC_SOCKET_FAIL=16,
    AEC_LIMITED=17,
    AEC_DISCONNECT=18,
    AEC_NETWORK_ERROR=19,
    AEC_NOT_ENOUGH_MEMORY=20,
    AEC_IMPROPER_OPERATION=21,
    AEC_SOCKET_EXISTING=22,
    AEC_SEND_READY=23,
    AEC_SEND_TIMEOUT=24,
    AEC_UPGRADE_FAILED=25,
    AEC_UNDEFINED=26,
    AEC_NO_RESPONSE=27
} AT_ERROR_CODE;

typedef enum AT_CALLBACK_CMD {
    ACC_ACT=0,
    ACC_RST=1,
    ACC_MODE=2,
    ACC_SAVE=3,
    ACC_LOAD=4,
    ACC_STATUS=5,
    ACC_FACTORY=6,
    ACC_PEER=7,
    ACC_PING=8,
    ACC_SOCKON=9,
    ACC_SOCKW=10,
    ACC_SOCKQ=11,
    ACC_SOCKR=12,
    ACC_SOCKC=13,
    ACC_SOCKD=14,
    ACC_WIFI=15,
    ACC_GPIOC=17,
    ACC_REASSOCIATE=16,
    ACC_GPIOR=18,
    ACC_GPIOW=19,
    ACC_SCAN=20,
    ACC_GMR=21,
    ACC_RESTORE=22,
    ACC_UART_SET=23,
    ACC_UART_GET=24,
    ACC_SLEEP=25,
    ACC_DEEP_SLEEP=26,
    ACC_WAKEUPGPIO=27,
    ACC_CWMODE_CUR=28,
    ACC_CWMODE_GET=29,
    ACC_CWJAP_CUR=30,
    ACC_CWJAP_INFO=31,
    ACC_CWLAPOPT=32,
    ACC_CWLAP=33,
    ACC_CWQAP=34,
    ACC_CWDHCP_CUR=35,
    ACC_CIPSTAMAC_CUR=36,
    ACC_CIPSTA_CUR=37,
    ACC_CWHOSTNAME=38,
    ACC_APCFG=39,
    ACC_AP_STA_GET=40,
    ACC_CIPSTATUS=41,
    ACC_CIPDOMAIN=42,
    ACC_CIPSTART=43,
    ACC_CIPSENDBUF=44,
    ACC_CIPCLOSE=45,
    ACC_CIPSSLCCONF_P=46,
    ACC_CIPSSLCSNI=47,
    ACC_CIPSSLCALPN=48,
    ACC_TCPSERVER=49,
    ACC_TCPSERVERMAXCONN=50,
    ACC_CIPMUX=51,
    ACC_CIPMODE=52,
    ACC_HTTP_REQ=53,
    ACC_CIPDNS_CUR=54,
    ACC_CIPRECVDATA=55,
    ACC_CIPRECVMODE=56,
    ACC_CIPSEND=57,
    ACC_SYSIOSETCFG=58,
    ACC_SYSIOGETCFG=59,
    ACC_SYSGPIODIR=60,
    ACC_SYSGPIOWRITE=61,
    ACC_SYSGPIOREAD=62,
    ACC_DELETEAP=63,
    ACC_OTA=64,
    ACC_BLESYNC=65,
    ACC_CIPSTA_IP=66,
    ACC_CIPSTA_IP_GET=67
} AT_CALLBACK_CMD;

// at_callback_t structure
// void* handle_cb - Needs typing
// void* dump_cb - Needs typing
struct at_callback_t {
    AT_ERROR_CODE (* handle_cb)(enum AT_CALLBACK_CMD, struct at_callback_para_t *, struct at_callback_rsp_t *);
    s32 (* dump_cb)(u8 *, s32);
};

struct at_config_t {
    at_di_t CIPMUX;
    at_di_t apDhcp;
    at_di_t staDhcp;
    at_di_t link_type[5];
    at_text_t nv_manuf[32];
    at_text_t nv_model[32];
    at_text_t nv_serial[32];
    at_hex_t nv_wifi_macaddr[6];
    undefined field_0x86;
    undefined field_0x87;
    at_di_t blink_led;
    at_hi_t wind_off_low;
    at_hi_t wind_off_medium;
    at_hi_t wind_off_high;
    at_text_t user_desc[64];
    at_text_t escape_seq[8];
    at_di_t localecho1;
    at_di_t console1_speed;
    at_di_t console1_hwfc;
    at_di_t console1_enabled;
    at_di_t sleep_enabled;
    at_di_t standby_enabled;
    at_di_t standby_time;
    at_di_t wifi_tx_msdu_lifetime;
    at_di_t wifi_rx_msdu_lifetime;
    at_hi_t wifi_operational_mode;
    at_di_t wifi_beacon_wakeup;
    at_di_t wifi_beacon_interval;
    at_di_t wifi_listen_interval;
    at_di_t wifi_rts_threshold;
    at_hex_t wifi_ssid[33];
    undefined field_0x139;
    undefined field_0x13a;
    undefined field_0x13b;
    at_di_t wifi_ssid_len;
    at_di_t wifi_channelnum;
    at_hi_t wifi_opr_rate_mask;
    at_hi_t wifi_bas_rate_mask;
    at_di_t wifi_mode;
    at_di_t wifi_auth_type;
    at_di_t wifi_powersave;
    at_di_t wifi_tx_power;
    at_di_t wifi_rssi_thresh;
    at_di_t wifi_rssi_hyst;
    at_di_t wifi_ap_idle_timeout;
    at_di_t wifi_beacon_loss_thresh;
    at_di_t wifi_priv_mode;
    at_hex_t wifi_wep_keys[4][16];
    at_hex_t wifi_wep_key_lens[4];
    at_di_t wifi_wep_default_key;
    at_hex_t wifi_wpa_psk_raw[32];
    at_text_t wifi_wpa_psk_text[65];
    undefined field_0x219;
    undefined field_0x21a;
    undefined field_0x21b;
    at_di_t ip_use_dhcp;
    at_di_t ip_use_httpd;
    at_di_t ip_mtu;
    at_text_t ip_hostname[32];
    at_text_t ip_apdomainname[32];
    at_ip_t ip_ipaddr;
    at_ip_t ip_netmask;
    at_ip_t ip_gw;
    at_ip_t ip_dns;
    at_di_t ip_http_get_recv_timeout;
    at_di_t ip_dhcp_timeout;
    at_di_t ip_sockd_timeout;
};

struct at_status_t {
    at_text_t version[32];
    at_di_t reset_reason;
    at_di_t conf_flag;
    at_di_t system_uptime;
    at_di_t system_sleeptime;
    at_di_t gpio_enable;
    at_di_t captiveportal;
    at_di_t wifi_state;
    at_hex_t wifi_bssid[6];
    undefined field_0x42;
    undefined field_0x43;
    at_di_t wifi_aid;
    at_di_t wifi_channelnum;
    at_hi_t wifi_sup_rate_mask;
    at_hi_t wifi_bas_rate_mask;
    at_hi_t wifi_chan_activity2;
    at_di_t wifi_max_tx_power;
    at_di_t wifi_reg_country;
    at_di_t wifi_dtim_period;
    at_di_t wifi_sleeping;
    at_di_t wifi_num_assoc;
    at_ip_t ip_ipaddr;
    at_ip_t ip_netmask;
    at_ip_t ip_gw;
    at_ip_t ip_dns;
    at_di_t ip_sock_open;
    at_di_t ip_sockd_port;
    at_di_t free_heap;
    at_di_t min_heap;
    at_di_t current_time;
};


typedef struct at_callback_rsp_t at_callback_rsp_t, *Pat_callback_rsp_t;

struct at_callback_rsp_t {
    u8 status;
    undefined field_0x1;
    undefined field_0x2;
    undefined field_0x3;
    s32 type;
    void * vptr;
    s32 vsize;
};

typedef struct at_callback_t at_callback_t, *Pat_callback_t;





typedef struct at_command_handler_t at_command_handler_t, *Pat_command_handler_t;

typedef struct at_para_t at_para_t, *Pat_para_t;

struct at_command_handler_t {
    char * cmd;
    AT_ERROR_CODE (* handler)(struct at_para_t *);
    char * usage;
};

struct at_para_t {
    char * ptr;
};

typedef struct at_echoswitch_para_t at_echoswitch_para_t, *Pat_echoswitch_para_t;

struct at_echoswitch_para_t {
    int echoSwitch;
};

typedef struct at_getcfg_t at_getcfg_t, *Pat_getcfg_t;

struct at_getcfg_t {
    at_text_t key[256];
};

typedef struct at_gpiowakeup_para_t at_gpiowakeup_para_t, *Pat_gpiowakeup_para_t;

struct at_gpiowakeup_para_t {
    at_di_t sleep_time;
    at_di_t gpioId;
};

typedef struct at_hostname_para_t at_hostname_para_t, *Pat_hostname_para_t;

struct at_hostname_para_t {
    at_text_t hostname[256];
};

typedef struct at_http_para_t at_http_para_t, *Pat_http_para_t;

struct at_http_para_t {
    at_text_t hostname[256];
    uint8_t type;
    uint8_t content_type;
    at_text_t data[256];
};

typedef struct at_joinAp_para_t at_joinAp_para_t, *Pat_joinAp_para_t;

struct at_joinAp_para_t {
    at_text_t ssid[256];
    at_text_t pwd[256];
};

typedef struct at_scan_opt_t at_scan_opt_t, *Pat_scan_opt_t;

struct at_scan_opt_t {
    uint8_t sort_enable;
    uint8_t mask;
};

typedef struct at_scan_para_t at_scan_para_t, *Pat_scan_para_t;

struct at_scan_para_t {
    at_text_t mode[2];
    at_text_t repeat[2];
};

typedef struct at_uart_para_t at_uart_para_t, *Pat_uart_para_t;

struct at_uart_para_t {
    at_di_t uart_id;
    at_di_t baudrate;
    at_di_t data_bits;
    at_di_t stop_bits;
    at_di_t parity;
    at_di_t hwfc;
};

typedef struct at_wifiMode_para_t at_wifiMode_para_t, *Pat_wifiMode_para_t;

struct at_wifiMode_para_t {
    at_di_t wifi_mode;
};

typedef struct cmd_cache cmd_cache, *Pcmd_cache;

typedef uint u32;

struct cmd_cache {
    u32 cnt;
    u8 buf[1028];
};

typedef struct cmd_cache cmd_cache_t;

typedef struct cmd_send_cache cmd_send_cache, *Pcmd_send_cache;

typedef ushort u16;

struct cmd_send_cache {
    u32 status;
    u32 cnt;
    u32 linkID;
    u32 length;
    u8 hostname[256];
    u16 port;
    u8 buf[1028];
    undefined field_0x516;
    undefined field_0x517;
};

typedef struct cmd_send_cache cmd_send_cache_t;

struct at_ip_para_t {
    at_ip_t ip;
    at_ip_t getway;
    at_ip_t netmask;
    at_ip_t dns1;
    at_ip_t dns2;
};

struct at_client_ssl_sni_t {
    at_di_t linkId;
    at_text_t sni[256];
};

struct at_client_ssl_path_para_t {
    at_di_t linkId;
    at_di_t auth_mode;
    at_text_t * ca;
    at_text_t * key;
    at_text_t * cert;
};

struct at_ble_sync_mode_t {
    int mode;
};

struct at_close_para_t {
    at_di_t linkId;
};

struct at_sendData_para_t {
    at_di_t linkId;
    at_di_t bufferlen;
    at_text_t * buffer;
    at_text_t hostname[256];
    at_di_t port;
};

struct at_network_para_t {
    at_di_t linkId;
    at_text_t type[4];
    at_text_t hostname[256];
    at_di_t port;
    at_di_t localport;
    at_di_t keepAlive;
};

struct at_client_ssl_alpn_t {
    at_di_t linkId;
    at_text_t * * alpn;
};

struct at_tcpserver_para_t {
    at_di_t port;
    at_di_t enable;
    at_di_t tls;
    at_di_t ca;
};


#endif AT_COMMAND_INCLUDED