/**
* @file hci.h
* Header file for BL602
*/
#ifndef __HCI_H__
#define __HCI_H__

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

#endif // __HCI_H__
