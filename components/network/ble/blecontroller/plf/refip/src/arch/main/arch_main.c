#include <stdbool.h>

#include <FreeRTOS.h>
#include <queue.h>

#include <bl_wifi.h>
#include <driver/uart/uart.h>
#include <rwip.h>

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
uint32_t BLE_ROM_patch(void *pRet, ...);
uint16_t get_stack_usage(void);
void platform_reset(uint32_t error);
void blecontroller_main(void *pvParameters);
bool rw_main_task_post(void *msg, TickType_t timeout);
void rw_main_task_post_from_isr(void);
void rw_main_task_post_from_fw(void);
void bdaddr_init(void);

volatile bool Is_ext_scan_enable;
volatile bool Is_ready_to_rec_auxpacket;
volatile uint32_t Rec_sync_basecnt;
volatile uint32_t Rec_sync_fnt;

void ble_controller_init(uint8_t task_priority);
void ble_controller_deinit(void);
const struct rwip_eif_api *rwip_eif_get(uint8_t type);




/** BLE_ROM_hook_init
 */
void BLE_ROM_hook_init(void)
{
	_rom_patch_hook = NULL;
	ble_memcmp_ptr = NULL;
	ble_memcpy_ptr = NULL;
	ble_memset_ptr = NULL;
	ble_post_task_ptr = NULL;
}

/** BLE_ROM_patch
 */
uint32_t BLE_ROM_patch(void *pRet, ...)
{
	return 0;
}

/** get_stack_usage
 */
uint16_t get_stack_usage(void)
{
	__builtin_trap();
}

/** platform_reset
 */
void platform_reset(uint32_t error)
{
	uart_finish_transfers();
	if ((error != 0xc3c3c3c3) && (error != 0xa5a5a5a5)) {
		((void(*)(void)) NULL)();
	}
}

/** blecontroller_main
 */
void blecontroller_main(void *pvParameters)
{
	rw_task_msg_t msg;
	(*ble_memset_ptr)(&msg, 0, sizeof(rw_task_msg_t));
	do
	{
		if ((xQueueReceive(xRwmainQueue, &msg, 0xffffffff) == pdTRUE) && (msg.msg_type == 1))
		{
			hci_send_2_controller(msg.params);
		}
		rwip_schedule();
	}
	while( true );
}

/** rw_main_task_post
 */
bool rw_main_task_post(void *msg, TickType_t timeout)
{
	if (msg != NULL)
	{
		return xQueueGenericSend(xRwmainQueue, msg, timeout, queueSEND_TO_BACK) == pdTRUE;
	}
	return false;
}

/** rw_main_task_post_from_isr
 */
void rw_main_task_post_from_isr(void)
{
	rw_task_msg_t msg = {
		.msg_type = 2,
		.params = NULL
	};
	BaseType_t xHigherPriorityTaskWoken = pdFALSE;
	xQueueGenericSendFromISR(xRwmainQueue, &msg, &xHigherPriorityTaskWoken, queueSEND_TO_BACK);
	if (xHigherPriorityTaskWoken == pdTRUE)
	{
		vTaskSwitchContext();
	}
}

/** rw_main_task_post_from_fw
 */
void rw_main_task_post_from_fw(void)
{
	rw_task_msg_t msg = {
		.msg_type = 2,
		.params = NULL
	};
	if (TrapNetCounter == 0)
	{
		rw_main_task_post(&msg, 0xffffffff);
	}
	else
	{
		BaseType_t xHigherPriorityTaskWoken = pdFALSE;
		xQueueGenericSendFromISR(xRwmainQueue, &msg, &xHigherPriorityTaskWoken, queueSEND_TO_BACK);
		if (xHigherPriorityTaskWoken == pdTRUE)
		{
			vTaskSwitchContext();
		}
	}
}

/** bdaddr_init
 */
void bdaddr_init(void)
{
	uint8_t high, low;
	uint8_t addr[6];

	bl_wifi_mac_addr_get(addr);
	low = addr[5];
	high = addr[4];
	addr[5] = addr[0];
	addr[4] = addr[1];
	addr[1] = high;
	*(uint16_t)(addr + 2) = __builtin_bswap16(*(uint16_t)(addr + 2));
	if (low == 0xFF)
	{
		addr[1] = high + '\x01';
		addr[0] = '\0';
	}
	else
	{
		addr[0] = low + '\x01';
	}
	co_bdaddr_set(addr);
	printf("BD_ADDR:%02x:%02x:%02x:%02x:%02x:%02x\r\n", addr[5], addr[4], addr[3], addr[2], addr[1], addr[0]);
}

/** ble_controller_init
 */
void ble_controller_init(uint8_t task_priority)
{
	BLE_ROM_hook_init();
	rfc_init(40000000);
	Is_ext_scan_enable = false;
	Is_ready_to_rec_auxpacket = false;
	rwble_isr_clear();
	bl_irq_pending_clear(0x48);
	bl_irq_register(0x48, &rwble_isr);
	bl_irq_enable(0x48);
	bdaddr_init();
	rwip_init(error);
	xRwmainQueue = xQueueGenericCreate(20, sizeof(rw_task_msg_t));
	xTaskCreate(blecontroller_main, "blecontroller", 0x200, 0, task_priority, &rw_main_task_hdl);
}

/** ble_controller_deinit
 */
void ble_controller_deinit(void)
{
	rw_task_msg_t task_msg;
	(*ble_memset_ptr)(&task_msg, 0, sizeof(rw_task_msg_t));
	bl_irq_disable(0x48);
	vTaskDelete(rw_main_task_hdl);
	rw_main_task_hdl = 0;
	while (xQueueReceive(xRwmainQueue, &task_msg, 0) == pdTRUE)
	{
		if (task_msg.params != NULL)
		{
			ble_ke_msg_free((int)task_msg.params + -0xc);
		}
	}
	vQueueDelete(xRwmainQueue);
	xRwmainQueue = NULL;
}

/** *rwip_eif_get
 */
const struct rwip_eif_api *rwip_eif_get(uint8_t type)
{
	if (type != 0 && type != 2)
	{
		return NULL;
	}
	return &uart_api;
}
