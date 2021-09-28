/**
* @file bl_socket.c
* Source file for BL602
*/
#include "bl_socket.h"

#include <FreeRTOS.h>
#include <semphr.h>

#include <at_command.h>

#warning Add #include <lwip/err.h>
typedef s8 err_t;
typedef u16 u16_t;
typedef struct {} ip_addr_t;

#warning Add #include <fs/vfs_romfs.h>
typedef struct {} romfs_filebuf_t;

struct pbuf;
struct udp_pcb;
struct altcp_pcb;


static struct server_arg g_server_arg;
static server_ctrl_t g_server_ctrl;
static network_t networks;
static u32 g_server_enable;
SemaphoreHandle_t g_server_sem;
SemaphoreHandle_t g_network_sem;
static int32_t cipsend_totlen;

AT_ERROR_CODE bl_cipstatus(at_callback_para_t *para, at_callback_rsp_t *rsp);
static err_t tcp_receive_callback(void *arg, struct altcp_pcb *conn, struct pbuf *p, err_t err);
static err_t tcp_sent_callback(void *arg, struct altcp_pcb *conn, u16_t len);
static void tcp_err_callback(void *arg, err_t err);
static err_t tcp_connected_callback(void *arg, struct altcp_pcb *conn, err_t err);
static void udp_receive_callback(void *arg, struct udp_pcb *pcb, struct pbuf *p, const ip_addr_t *addr, u16_t port);
static int get_romfs_file_content(const char *path, romfs_filebuf_t *buf);
AT_ERROR_CODE bl_cipstart(at_callback_para_t *para, at_callback_rsp_t *rsp);
AT_ERROR_CODE bl_cipsendbuf(at_callback_para_t *para, at_callback_rsp_t *rsp);
AT_ERROR_CODE bl_cipclose(at_callback_para_t *para, at_callback_rsp_t *rsp);
static err_t tcp_accept_callback(void *arg, struct altcp_pcb *new_conn, err_t err);
AT_ERROR_CODE bl_tcpserver(at_callback_para_t *para, at_callback_rsp_t *rsp);

struct send_data_ctx {
    int linkId;
 // +0
    uint8_t *buf;
 // +4
};

static void tcp_send_data(void *arg);
static void udp_send_data(void *arg);
AT_ERROR_CODE bl_cipsend(at_callback_para_t *para, at_callback_rsp_t *rsp);
AT_ERROR_CODE bl_cipsslcconf_path(at_callback_para_t *para, at_callback_rsp_t *unused);
AT_ERROR_CODE bl_cipsslcsni(at_callback_para_t *para, at_callback_rsp_t *rsp);
AT_ERROR_CODE bl_cipsslcalpn(at_callback_para_t *para, at_callback_rsp_t *unused);




/** bl_cipstatus
 */
AT_ERROR_CODE bl_cipstatus(at_callback_para_t *para, at_callback_rsp_t *rsp)
{
	__builtin_trap();
}

/** bl_cipstart
 */
AT_ERROR_CODE bl_cipstart(at_callback_para_t *para, at_callback_rsp_t *rsp)
{
	__builtin_trap();
}

/** bl_cipsendbuf
 */
AT_ERROR_CODE bl_cipsendbuf(at_callback_para_t *para, at_callback_rsp_t *rsp)
{
	__builtin_trap();
}

/** bl_cipclose
 */
AT_ERROR_CODE bl_cipclose(at_callback_para_t *para, at_callback_rsp_t *rsp)
{
	__builtin_trap();
}

/** bl_tcpserver
 */
AT_ERROR_CODE bl_tcpserver(at_callback_para_t *para, at_callback_rsp_t *rsp)
{
	__builtin_trap();
}

/** bl_cipsend
 */
AT_ERROR_CODE bl_cipsend(at_callback_para_t *para, at_callback_rsp_t *rsp)
{
	__builtin_trap();
}

/** bl_cipsslcconf_path
 */
AT_ERROR_CODE bl_cipsslcconf_path(at_callback_para_t *para, at_callback_rsp_t *unused)
{
	__builtin_trap();
}

/** bl_cipsslcsni
 */
AT_ERROR_CODE bl_cipsslcsni(at_callback_para_t *para, at_callback_rsp_t *rsp)
{
	__builtin_trap();
}

/** bl_cipsslcalpn
 */
AT_ERROR_CODE bl_cipsslcalpn(at_callback_para_t *para, at_callback_rsp_t *unused)
{
	__builtin_trap();
}

/** tcp_receive_callback
 */
static err_t tcp_receive_callback(void *arg, struct altcp_pcb *conn, struct pbuf *p, err_t err)
{
	__builtin_trap();
}

/** tcp_sent_callback
 */
static err_t tcp_sent_callback(void *arg, struct altcp_pcb *conn, u16_t len)
{
	__builtin_trap();
}

/** tcp_err_callback
 */
static void tcp_err_callback(void *arg, err_t err)
{
	__builtin_trap();
}

/** tcp_connected_callback
 */
static err_t tcp_connected_callback(void *arg, struct altcp_pcb *conn, err_t err)
{
	__builtin_trap();
}

/** udp_receive_callback
 */
static void udp_receive_callback(void *arg, struct udp_pcb *pcb, struct pbuf *p, const ip_addr_t *addr, u16_t port)
{
	__builtin_trap();
}

/** get_romfs_file_content
 */
static int get_romfs_file_content(const char *path, romfs_filebuf_t *buf)
{
	__builtin_trap();
}

/** tcp_accept_callback
 */
static err_t tcp_accept_callback(void *arg, struct altcp_pcb *new_conn, err_t err)
{
	__builtin_trap();
}

/** tcp_send_data
 */
static void tcp_send_data(void *arg)
{
	__builtin_trap();
}

/** udp_send_data
 */
static void udp_send_data(void *arg)
{
	__builtin_trap();
}
