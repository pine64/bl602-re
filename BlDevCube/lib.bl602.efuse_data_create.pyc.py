# decompyle3 version 3.3.2
# Python bytecode 3.7 (3394)
# Decompiled from: Python 3.8.5 (default, Jul 28 2020, 12:59:40) 
# [GCC 9.3.0]
# Embedded file name: lib\bl602\efuse_data_create.py
from lib import bflb_utils
keyslot0 = 28
keyslot1 = keyslot0 + 16
keyslot2 = keyslot1 + 16
keyslot3 = keyslot2 + 16
keyslot4 = keyslot3 + 16
keyslot5 = keyslot4 + 16
keyslot6 = keyslot5 + 16
wr_lock_key_slot_4_l = 13
wr_lock_key_slot_5_l = 14
wr_lock_boot_mode = 15
wr_lock_dbg_pwd = 16
wr_lock_sw_usage_0 = 17
wr_lock_wifi_mac = 18
wr_lock_key_slot_0 = 19
wr_lock_key_slot_1 = 20
wr_lock_key_slot_2 = 21
wr_lock_key_slot_3 = 22
wr_lock_key_slot_4_h = 23
wr_lock_key_slot_5_h = 24
rd_lock_dbg_pwd = 25
rd_lock_key_slot_0 = 26
rd_lock_key_slot_1 = 27
rd_lock_key_slot_2 = 28
rd_lock_key_slot_3 = 29
rd_lock_key_slot_4 = 30
rd_lock_key_slot_5 = 31

def efuse_data_create(name, value):
    efuse_data = bytearray(128)
    efuse_data_mask = bytearray(128)
    mask_4bytes = bytearray.fromhex('FFFFFFFF')
    rw_lock = 0
    if name == 'flash_aes_key':
        if len(value[0]) == 32:
            efuse_data[0] |= 1
        if len(value[0]) == 48:
            efuse_data[0] |= 2
        if len(value[0]) == 64:
            efuse_data[0] |= 3
        efuse_data[0] |= 128
        efuse_data_mask[0] |= 255
        keydata = bytearray.fromhex(value[0])
        efuse_data[keyslot2:keyslot4] = keydata + bytearray(32 - len(keydata))
        efuse_data_mask[keyslot2:keyslot4] = mask_4bytes * 8
        rw_lock |= 1 << wr_lock_key_slot_2
        rw_lock |= 1 << wr_lock_key_slot_3
        rw_lock |= 1 << rd_lock_key_slot_2
        rw_lock |= 1 << rd_lock_key_slot_3
        efuse_data[124:128] = bflb_utils.int_to_4bytearray_l(rw_lock)
        efuse_data_mask[124:128] = bflb_utils.int_to_4bytearray_l(rw_lock)
    return (
     efuse_data, efuse_data_mask)
# okay decompiling lib.bl602.efuse_data_create.pyc
