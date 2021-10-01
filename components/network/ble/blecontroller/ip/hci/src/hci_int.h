#ifndef __HCI_INT_H__
#define __HCI_INT_H__

#include <stdint.h>

#include <co_bt_defines.h>

enum HCI_MSG_DEST_LL {
    MNG = 0,
    CTRL = 1,
    BLE_MNG = 2,
    BLE_CTRL = 3,
    BT_MNG = 4,
    BT_CTRL_CONHDL = 5,
    BT_CTRL_BD_ADDR = 6,
    BT_BCST = 7,
    DBG = 8,
    LL_UNDEF = 9,
};
enum HCI_MSG_DEST_HL {
    HL_MNG = 0,
    HL_CTRL = 1,
    HL_DATA = 2,
    HL_AM0 = 3,
    HL_UNDEF = 4,
};
enum HCI_PACK_STATUS {
    HCI_PACK_OK = 0,
    HCI_PACK_IN_BUF_OVFLW = 1,
    HCI_PACK_OUT_BUF_OVFLW = 2,
    HCI_PACK_WRONG_FORMAT = 3,
    HCI_PACK_ERROR = 4,
};
struct hci_cmd_desc_tab_ref {
    uint8_t ogf; // +0
    uint16_t nb_cmds; // +2
    const struct hci_cmd_desc_tag *cmd_desc_tab; // +4
};
struct hci_cmd_desc_tag {
    uint16_t opcode; // +0
    uint8_t dest_field; // +2
    uint8_t par_size_max; // +3
    void *par_fmt; // +4
    void *ret_par_fmt; // +8
};
struct hci_evt_desc_tag {
    uint8_t code; // +0
    uint8_t dest_field; // +1
    uint8_t special_pack; // +2
    void *par_fmt; // +4
};
typedef uint16_t (*hci_pkupk_func_t)(uint8_t *, uint8_t *, uint16_t *, uint16_t);
struct hci_env_tag {
    struct evt_mask evt_msk; // +0
    struct evt_mask evt_msk_page_2; // +8
};
extern struct hci_env_tag hci_env;

#endif // __HCI_INT_H__
