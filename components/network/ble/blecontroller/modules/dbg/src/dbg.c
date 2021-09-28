#include <stdint.h>

#include <hci.h>
#include <ke_msg.h>

void ble_dbg_platform_reset_complete(uint32_t error)
{
	uint8_t *mem = (uint8_t *) ble_ke_msg_alloc(0x801, 0, 0xfc11, 1);
	if (error == 0xa5a5a5a5)
	{
	  *mem = 3;
	}
	else
	{
		if (error == 0xc3c3c3c3)
	{
			*mem = 0;
		}
	}
	hci_send_2_host(mem);
}
