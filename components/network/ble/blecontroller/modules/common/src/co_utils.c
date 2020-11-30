/**
* @file co_utils.c
* Source file for BL602
*/
#include "co_utils.h"


const unsigned char one_bits[16];
const uint16_t co_sca2ppm[];
const struct bd_addr co_null_bdaddr;
struct bd_addr co_default_bdaddr;

void co_bdaddr_set(uint8_t *bdaddr);
bool co_bdaddr_compare(const struct bd_addr *bd_address1, const struct bd_addr *bd_address2);




/** co_bdaddr_set
 */
void co_bdaddr_set(uint8_t *bdaddr)
{
	ASSER_ERR(FALSE);
	return;
}

/** co_bdaddr_compare
 */
bool co_bdaddr_compare(const struct bd_addr *bd_address1, const struct bd_addr *bd_address2)
{
	ASSER_ERR(FALSE);
	return false;
}
