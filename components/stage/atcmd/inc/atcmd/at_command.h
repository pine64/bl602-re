/*
 * Copyright (C) 2017 XRADIO TECHNOLOGY CO., LTD. All rights reserved.
 *
 *  Redistribution and use in source and binary forms, with or without
 *  modification, are permitted provided that the following conditions
 *  are met:
 *    1. Redistributions of source code must retain the above copyright
 *       notice, this list of conditions and the following disclaimer.
 *    2. Redistributions in binary form must reproduce the above copyright
 *       notice, this list of conditions and the following disclaimer in the
 *       documentation and/or other materials provided with the
 *       distribution.
 *    3. Neither the name of XRADIO TECHNOLOGY CO., LTD. nor the names of
 *       its contributors may be used to endorse or promote products derived
 *       from this software without specific prior written permission.
 *
 *  THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
 *  "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
 *  LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR
 *  A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT
 *  OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
 *  SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT
 *  LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,
 *  DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY
 *  THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
 *  (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
 *  OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 */

#ifndef _AT_COMMAND_H_
#define _AT_COMMAND_H_

#include <stdio.h>
#include <string.h>
#include <stdlib.h>

#include <atcmd/at_types.h>
#include <atcmd/at_macros.h>
#include <atcmd/at_config.h>
#include <atcmd/at_status.h>
#include <atcmd/at_queue.h>

#ifdef __cplusplus
extern "C" {
#endif

typedef enum {
	AEC_OK=0,
	AEC_BLANK_LINE,
	AEC_CMD_FAIL,
	AEC_CMD_ERROR,
	AEC_PARA_ERROR,
	AEC_NO_PARA,
	AEC_UNSUPPORTED,
	AEC_NOT_FOUND,
	AEC_NULL_POINTER,
	AEC_OUT_OF_RANGE,
	AEC_SCAN_FAIL,
	AEC_READ_ONLY,
	AEC_SEND_FAIL,
	AEC_SWITCH_MODE,
	AEC_CONNECT_FAIL,
	AEC_BIND_FAIL,
	AEC_SOCKET_FAIL,
	AEC_LIMITED,
	AEC_DISCONNECT,
	AEC_NETWORK_ERROR,
	AEC_NOT_ENOUGH_MEMORY,
	AEC_IMPROPER_OPERATION,
	AEC_SOCKET_EXISTING,
	AEC_SEND_READY,
	AEC_SEND_TIMEOUT,
	AEC_UPGRADE_FAILED,
	AEC_UNDEFINED,
	AEC_NO_RESPONSE,
} AT_ERROR_CODE;

typedef enum {
	ACC_ACT=0,/* activate config */
	ACC_RST,/* reset the module */
	ACC_MODE, /* switch to data mode */
	ACC_SAVE, /* save config to flash */
	ACC_LOAD, /* load config from flash */
	ACC_STATUS, /* update status */
	ACC_FACTORY, /* Restore factory default settings */
	ACC_PEER, /* get detail information of the peer */
	ACC_PING, /* ping test */
	ACC_SOCKON, /* Open a network socket */
	ACC_SOCKW, /* Write data to socket */
	ACC_SOCKQ, /* Query socket for pending data */
	ACC_SOCKR, /* Read data from socket */
	ACC_SOCKC, /* Close socket */
	ACC_SOCKD, /* Disable/Enable socket server. */
	ACC_WIFI, /* Disable/Enable WiFi */
	ACC_REASSOCIATE, /* Trigger a WiFi Roam */
	ACC_GPIOC, /*  Configure specified GPIO */
	ACC_GPIOR, /* Read specified GPIO */
	ACC_GPIOW, /* Write specified GPIO */
	ACC_SCAN, /* scan available AP */
	//ADD FOR XR809 ACORDING TO ESP8266
	ACC_GMR,
	ACC_RESTORE,
	ACC_UART_DEF,
	ACC_SLEEP,
	ACC_WAKEUPGPIO,
	ACC_CWMODE_CUR,
	ACC_CWJAP_CUR,
	ACC_CWJAP_INFO,
	ACC_CWLAPOPT,
	ACC_CWLAP,
	ACC_CWQAP,
	ACC_CWDHCP_CUR,
	ACC_CIPSTAMAC_CUR,
	ACC_CIPSTA_CUR,
	ACC_CWHOSTNAME,
	ACC_APCFG,
//add
	ACC_CIPSTATUS,
	ACC_CIPDOMAIN,
	ACC_CIPSTART,
	ACC_CIPSENDBUF,
	ACC_CIPCLOSE,
	ACC_TCPSERVER,
	ACC_TCPSERVERMAXCONN,
	ACC_CIPMUX,
	ACC_CIPMODE,
	ACC_CIPDNS_CUR,
	ACC_CIPRECVDATA,
	ACC_CIPRECVMODE,
	ACC_CIPSEND,
	ACC_SYSIOSETCFG,
	ACC_SYSIOGETCFG,
	ACC_SYSGPIODIR,
	ACC_SYSGPIOWRITE,
	ACC_SYSGPIOREAD,
	ACC_DELETEAP,
	ACC_OTA,

} AT_CALLBACK_CMD;


typedef struct {
    at_di_t	linkId;
    at_text_t type[4];
    at_text_t hostname[AT_PARA_MAX_SIZE];
    at_di_t	port;
    at_di_t	localport;
    at_di_t    keepAlive;
} at_network_para_t;


typedef struct {
	at_di_t ID;
    at_di_t	mode;
    at_di_t	pull;
} at_setgpio_para_t;

typedef struct {
	at_di_t ID;
    at_di_t	data;
} at_writegpio_para_t;

typedef struct {
	at_di_t ID;
    at_di_t	mode;
} at_setgpiodir_para_t;

typedef struct {
    at_di_t linkId;
	at_di_t bufferlen;
    at_text_t *buffer;
} at_sendData_para_t;


typedef struct {
	at_config_t *cfg;
	at_status_t *sts;
	union {
		struct {
			char hostname[AT_PARA_MAX_SIZE];
		} ping;
		struct {
			s32 value;
		} wifi;
		struct {
			s32 method; /* 0: default 1: "a,r" 2: "p,r"*/
		} scan;
		struct {
			int fd;
			char hostname[AT_PARA_MAX_SIZE];
			s32 port;
			s32 protocol;	/* 0: TCP 1: UDP */
			s32 ind;		/* 0: disable 1: enable */
			int keepAlive;
		} sockon;
		struct {
			s32 id;
			s32 len;
			u8 *buf;
		} sockw;
		struct {
			s32 id;
		} sockq;
		struct {
			s32 id;
			s32 len;
		} sockr;
		struct {
			s32 id;
		} sockc;
		struct {
			s32 port;
			s32 protocol; /* 0: TCP 1: UDP */
		} sockd;
		struct {
			s32 port;
			s32 enable; /* 0: enable 1: disable */
			s32 max_conn;
		} tcp_server;
		struct {
			s32 len; /* transparent transmission send buffer length */
			u8 *buf; /* transparent transmission send buffer */
		} mode;
		struct{
			int uartId;
			int uartBaud;
			int dataBit;
			int parity;
			int stopBit;
			int hwfc;
		}uart;
		struct{
			int sleepMode;
		}sleep;
		struct{
			int gpioId;
			int edge;
		}wakeupgpio;
		struct {
			int mode;
		}wifiMode;
		struct{
			char ssid[33];
			char pwd[33];
		}joinParam;
		struct{
			char  ssid[64];
			char  psk[64];
			int   chl;
			int   ecn;
			int   max_conn;
			int   hidden;
		}apcfgParam;
		struct{
			char hostname[33];
		}iphostname;
		struct{
			char hostname[128];
		}dns_parse;
		struct{
			at_ip_t setdnsip;
		}set_dns;
		struct {
			int linkId;
			char networkType[4];
			char hostname[AT_PARA_MAX_SIZE];
			char IpAddr[12];
			at_text_t type[4];
			int port;
			int localport;
			int keepAlive;
		}net_param;
		struct{
			int id;
		}close_id;
		struct{
			int ID;
			int mode;
			int pull;
		}setgpio_para;
		struct{
			int ID;
			int mode;
		}setiodir_para;
		struct{
			int ID;
			int data;
		}writeiodata_para;
		struct{
			int ID;
		}readiodata_para;
		struct{
			int apnum;
		}deleteap_para;
	} u;
 } at_callback_para_t;

typedef struct
{
	u8  status; // 0: empty, 1: carry msg 
	s32 type; /* 0: value 1: buffer pointer */
	void *vptr; /* value or buffer pointer */
	s32 vsize;
} at_callback_rsp_t;

typedef struct {
	AT_ERROR_CODE (*handle_cb)(AT_CALLBACK_CMD cmd, at_callback_para_t *para, at_callback_rsp_t *rsp);
	s32 (*dump_cb)(u8 *buf, s32 len);
} at_callback_t;

typedef struct {
	u32 baudrate;
	u32 dataBit;
	u32 parity;
	u32 stopBit;
	u32 hwfc;
} at_serial_para_t;

extern at_callback_t at_callback;

extern AT_ERROR_CODE at_init(at_callback_t *cb);
extern AT_ERROR_CODE at_parse(void);
extern s32 at_event(s32 idx);
extern s32 at_serial(at_serial_para_t *ppara);
extern s32 at_dump(char* format, ...);
extern u32 at_get_errorcode(void);
extern s32 atcmd_send(char* format, ...);
extern int get_reconnect_enable_status(void);
extern void set_reconnect_disable(void);


#ifdef __cplusplus
}
#endif

#endif
