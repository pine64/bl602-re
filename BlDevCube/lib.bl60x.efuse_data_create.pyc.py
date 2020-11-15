# decompyle3 version 3.3.2
# Python bytecode 3.7 (3394)
# Decompiled from: Python 3.8.5 (default, Jul 28 2020, 12:59:40) 
# [GCC 9.3.0]
# Embedded file name: lib\bl60x\efuse_data_create.py
from lib import bflb_utils
keyslot0 = 28
keyslot1 = keyslot0 + 16
keyslot2 = keyslot1 + 16
keyslot3 = keyslot2 + 16
keyslot4 = keyslot3 + 16
keyslot5 = keyslot4 + 16
keyslot6 = 156
keyslot7 = keyslot6 + 16
keyslot8 = keyslot7 + 16
keyslot9 = keyslot8 + 16
keyslot10 = keyslot9 + 16
keyslot11 = keyslot10 + 16
keyslot12 = keyslot11 + 16
rd_lock_key_slot_5 = 31
rd_lock_key_slot_4 = 30
rd_lock_key_slot_3 = 28
rd_lock_key_slot_2 = 28
rd_lock_key_slot_1 = 27
rd_lock_key_slot_0 = 26
rd_lock_dbg_pwd = 23
wr_lock_key_slot_5 = 15
wr_lock_key_slot_4 = 14
wr_lock_key_slot_3 = 13
wr_lock_key_slot_2 = 12
wr_lock_key_slot_1 = 11
wr_lock_key_slot_0 = 10
wr_lock_wifi_mac = 9
wr_lock_chip_id = 8
wr_lock_dbg_pwd = 7
wr_lock_sf_aes_mode = 6
wr_lock_sboot_sign_mode = 5
rd_lock_key_slot_11 = 31
rd_lock_key_slot_10 = 30
rd_lock_key_slot_9 = 29
rd_lock_key_slot_8 = 28
rd_lock_key_slot_7 = 27
rd_lock_key_slot_6 = 26
wr_lock_key_slot_11 = 15
wr_lock_key_slot_10 = 14
wr_lock_key_slot_9 = 13
wr_lock_key_slot_8 = 12
wr_lock_key_slot_7 = 11
wr_lock_key_slot_6 = 10
wr_lock_sw_usage_3 = 9
wr_lock_sw_usage_2 = 8
wr_lock_sw_usage_1 = 7
wr_lock_sw_usage_0 = 6
wr_lock_ana_trim_2 = 5
wr_lock_ana_trim_1 = 4
wr_lock_ana_trim_0 = 3

def efuse_data_create(name, value):
    efuse_data = bytearray(256)
    efuse_data_mask = bytearray(256)
    mask_4bytes = bytearray.fromhex('FFFFFFFF')
    rw_lock0 = 0
    rw_lock1 = 0
    if name == 'flash_aes_key':
        if len(value[0]) == 32:
            efuse_data[0] |= 1
        if len(value[0]) == 48:
            efuse_data[0] |= 2
        if len(value[0]) == 64:
            efuse_data[0] |= 3
        efuse_data_mask[0] |= 15
        keydata = bytearray.fromhex(value[0])
        efuse_data[keyslot2:keyslot4] = keydata + bytearray(32 - len(keydata))
        efuse_data_mask[keyslot2:keyslot4] = mask_4bytes * 8
        rw_lock0 |= 1 << wr_lock_key_slot_2
        rw_lock0 |= 1 << wr_lock_key_slot_3
        rw_lock0 |= 1 << rd_lock_key_slot_2
        rw_lock0 |= 1 << rd_lock_key_slot_3
        if len(value) > 1:
            keydata = bytearray.fromhex(value[1])
            efuse_data[keyslot7:keyslot9] = keydata + bytearray(32 - len(keydata))
            efuse_data_mask[keyslot7:keyslot9] = mask_4bytes * 8
            rw_lock1 |= 1 << wr_lock_key_slot_7
            rw_lock1 |= 1 << wr_lock_key_slot_8
            rw_lock1 |= 1 << rd_lock_key_slot_7
            rw_lock1 |= 1 << rd_lock_key_slot_8
        efuse_data[124:128] = bflb_utils.int_to_4bytearray_l(rw_lock0)
        efuse_data_mask[124:128] = bflb_utils.int_to_4bytearray_l(rw_lock0)
        efuse_data[252:256] = bflb_utils.int_to_4bytearray_l(rw_lock1)
        efuse_data_mask[252:256] = bflb_utils.int_to_4bytearray_l(rw_lock1)
    return (
     efuse_data, efuse_data_mask)
# okay decompiling lib.bl60x.efuse_data_create.pyc
