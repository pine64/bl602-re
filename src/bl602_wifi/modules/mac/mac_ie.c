#include <modules/mac/mac_ie.h>
#include <modules/mac/mac_frame.h>

#include <modules/common/co_utils.h>

uint32_t mac_ie_find(uint32_t addr, uint16_t buflen, uint8_t ie_id) {
    int offset = 0;
    while (offset < buflen) {
        struct mgmt_ie* data = (struct mgmt_ie*) addr;
        if (data->element_id == ie_id) {
            return addr;
        }
        addr = addr + sizeof(struct mgmt_ie) + data->payload_length;
    }
    return 0;
}

uint32_t mac_vsie_find(uint32_t addr, uint16_t buflen, const uint8_t *oui, uint8_t ouilen) {
    int offset = 0;
    while (offset < buflen) {
        struct mgmt_ie* data = (struct mgmt_ie*) addr;
        if (data->element_id == MAC_ELTID_OUI) {
            if (co_cmp8p((uint32_t)&(data->payload), oui, ouilen)) {
                return addr;
            }
        }
        addr = addr + sizeof(struct mgmt_ie) + data->payload_length;
    }
    return 0;
}
