#ifndef _MAC_IE_H_
#define _MAC_IE_H_

#include <stdint.h>

struct mgmt_ie {
    uint8_t element_id;
    uint8_t payload_length;
    uint8_t payload[0];
};

uint32_t mac_ie_find(uint32_t addr, uint16_t buflen, uint8_t ie_id);
uint32_t mac_vsie_find(uint32_t addr, uint16_t buflen, const uint8_t *oui, uint8_t ouilen);

#endif // _MAC_IE_H_
