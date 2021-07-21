#ifndef _RFC_BL602_H_
#define _RFC_BL602_H_
uint32_t rfc_get_power_level(uint32_t formatmod, int32_t power); // :1479:10
void rfc_apply_tx_power_offset(uint8_t channel, int8_t *power_offset); // :1643:6
#endif