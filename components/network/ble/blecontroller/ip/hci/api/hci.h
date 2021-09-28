#ifndef BLECONTROLLER_IP_HCI_HCI_H
#define BLECONTROLLER_IP_HCI_HCI_H

#include <stdint.h>

enum HCI_MSG {
    HCI_MSG_ID_FIRST = 2048,
    HCI_CMD_CMP_EVENT = 2049,
    HCI_CMD_STAT_EVENT = 2050,
    HCI_EVENT = 2051,
    HCI_LE_EVENT = 2052,
    HCI_COMMAND = 2053,
    HCI_ACL_DATA_RX = 2054,
    HCI_ACL_DATA_TX = 2055,
    HCI_TCI_LMP = 2056,
    HCI_DBG_EVT = 2057,
    HCI_MSG_ID_LAST = 2058,
};

void hci_init(void);
void hci_reset(void);
void hci_send_2_host(void *param);
void hci_send_2_controller(void *param);
uint8_t hci_evt_mask_set(const struct evt_mask *evt_msk, uint8_t page);

#endif /* BLECONTROLLER_IP_HCI_HCI_H */
