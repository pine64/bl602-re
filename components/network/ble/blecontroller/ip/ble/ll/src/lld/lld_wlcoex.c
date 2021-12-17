#include "lld_wlcoex.h"

#include <stdio.h>

#include <driver/ble/602/reg_blecore.h>


void coex_dump_ble(void);


/** lld_wlcoex_set
 */
void lld_wlcoex_set(bool en)
{
	if (en == 0)
	{
		BLE_REG_100 = BLE_REG_100 & 0xffddff0c;
	}
	else
	{
		BLE_REG_100 = BLE_REG_100 | 0x2200f3;
	}
	BLE_REG_74 = BLE_REG_74 & 0xffe0ffff;
}

/** coex_dump_ble
 */
void coex_dump_ble(void)
{
	puts("=============    Coex BLE: coexif==================\r\n");
	printf("value is %08lx\r\n", *(unsigned long*) BLE_REG_100_ADDR);
	uint32_t val = BLE_REG_100;
	printf("mwsscanfreqmsk is %u\r\n", val >> 0x18 & 3);
	printf("wlcrxpriomode is %u\r\n", val >> 0x14 & 3);
	printf("wlctxpriomode is %u\r\n", val >> 0x10 & 3);
	printf("mwstxfrqmsk is %u\r\n", val >> 0xe & 3);
	printf("mwsrxfrqmsk is %u\r\n", val >> 0xc & 3);
	printf("mwstxmsk is %u\r\n", val >> 10 & 3);
	printf("mwsrxmsk is %u\r\n", val >> 8 & 3);
	printf("wlantxmsk is %u\r\n", val >> 6 & 3);
	printf("wlanrxmsk is %u\r\n", val >> 4 & 3);
	printf("mwswcien is %u\r\n", val >> 3 & 1);
	printf("mwscoexen is %u\r\n", val >> 2 & 1);
	printf("syncgenen is %u\r\n", val >> 1 & 1);
	printf("wlancoexen is %u\r\n", val & 1);
}
