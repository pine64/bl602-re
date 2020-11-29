/**
* @file at_server.c
* Source file for BL602
*/
#include "at_server.h"


struct _at_evt {
    int evt_id;
 // +0
    uint8_t ctx_buf[20];
 // +4
    uint32_t ctx_size;
 // +24
};

static at_sever_t g_at_server;

static int at_serial_read(unsigned char *buf, int size);
static int at_serial_write(unsigned char *buf, int len);
int at_serial_cfg_set(uint32_t baud, uint8_t data_bit, uint8_t stop_bit, uint8_t parity, uint8_t hwfc);
int at_serial_open(void);
int at_serial_close(void);
int at_serial_lock(void);
int at_serial_unlock(void);
int at_data_output(char *buf, int size);
int at_key_value_set(char *key, void *p_value);
int at_key_value_get(char *key, void *p_value);
s32 at_dump_noend(char *format);
void at_async_event(void *param);
void at_cmd_init(void);
static void at_cmd_exec(void *param);
int at_server_init(void);
int at_server_notify(at_evt_t event);
int at_server_notify_with_ctx(at_evt_t event, void *p_ctx, uint32_t ctx_size);
void at_uart_reinit(at_serial_para_t *at_para);




/** at_serial_cfg_set
 */
int at_serial_cfg_set(uint32_t baud, uint8_t data_bit, uint8_t stop_bit, uint8_t parity, uint8_t hwfc)
{
	ASSER_ERR(FALSE);
	return -1;
}

/** at_serial_open
 */
int at_serial_open(void)
{
	ASSER_ERR(FALSE);
	return -1;
}

/** at_serial_close
 */
int at_serial_close(void)
{
	ASSER_ERR(FALSE);
	return -1;
}

/** at_serial_lock
 */
int at_serial_lock(void)
{
	ASSER_ERR(FALSE);
	return -1;
}

/** at_serial_unlock
 */
int at_serial_unlock(void)
{
	ASSER_ERR(FALSE);
	return -1;
}

/** at_data_output
 */
int at_data_output(char *buf, int size)
{
	ASSER_ERR(FALSE);
	return -1;
}

/** at_key_value_set
 */
int at_key_value_set(char *key, void *p_value)
{
	ASSER_ERR(FALSE);
	return -1;
}

/** at_key_value_get
 */
int at_key_value_get(char *key, void *p_value)
{
	ASSER_ERR(FALSE);
	return -1;
}

/** at_dump_noend
 */
s32 at_dump_noend(char *format)
{
	ASSER_ERR(FALSE);
	return -1;
}

/** at_async_event
 */
void at_async_event(void *param)
{
	ASSER_ERR(FALSE);
	return;
}

/** at_cmd_init
 */
void at_cmd_init(void)
{
	ASSER_ERR(FALSE);
	return;
}

/** at_server_init
 */
int at_server_init(void)
{
	ASSER_ERR(FALSE);
	return -1;
}

/** at_server_notify
 */
int at_server_notify(at_evt_t event)
{
	ASSER_ERR(FALSE);
	return -1;
}

/** at_server_notify_with_ctx
 */
int at_server_notify_with_ctx(at_evt_t event, void *p_ctx, uint32_t ctx_size)
{
	ASSER_ERR(FALSE);
	return -1;
}

/** at_uart_reinit
 */
void at_uart_reinit(at_serial_para_t *at_para)
{
	ASSER_ERR(FALSE);
	return;
}

/** at_serial_read
 */
static int at_serial_read(unsigned char *buf, int size)
{
	ASSER_ERR(FALSE);
	return -1;
}

/** at_serial_write
 */
static int at_serial_write(unsigned char *buf, int len)
{
	ASSER_ERR(FALSE);
	return -1;
}

/** at_cmd_exec
 */
static void at_cmd_exec(void *param)
{
	ASSER_ERR(FALSE);
	return;
}
