#ifndef __MAC_IE_H__
#define __MAC_IE_H__

#include <stdint.h>


uint32_t mac_ie_find(uint32_t addr, uint16_t buflen, uint8_t ie_id);
uint32_t mac_vsie_find(uint32_t addr, uint16_t buflen, const uint8_t *oui, uint8_t ouilen);

#endif // __MAC_IE_H__
