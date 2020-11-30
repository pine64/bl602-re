
uint32_t mac_ie_find(uint32_t addr, uint16_t buflen, uint8_t ie_id);
uint32_t mac_vsie_find(uint32_t addr, uint16_t buflen, uint8_t * oui, uint8_t ouilen);
#if 0 //TODO EXISTS ALEADY
/**
* @file mac_ie.c
* Source file for BL602
*/
#include "mac_ie.h"


uint32_t mac_ie_find(uint32_t addr, uint16_t buflen, uint8_t ie_id);
uint32_t mac_vsie_find(uint32_t addr, uint16_t buflen, const uint8_t *oui, uint8_t ouilen);




/** mac_ie_find
 */
uint32_t mac_ie_find(uint32_t addr, uint16_t buflen, uint8_t ie_id)
{
	ASSER_ERR(FALSE);
	return 0xffffffff;
}

/** mac_vsie_find
 */
uint32_t mac_vsie_find(uint32_t addr, uint16_t buflen, const uint8_t *oui, uint8_t ouilen)
{
	ASSER_ERR(FALSE);
	return 0xffffffff;
}
#endf 0 //TODO EXISTS ALEADY
