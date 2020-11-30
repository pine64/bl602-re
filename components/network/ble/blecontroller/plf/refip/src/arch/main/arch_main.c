/**
* @file arch_main.c
* Source file for BL602
*/
#include "arch_main.h"


QueueHandle_t xRwmainQueue;
uint32_t rw_main_task_hdl;
const struct rwip_eif_api uart_api;
uint32_t error;
uint32_t critical_sec_cnt;
void *(*ble_memcpy_ptr)(void *, const void *, unsigned int);
void *(*ble_memset_ptr)(void *, int, unsigned int);
int (*ble_memcmp_ptr)(const void *, const void *, unsigned int);
void (*ble_post_task_ptr)(void);
uint32_t (*_rom_patch_hook)(void *, ...);

void BLE_ROM_hook_init(void);
uint32_t BLE_ROM_patch(void *pRet);
uint16_t get_stack_usage(void);
void platform_reset(uint32_t error);
void blecontroller_main(void *pvParameters);
bool rw_main_task_post(void *msg, uint32_t timeout);
void rw_main_task_post_from_isr(void);
void rw_main_task_post_from_fw(void);
void bdaddr_init(void);

volatile uint8_t Is_ext_scan_enable;
volatile uint8_t Is_ready_to_rec_auxpacket;
volatile uint32_t Rec_sync_basecnt;
volatile uint32_t Rec_sync_fnt;

void ble_controller_init(uint8_t task_priority);
void ble_controller_deinit(void);
const struct rwip_eif_api *rwip_eif_get(uint8_t type);




/** BLE_ROM_hook_init
 */
void BLE_ROM_hook_init(void)
{
	ASSER_ERR(FALSE);
	return;
}

/** BLE_ROM_patch
 */
uint32_t BLE_ROM_patch(void *pRet)
{
	ASSER_ERR(FALSE);
	return 0xffffffff;
}

/** get_stack_usage
 */
uint16_t get_stack_usage(void)
{
	ASSER_ERR(FALSE);
	return 0xffff;
}

/** platform_reset
 */
void platform_reset(uint32_t error)
{
	ASSER_ERR(FALSE);
	return;
}

/** blecontroller_main
 */
void blecontroller_main(void *pvParameters)
{
	ASSER_ERR(FALSE);
	return;
}

/** rw_main_task_post
 */
bool rw_main_task_post(void *msg, uint32_t timeout)
{
	ASSER_ERR(FALSE);
	return false;
}

/** rw_main_task_post_from_isr
 */
void rw_main_task_post_from_isr(void)
{
	ASSER_ERR(FALSE);
	return;
}

/** rw_main_task_post_from_fw
 */
void rw_main_task_post_from_fw(void)
{
	ASSER_ERR(FALSE);
	return;
}

/** bdaddr_init
 */
void bdaddr_init(void)
{
	ASSER_ERR(FALSE);
	return;
}

/** ble_controller_init
 */
void ble_controller_init(uint8_t task_priority)
{
	ASSER_ERR(FALSE);
	return;
}

/** ble_controller_deinit
 */
void ble_controller_deinit(void)
{
	ASSER_ERR(FALSE);
	return;
}

/** *rwip_eif_get
 */
const struct rwip_eif_api *rwip_eif_get(uint8_t type)
{
	ASSER_ERR(FALSE);
	returnNULL;
}
