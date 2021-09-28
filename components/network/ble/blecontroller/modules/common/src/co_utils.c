#include <co_utils.h>

#include <co_bt_defines.h>
#include <co_string.h>

const unsigned char one_bits[16] = { 0x00, 0x01, 0x01, 0x02, 0x01, 0x02, 0x02, 0x03, 0x01, 0x02, 0x02, 0x03, 0x02, 0x03, 0x03, 0x04 };
const uint16_t co_sca2ppm[] = { 0xfa, 0x00, 0x96, 0x00, 0x64, 0x00, 0x4b, 0x00, 0x32, 0x00, 0x1e, 0x00, 0x14, 0x00 };
const struct bd_addr co_null_bdaddr = { 0, 0, 0, 0, 0, 0 };
// extern struct bd_addr co_default_bdaddr;

/** co_bdaddr_set
 */
void co_bdaddr_set(uint8_t *bdaddr)
{
	(*ble_memcpy_ptr)(&co_default_bdaddr, bdaddr, 6);
}

/** co_bdaddr_compare
 */
bool co_bdaddr_compare(const struct bd_addr *bd_address1, const struct bd_addr *bd_address2)
{
	int i = 0;
	do
	{
		if (bd_address1->addr[i] != bd_address2->addr[i])
		{
			return false;
		}
		++i;
	}
	while (i != 6);
	return true;
}
