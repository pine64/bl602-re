# decompyle3 version 3.3.2
# Python bytecode 3.7 (3394)
# Decompiled from: Python 3.8.5 (default, Jul 28 2020, 12:59:40) 
# [GCC 9.3.0]
# Embedded file name: lib\bl60x\img_create_do.py
import sys, os, hashlib, binascii, getopt
from lib import bflb_utils
from lib import bflb_aes
from lib.bflb_utils import app_path, open_file
import ecdsa
cfg = bflb_utils.BFConfigParser()
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

def img_update_efuse_sp(sign, pk_hash, flash_encryp_type, flash_key, sec_eng_key_sel, sec_eng_key):
    global cfg
    fp = open_file(cfg.get('Img_Cfg', 'efuse_file'), 'rb')
    efuse_data = bytearray(fp.read()) + bytearray(0)
    fp.close()
    fp = open_file(cfg.get('Img_Cfg', 'efuse_mask_file'), 'rb')
    efuse_mask_data = bytearray(fp.read()) + bytearray(0)
    fp.close()
    mask_4bytes = bytearray.fromhex('FFFFFFFF')
    efuse_data[0] |= flash_encryp_type
    efuse_data[0] |= sign << 2
    efuse_mask_data[0] |= 15
    rw_lock0 = 0
    rw_lock1 = 0
    if pk_hash != None:
        efuse_data[keyslot0:keyslot2] = pk_hash
        efuse_mask_data[keyslot0:keyslot2] = mask_4bytes * 8
        rw_lock0 |= 1 << wr_lock_key_slot_0
        rw_lock0 |= 1 << wr_lock_key_slot_1
    if flash_key != None:
        efuse_data[keyslot2:keyslot4] = flash_key
        efuse_mask_data[keyslot2:keyslot4] = mask_4bytes * 8
        rw_lock0 |= 1 << wr_lock_key_slot_2
        rw_lock0 |= 1 << wr_lock_key_slot_3
        rw_lock0 |= 1 << rd_lock_key_slot_2
        rw_lock0 |= 1 << rd_lock_key_slot_3
    if sec_eng_key != None:
        if flash_encryp_type == 0:
            if sec_eng_key_sel == 0:
                efuse_data[keyslot2:keyslot3] = sec_eng_key[16:32]
                efuse_data[keyslot3:keyslot4] = sec_eng_key[0:16]
                efuse_mask_data[keyslot2:keyslot4] = mask_4bytes * 8
                rw_lock0 |= 1 << wr_lock_key_slot_2
                rw_lock0 |= 1 << wr_lock_key_slot_3
                rw_lock0 |= 1 << rd_lock_key_slot_2
                rw_lock0 |= 1 << rd_lock_key_slot_3
            if sec_eng_key_sel == 1:
                efuse_data[keyslot3:keyslot4] = sec_eng_key[16:32]
                efuse_data[keyslot4:keyslot5] = sec_eng_key[0:16]
                efuse_mask_data[keyslot3:keyslot5] = mask_4bytes * 8
                rw_lock0 |= 1 << wr_lock_key_slot_3
                rw_lock0 |= 1 << wr_lock_key_slot_4
                rw_lock0 |= 1 << rd_lock_key_slot_3
                rw_lock0 |= 1 << rd_lock_key_slot_4
            if sec_eng_key_sel == 2:
                efuse_data[keyslot4:keyslot5] = sec_eng_key[16:32]
                efuse_data[keyslot7:keyslot8] = sec_eng_key[0:16]
                efuse_mask_data[keyslot4:keyslot5] = mask_4bytes * 4
                efuse_mask_data[keyslot7:keyslot8] = mask_4bytes * 4
                rw_lock0 |= 1 << wr_lock_key_slot_4
                rw_lock1 |= 1 << wr_lock_key_slot_7
                rw_lock0 |= 1 << rd_lock_key_slot_4
                rw_lock1 |= 1 << rd_lock_key_slot_7
            if sec_eng_key_sel == 3:
                efuse_data[keyslot7:keyslot8] = sec_eng_key[16:32]
                efuse_data[keyslot2:keyslot3] = sec_eng_key[0:16]
                efuse_mask_data[keyslot7:keyslot8] = mask_4bytes * 4
                efuse_mask_data[keyslot2:keyslot3] = mask_4bytes * 4
                rw_lock0 |= 1 << wr_lock_key_slot_2
                rw_lock1 |= 1 << wr_lock_key_slot_7
                rw_lock0 |= 1 << rd_lock_key_slot_2
                rw_lock1 |= 1 << rd_lock_key_slot_7
        if flash_encryp_type == 1:
            if sec_eng_key_sel == 0:
                efuse_data[keyslot3:keyslot4] = sec_eng_key[16:32]
                efuse_data[keyslot4:keyslot5] = sec_eng_key[0:16]
                efuse_mask_data[keyslot3:keyslot5] = mask_4bytes * 8
                rw_lock0 |= 1 << wr_lock_key_slot_3
                rw_lock0 |= 1 << wr_lock_key_slot_4
                rw_lock0 |= 1 << rd_lock_key_slot_3
                rw_lock0 |= 1 << rd_lock_key_slot_4
            if sec_eng_key_sel == 1:
                efuse_data[keyslot4:keyslot5] = sec_eng_key[16:32]
                efuse_data[keyslot3:keyslot4] = sec_eng_key[0:16]
                efuse_mask_data[keyslot3:keyslot5] = mask_4bytes * 8
                rw_lock0 |= 1 << wr_lock_key_slot_3
                rw_lock0 |= 1 << wr_lock_key_slot_4
                rw_lock0 |= 1 << rd_lock_key_slot_3
                rw_lock0 |= 1 << rd_lock_key_slot_4
            if sec_eng_key_sel == 2:
                efuse_data[keyslot3:keyslot4] = sec_eng_key[16:32]
                efuse_data[keyslot4:keyslot5] = sec_eng_key[0:16]
                efuse_mask_data[keyslot3:keyslot5] = mask_4bytes * 8
                rw_lock0 |= 1 << wr_lock_key_slot_3
                rw_lock0 |= 1 << wr_lock_key_slot_4
                rw_lock0 |= 1 << rd_lock_key_slot_3
                rw_lock0 |= 1 << rd_lock_key_slot_4
            if sec_eng_key_sel == 3:
                efuse_data[keyslot4:keyslot5] = sec_eng_key[16:32]
                efuse_data[keyslot3:keyslot4] = sec_eng_key[0:16]
                efuse_mask_data[keyslot3:keyslot5] = mask_4bytes * 8
                rw_lock0 |= 1 << wr_lock_key_slot_3
                rw_lock0 |= 1 << wr_lock_key_slot_4
                rw_lock0 |= 1 << rd_lock_key_slot_3
                rw_lock0 |= 1 << rd_lock_key_slot_4
        if flash_encryp_type == 2 or (flash_encryp_type == 3):
            if sec_eng_key_sel == 0:
                efuse_data[keyslot4:keyslot5] = sec_eng_key[0:16]
                efuse_mask_data[keyslot4:keyslot5] = mask_4bytes * 4
                rw_lock0 |= 1 << wr_lock_key_slot_4
                rw_lock0 |= 1 << rd_lock_key_slot_4
            if sec_eng_key_sel == 1:
                efuse_data[keyslot4:keyslot5] = sec_eng_key[0:16]
                efuse_mask_data[keyslot4:keyslot5] = mask_4bytes * 4
                rw_lock0 |= 1 << wr_lock_key_slot_4
                rw_lock0 |= 1 << rd_lock_key_slot_4
            if sec_eng_key_sel == 2:
                efuse_data[keyslot4:keyslot5] = sec_eng_key[0:16]
                efuse_mask_data[keyslot4:keyslot5] = mask_4bytes * 4
                rw_lock0 |= 1 << wr_lock_key_slot_4
                rw_lock0 |= 1 << rd_lock_key_slot_4
            if sec_eng_key_sel == 3:
                efuse_data[keyslot4:keyslot5] = sec_eng_key[0:16]
                efuse_mask_data[keyslot4:keyslot5] = mask_4bytes * 4
                rw_lock0 |= 1 << wr_lock_key_slot_4
                rw_lock0 |= 1 << rd_lock_key_slot_4
    efuse_data[124:128] = bflb_utils.int_to_4bytearray_l(rw_lock0)
    efuse_mask_data[124:128] = bflb_utils.int_to_4bytearray_l(rw_lock0)
    efuse_data[252:256] = bflb_utils.int_to_4bytearray_l(rw_lock1)
    efuse_mask_data[252:256] = bflb_utils.int_to_4bytearray_l(rw_lock1)
    fp = open_file(cfg.get('Img_Cfg', 'efuse_file'), 'wb+')
    fp.write(efuse_data)
    fp.close()
    fp = open_file(cfg.get('Img_Cfg', 'efuse_mask_file'), 'wb+')
    fp.write(efuse_mask_data)
    fp.close()


def img_update_efuse_cpu0(sign, pk_hash, flash_encryp_type, flash_key, sec_eng_key_sel, sec_eng_key):
    fp = open_file(cfg.get('Img_CPU0_Cfg', 'efuse_file'), 'rb')
    efuse_data = bytearray(fp.read()) + bytearray(0)
    fp.close()
    fp = open_file(cfg.get('Img_CPU0_Cfg', 'efuse_mask_file'), 'rb')
    efuse_mask_data = bytearray(fp.read()) + bytearray(0)
    fp.close()
    mask_4bytes = bytearray.fromhex('FFFFFFFF')
    efuse_data[0] |= flash_encryp_type
    efuse_data[0] |= sign << 2
    efuse_mask_data[0] |= 15
    rw_lock0 = 0
    rw_lock1 = 0
    if pk_hash != None:
        efuse_data[keyslot0:keyslot2] = pk_hash
        efuse_mask_data[keyslot0:keyslot2] = mask_4bytes * 8
        rw_lock0 |= 1 << wr_lock_key_slot_0
        rw_lock0 |= 1 << wr_lock_key_slot_1
    if flash_key != None:
        efuse_data[keyslot2:keyslot4] = flash_key
        efuse_mask_data[keyslot2:keyslot4] = mask_4bytes * 8
        rw_lock0 |= 1 << wr_lock_key_slot_2
        rw_lock0 |= 1 << wr_lock_key_slot_3
        rw_lock0 |= 1 << rd_lock_key_slot_2
        rw_lock0 |= 1 << rd_lock_key_slot_3
    if sec_eng_key != None:
        if flash_encryp_type == 0:
            if sec_eng_key_sel == 0:
                efuse_data[keyslot2:keyslot3] = sec_eng_key[16:32]
                efuse_data[keyslot3:keyslot4] = sec_eng_key[0:16]
                efuse_mask_data[keyslot2:keyslot4] = mask_4bytes * 8
                rw_lock0 |= 1 << wr_lock_key_slot_2
                rw_lock0 |= 1 << wr_lock_key_slot_3
                rw_lock0 |= 1 << rd_lock_key_slot_2
                rw_lock0 |= 1 << rd_lock_key_slot_3
            if sec_eng_key_sel == 1:
                efuse_data[keyslot3:keyslot4] = sec_eng_key[16:32]
                efuse_data[keyslot4:keyslot5] = sec_eng_key[0:16]
                efuse_mask_data[keyslot3:keyslot5] = mask_4bytes * 8
                rw_lock0 |= 1 << wr_lock_key_slot_3
                rw_lock0 |= 1 << wr_lock_key_slot_4
                rw_lock0 |= 1 << rd_lock_key_slot_3
                rw_lock0 |= 1 << rd_lock_key_slot_4
            if sec_eng_key_sel == 2:
                efuse_data[keyslot4:keyslot5] = sec_eng_key[16:32]
                efuse_data[keyslot7:keyslot8] = sec_eng_key[0:16]
                efuse_mask_data[keyslot4:keyslot5] = mask_4bytes * 4
                efuse_mask_data[keyslot7:keyslot8] = mask_4bytes * 4
                rw_lock0 |= 1 << wr_lock_key_slot_4
                rw_lock1 |= 1 << wr_lock_key_slot_7
                rw_lock0 |= 1 << rd_lock_key_slot_4
                rw_lock1 |= 1 << rd_lock_key_slot_7
            if sec_eng_key_sel == 3:
                efuse_data[keyslot7:keyslot8] = sec_eng_key[16:32]
                efuse_data[keyslot2:keyslot3] = sec_eng_key[0:16]
                efuse_mask_data[keyslot7:keyslot8] = mask_4bytes * 4
                efuse_mask_data[keyslot2:keyslot3] = mask_4bytes * 4
                rw_lock0 |= 1 << wr_lock_key_slot_2
                rw_lock1 |= 1 << wr_lock_key_slot_7
                rw_lock0 |= 1 << rd_lock_key_slot_2
                rw_lock1 |= 1 << rd_lock_key_slot_7
        if flash_encryp_type == 1:
            if sec_eng_key_sel == 0:
                efuse_data[keyslot3:keyslot4] = sec_eng_key[16:32]
                efuse_data[keyslot4:keyslot5] = sec_eng_key[0:16]
                efuse_mask_data[keyslot3:keyslot5] = mask_4bytes * 8
                rw_lock0 |= 1 << wr_lock_key_slot_3
                rw_lock0 |= 1 << wr_lock_key_slot_4
                rw_lock0 |= 1 << rd_lock_key_slot_3
                rw_lock0 |= 1 << rd_lock_key_slot_4
            if sec_eng_key_sel == 1:
                efuse_data[keyslot4:keyslot5] = sec_eng_key[16:32]
                efuse_data[keyslot3:keyslot4] = sec_eng_key[0:16]
                efuse_mask_data[keyslot3:keyslot5] = mask_4bytes * 8
                rw_lock0 |= 1 << wr_lock_key_slot_3
                rw_lock0 |= 1 << wr_lock_key_slot_4
                rw_lock0 |= 1 << rd_lock_key_slot_3
                rw_lock0 |= 1 << rd_lock_key_slot_4
            if sec_eng_key_sel == 2:
                efuse_data[keyslot3:keyslot4] = sec_eng_key[16:32]
                efuse_data[keyslot4:keyslot5] = sec_eng_key[0:16]
                efuse_mask_data[keyslot3:keyslot5] = mask_4bytes * 8
                rw_lock0 |= 1 << wr_lock_key_slot_3
                rw_lock0 |= 1 << wr_lock_key_slot_4
                rw_lock0 |= 1 << rd_lock_key_slot_3
                rw_lock0 |= 1 << rd_lock_key_slot_4
            if sec_eng_key_sel == 3:
                efuse_data[keyslot4:keyslot5] = sec_eng_key[16:32]
                efuse_data[keyslot3:keyslot4] = sec_eng_key[0:16]
                efuse_mask_data[keyslot3:keyslot5] = mask_4bytes * 8
                rw_lock0 |= 1 << wr_lock_key_slot_3
                rw_lock0 |= 1 << wr_lock_key_slot_4
                rw_lock0 |= 1 << rd_lock_key_slot_3
                rw_lock0 |= 1 << rd_lock_key_slot_4
        if flash_encryp_type == 2 or (flash_encryp_type == 3):
            if sec_eng_key_sel == 0:
                efuse_data[keyslot4:keyslot5] = sec_eng_key[0:16]
                efuse_mask_data[keyslot4:keyslot5] = mask_4bytes * 4
                rw_lock0 |= 1 << wr_lock_key_slot_4
                rw_lock0 |= 1 << rd_lock_key_slot_4
            if sec_eng_key_sel == 1:
                efuse_data[keyslot4:keyslot5] = sec_eng_key[0:16]
                efuse_mask_data[keyslot4:keyslot5] = mask_4bytes * 4
                rw_lock0 |= 1 << wr_lock_key_slot_4
                rw_lock0 |= 1 << rd_lock_key_slot_4
            if sec_eng_key_sel == 2:
                efuse_data[keyslot4:keyslot5] = sec_eng_key[0:16]
                efuse_mask_data[keyslot4:keyslot5] = mask_4bytes * 4
                rw_lock0 |= 1 << wr_lock_key_slot_4
                rw_lock0 |= 1 << rd_lock_key_slot_4
            if sec_eng_key_sel == 3:
                efuse_data[keyslot4:keyslot5] = sec_eng_key[0:16]
                efuse_mask_data[keyslot4:keyslot5] = mask_4bytes * 4
                rw_lock0 |= 1 << wr_lock_key_slot_4
                rw_lock0 |= 1 << rd_lock_key_slot_4
    efuse_data[124:128] = bflb_utils.int_to_4bytearray_l(rw_lock0)
    efuse_mask_data[124:128] = bflb_utils.int_to_4bytearray_l(rw_lock0)
    efuse_data[252:256] = bflb_utils.int_to_4bytearray_l(rw_lock1)
    efuse_mask_data[252:256] = bflb_utils.int_to_4bytearray_l(rw_lock1)
    fp = open_file(cfg.get('Img_CPU0_Cfg', 'efuse_file'), 'wb+')
    fp.write(efuse_data)
    fp.close()
    fp = open_file(cfg.get('Img_CPU0_Cfg', 'efuse_mask_file'), 'wb+')
    fp.write(efuse_mask_data)
    fp.close()


def img_update_efuse_cpu1(sign, pk_hash, flash_encryp_type, flash_key, sec_eng_key_sel, sec_eng_key):
    fp = open_file(cfg.get('Img_CPU1_Cfg', 'efuse_file'), 'rb')
    efuse_data = bytearray(fp.read()) + bytearray(0)
    fp.close()
    fp = open_file(cfg.get('Img_CPU1_Cfg', 'efuse_mask_file'), 'rb')
    efuse_mask_data = bytearray(fp.read()) + bytearray(0)
    fp.close()
    mask_4bytes = bytearray.fromhex('FFFFFFFF')
    efuse_data[0] |= flash_encryp_type
    efuse_data[0] |= sign << 2
    efuse_mask_data[0] |= 15
    rw_lock0 = 0
    rw_lock1 = 0
    if pk_hash != None:
        efuse_data[keyslot5:keyslot5 + 16] = pk_hash[0:16]
        efuse_mask_data[keyslot5:keyslot5 + 16] = mask_4bytes * 4
        efuse_data[keyslot6:keyslot7] = pk_hash[16:32]
        efuse_mask_data[keyslot6:keyslot7] = mask_4bytes * 4
        rw_lock0 |= 1 << wr_lock_key_slot_5
        rw_lock1 |= 1 << wr_lock_key_slot_6
    if flash_key != None:
        efuse_data[keyslot7:keyslot9] = flash_key
        efuse_mask_data[keyslot7:keyslot9] = mask_4bytes * 8
        rw_lock1 |= 1 << wr_lock_key_slot_7
        rw_lock1 |= 1 << wr_lock_key_slot_8
        rw_lock1 |= 1 << rd_lock_key_slot_7
        rw_lock1 |= 1 << rd_lock_key_slot_8
    if sec_eng_key != None:
        if flash_encryp_type == 0:
            if sec_eng_key_sel == 0:
                efuse_data[keyslot8:keyslot9] = sec_eng_key[16:32]
                efuse_data[keyslot9:keyslot10] = sec_eng_key[0:16]
                efuse_mask_data[keyslot8:keyslot10] = mask_4bytes * 8
                rw_lock1 |= 1 << wr_lock_key_slot_8
                rw_lock1 |= 1 << wr_lock_key_slot_9
                rw_lock1 |= 1 << rd_lock_key_slot_8
                rw_lock1 |= 1 << rd_lock_key_slot_9
            if sec_eng_key_sel == 1:
                efuse_data[keyslot9:keyslot10] = sec_eng_key[16:32]
                efuse_data[keyslot10:keyslot11] = sec_eng_key[0:16]
                efuse_mask_data[keyslot9:keyslot11] = mask_4bytes * 8
                rw_lock1 |= 1 << wr_lock_key_slot_9
                rw_lock1 |= 1 << wr_lock_key_slot_10
                rw_lock1 |= 1 << rd_lock_key_slot_9
                rw_lock1 |= 1 << rd_lock_key_slot_10
            if sec_eng_key_sel == 2:
                efuse_data[keyslot10:keyslot11] = sec_eng_key[16:32]
                efuse_data[keyslot11:keyslot12] = sec_eng_key[0:16]
                efuse_mask_data[keyslot10:keyslot12] = mask_4bytes * 8
                rw_lock1 |= 1 << wr_lock_key_slot_10
                rw_lock1 |= 1 << wr_lock_key_slot_11
                rw_lock1 |= 1 << rd_lock_key_slot_10
                rw_lock1 |= 1 << rd_lock_key_slot_11
            if sec_eng_key_sel == 3:
                efuse_data[keyslot11:keyslot12] = sec_eng_key[16:32]
                efuse_data[keyslot8:keyslot9] = sec_eng_key[0:16]
                efuse_mask_data[keyslot8:keyslot9] = mask_4bytes * 4
                efuse_mask_data[keyslot11:keyslot12] = mask_4bytes * 4
                rw_lock1 |= 1 << wr_lock_key_slot_8
                rw_lock1 |= 1 << wr_lock_key_slot_11
                rw_lock1 |= 1 << rd_lock_key_slot_8
                rw_lock1 |= 1 << rd_lock_key_slot_11
        if flash_encryp_type == 1:
            if sec_eng_key_sel == 0:
                efuse_data[keyslot8:keyslot9] = sec_eng_key[16:32]
                efuse_data[keyslot9:keyslot10] = sec_eng_key[0:16]
                efuse_mask_data[keyslot8:keyslot10] = mask_4bytes * 8
                rw_lock1 |= 1 << wr_lock_key_slot_8
                rw_lock1 |= 1 << wr_lock_key_slot_9
                rw_lock1 |= 1 << rd_lock_key_slot_8
                rw_lock1 |= 1 << rd_lock_key_slot_9
            if sec_eng_key_sel == 1:
                efuse_data[keyslot9:keyslot10] = sec_eng_key[16:32]
                efuse_data[keyslot11:keyslot12] = sec_eng_key[0:16]
                efuse_mask_data[keyslot9:keyslot10] = mask_4bytes * 4
                efuse_mask_data[keyslot11:keyslot12] = mask_4bytes * 4
                rw_lock1 |= 1 << wr_lock_key_slot_9
                rw_lock1 |= 1 << wr_lock_key_slot_11
                rw_lock1 |= 1 << rd_lock_key_slot_9
                rw_lock1 |= 1 << rd_lock_key_slot_11
            if sec_eng_key_sel == 2:
                efuse_data[keyslot11:keyslot12] = sec_eng_key[16:32]
                efuse_data[keyslot8:keyslot9] = sec_eng_key[0:16]
                efuse_mask_data[keyslot8:keyslot9] = mask_4bytes * 4
                efuse_mask_data[keyslot11:keyslot12] = mask_4bytes * 4
                rw_lock1 |= 1 << wr_lock_key_slot_8
                rw_lock1 |= 1 << wr_lock_key_slot_11
                rw_lock1 |= 1 << rd_lock_key_slot_8
                rw_lock1 |= 1 << rd_lock_key_slot_11
            if sec_eng_key_sel == 3:
                efuse_data[keyslot8:keyslot9] = sec_eng_key[16:32]
                efuse_data[keyslot11:keyslot12] = sec_eng_key[0:16]
                efuse_mask_data[keyslot8:keyslot9] = mask_4bytes * 4
                efuse_mask_data[keyslot11:keyslot12] = mask_4bytes * 4
                rw_lock1 |= 1 << wr_lock_key_slot_8
                rw_lock1 |= 1 << wr_lock_key_slot_11
                rw_lock1 |= 1 << rd_lock_key_slot_8
                rw_lock1 |= 1 << rd_lock_key_slot_11
        if flash_encryp_type == 2 or (flash_encryp_type == 3):
            if sec_eng_key_sel == 0:
                efuse_data[keyslot9:keyslot10] = sec_eng_key[0:16]
                efuse_mask_data[keyslot9:keyslot10] = mask_4bytes * 4
                rw_lock1 |= 1 << wr_lock_key_slot_9
                rw_lock1 |= 1 << rd_lock_key_slot_9
            if sec_eng_key_sel == 1:
                efuse_data[keyslot9:keyslot10] = sec_eng_key[0:16]
                efuse_mask_data[keyslot9:keyslot10] = mask_4bytes * 4
                rw_lock1 |= 1 << wr_lock_key_slot_9
                rw_lock1 |= 1 << rd_lock_key_slot_9
            if sec_eng_key_sel == 2:
                efuse_data[keyslot9:keyslot10] = sec_eng_key[0:16]
                efuse_mask_data[keyslot9:keyslot10] = mask_4bytes * 4
                rw_lock1 |= 1 << wr_lock_key_slot_9
                rw_lock1 |= 1 << rd_lock_key_slot_9
            if sec_eng_key_sel == 3:
                efuse_data[keyslot9:keyslot10] = sec_eng_key[0:16]
                efuse_mask_data[keyslot9:keyslot10] = mask_4bytes * 4
                rw_lock1 |= 1 << wr_lock_key_slot_9
                rw_lock1 |= 1 << rd_lock_key_slot_9
    efuse_data[124:128] = bflb_utils.int_to_4bytearray_l(rw_lock0)
    efuse_mask_data[124:128] = bflb_utils.int_to_4bytearray_l(rw_lock0)
    efuse_data[252:256] = bflb_utils.int_to_4bytearray_l(rw_lock1)
    efuse_mask_data[252:256] = bflb_utils.int_to_4bytearray_l(rw_lock1)
    fp = open_file(cfg.get('Img_CPU1_Cfg', 'efuse_file'), 'wb+')
    fp.write(efuse_data)
    fp.close()
    fp = open_file(cfg.get('Img_CPU1_Cfg', 'efuse_mask_file'), 'wb+')
    fp.write(efuse_mask_data)
    fp.close()


def img_create_get_sign_encrypt_info(bootheader_data):
    sign = bootheader_data[116] & 3
    encrypt = bootheader_data[116] >> 2 & 3
    key_sel = bootheader_data[116] >> 4 & 3
    return (
     sign, encrypt, key_sel)


def img_create_get_hash_ignore(bootheader_data):
    return bootheader_data[118] >> 1 & 1


def img_create_get_crc_ignore(bootheader_data):
    return bootheader_data[118] & 1


def img_create_update_bootheader(bootheader_data, hash, seg_cnt):
    bootheader_data[120:124] = bflb_utils.int_to_4bytearray_l(seg_cnt)
    sign, encrypt, key_sel = img_create_get_sign_encrypt_info(bootheader_data)
    if img_create_get_hash_ignore(bootheader_data) == 1 and sign == 0:
        bflb_utils.printf('Hash ignored')
    else:
        bootheader_data[132:164] = hash
    if img_create_get_crc_ignore(bootheader_data) == 1:
        bflb_utils.printf('Header crc ignored')
    else:
        hd_crcarray = bflb_utils.get_crc32_bytearray(bootheader_data[0:172])
        bootheader_data[172:176] = hd_crcarray
        bflb_utils.printf('Header crc: ', binascii.hexlify(hd_crcarray).decode('utf-8'))
    return bootheader_data


def img_create_update_segheader(segheader, segdatalen, segdatacrc):
    segheader[4:8] = segdatalen
    segheader[8:12] = segdatacrc
    return segheader


def img_create_sha256_data(data_bytearray):
    hashfun = hashlib.sha256()
    hashfun.update(data_bytearray)
    return bflb_utils.hexstr_to_bytearray(hashfun.hexdigest())


def img_create_encrypt_data(data_bytearray, key_bytearray, iv_bytearray, flash_img):
    if flash_img == 0:
        cryptor = bflb_aes.AESModeOfOperationCBC(key_bytearray, iv=iv_bytearray)
        ciphertext = cryptor.encrypt(data_bytearray)
    else:
        iv = bflb_aes.Counter(initial_value=(int(binascii.hexlify(iv_bytearray), 16)))
        cryptor = bflb_aes.AESModeOfOperationCTR(key_bytearray, counter=iv)
        ciphertext = cryptor.encrypt(data_bytearray)
    return ciphertext


def img_create_sign_data(data_bytearray, privatekey_file_uecc, publickey_file):
    sk = ecdsa.SigningKey.from_pem(open_file(privatekey_file_uecc).read())
    vk = ecdsa.VerifyingKey.from_pem(open_file(publickey_file).read())
    pk_data = vk.to_string()
    bflb_utils.printf('Private key: ', binascii.hexlify(sk.to_string()))
    bflb_utils.printf('Public key: ', binascii.hexlify(pk_data))
    pk_hash = img_create_sha256_data(pk_data)
    bflb_utils.printf('Public key hash=', binascii.hexlify(pk_hash))
    signature = sk.sign(data_bytearray, hashfunc=(hashlib.sha256), sigencode=(ecdsa.util.sigencode_string))
    bflb_utils.printf('Signature=', binascii.hexlify(signature))
    len_array = bflb_utils.int_to_4bytearray_l(len(signature))
    sig_field = len_array + signature
    crcarray = bflb_utils.get_crc32_bytearray(sig_field)
    return (
     pk_data, pk_hash, sig_field + crcarray)


def img_create_read_file_append_crc(file, crc):
    fp = open_file(file, 'rb')
    read_data = bytearray(fp.read())
    crcarray = bytearray(0)
    if crc:
        crcarray = bflb_utils.get_crc32_bytearray(read_data)
    fp.close()
    return read_data + crcarray


def img_creat_process(img_type, flash_img):
    global encrypt_key
    encrypt_blk_size = 16
    padding = bytearray(encrypt_blk_size)
    data_tohash = bytearray(0)
    ret = 'OK'
    if img_type == 'cpu0':
        img_update_efuse_fun = img_update_efuse_cpu0
        cfg_section = 'Img_CPU0_Cfg'
    elif img_type == 'cpu1':
        img_update_efuse_fun = img_update_efuse_cpu1
        cfg_section = 'Img_CPU1_Cfg'
    else:
        img_update_efuse_fun = img_update_efuse_sp
        cfg_section = 'Img_Cfg'
    segheader_file = []
    if flash_img == 0:
        for files in cfg.get(cfg_section, 'segheader_file').split(' '):
            segheader_file.append(str(files))

    segdata_file = []
    for files in cfg.get(cfg_section, 'segdata_file').split(' '):
        segdata_file.append(str(files))
        if flash_img == 1:
            break

    boot_header_file = cfg.get(cfg_section, 'boot_header_file')
    bootheader_data = img_create_read_file_append_crc(boot_header_file, 0)
    encrypt = 0
    sign, encrypt, key_sel = img_create_get_sign_encrypt_info(bootheader_data)
    aesiv_data = bytearray(0)
    pk_data = bytearray(0)
    if sign != 0:
        bflb_utils.printf('Image need sign')
        publickey_file = cfg.get(cfg_section, 'publickey_file')
        privatekey_file_uecc = cfg.get(cfg_section, 'privatekey_file_uecc')
    if encrypt != 0:
        bflb_utils.printf('Image need encrypt ', encrypt)
        encrypt_key_org = bflb_utils.hexstr_to_bytearray(cfg.get(cfg_section, 'aes_key_org'))
        if encrypt == 1:
            encrypt_key = encrypt_key_org[0:16]
        elif encrypt == 2:
            encrypt_key = encrypt_key_org[0:32]
        elif encrypt == 3:
            encrypt_key = encrypt_key_org[0:24]
        bflb_utils.printf('Key= ', binascii.hexlify(encrypt_key))
        encrypt_iv = bflb_utils.hexstr_to_bytearray(cfg.get(cfg_section, 'aes_iv'))
        iv_crcarray = bflb_utils.get_crc32_bytearray(encrypt_iv)
        aesiv_data = encrypt_iv + iv_crcarray
        data_tohash = data_tohash + aesiv_data
    seg_cnt = len(segheader_file)
    if flash_img == 0:
        if seg_cnt != len(segdata_file):
            bflb_utils.printf('Segheader count and segdata count not match')
            return (
             'FAIL', data_tohash)
    data_toencrypt = bytearray(0)
    if flash_img == 0:
        i = 0
        seg_header_list = []
        seg_data_list = []
        while i < seg_cnt:
            seg_data = img_create_read_file_append_crc(segdata_file[i], 0)
            padding_size = 0
            if len(seg_data) % encrypt_blk_size != 0:
                padding_size = encrypt_blk_size - len(seg_data) % encrypt_blk_size
                seg_data += padding[0:padding_size]
            else:
                segdata_crcarray = bflb_utils.get_crc32_bytearray(seg_data)
                seg_data_list.append(seg_data)
                seg_header = img_create_read_file_append_crc(segheader_file[i], 0)
                seg_header = img_create_update_segheader(seg_header, bflb_utils.int_to_4bytearray_l(len(seg_data)), segdata_crcarray)
                segheader_crcarray = bflb_utils.get_crc32_bytearray(seg_header)
                seg_header = seg_header + segheader_crcarray
                seg_header_list.append(seg_header)
                i = i + 1

        i = 0
        while i < seg_cnt:
            data_toencrypt += seg_header_list[i]
            data_toencrypt += seg_data_list[i]
            i += 1

    else:
        seg_data = img_create_read_file_append_crc(segdata_file[0], 0)
        padding_size = 0
        if len(seg_data) % encrypt_blk_size != 0:
            padding_size = encrypt_blk_size - len(seg_data) % encrypt_blk_size
            seg_data += padding[0:padding_size]
        data_toencrypt += seg_data
        seg_cnt = len(data_toencrypt)
    if encrypt != 0:
        data_toencrypt = img_create_encrypt_data(data_toencrypt, encrypt_key, encrypt_iv, flash_img)
    fw_data = bytearray(0)
    data_tohash += data_toencrypt
    fw_data = data_toencrypt
    hash = img_create_sha256_data(data_tohash)
    bflb_utils.printf('Image hash is ', binascii.hexlify(hash).decode('utf-8'))
    bootheader_data = img_create_update_bootheader(bootheader_data, hash, seg_cnt)
    signature = bytearray(0)
    pk_hash = None
    if sign == 1:
        pk_data, pk_hash, signature = img_create_sign_data(data_tohash, privatekey_file_uecc, publickey_file)
        pk_data = pk_data + bflb_utils.get_crc32_bytearray(pk_data)
    if flash_img == 1:
        bflb_utils.printf('Write flash img')
        bootinfo_file_name = cfg.get(cfg_section, 'bootinfo_file')
        fp = open_file(bootinfo_file_name, 'wb+')
        bootinfo = bootheader_data + pk_data + pk_data + signature + signature + aesiv_data
        fp.write(bootinfo)
        fp.close()
        fw_file_name = cfg.get(cfg_section, 'img_file')
        fp = open_file(fw_file_name, 'wb+')
        fp.write(fw_data)
        fp.close()
        if encrypt != 0:
            if encrypt == 1:
                img_update_efuse_fun(sign, pk_hash, 1, encrypt_key + bytearray(32 - len(encrypt_key)), key_sel, None)
            if encrypt == 2:
                img_update_efuse_fun(sign, pk_hash, 3, encrypt_key + bytearray(32 - len(encrypt_key)), key_sel, None)
            if encrypt == 3:
                img_update_efuse_fun(sign, pk_hash, 2, encrypt_key + bytearray(32 - len(encrypt_key)), key_sel, None)
        else:
            img_update_efuse_fun(sign, pk_hash, encrypt, None, key_sel, None)
    else:
        bflb_utils.printf('Write if img')
        whole_img_file_name = cfg.get(cfg_section, 'whole_img_file')
        fp = open_file(whole_img_file_name, 'wb+')
        img_data = bootheader_data + pk_data + pk_data + signature + signature + aesiv_data + fw_data
        fp.write(img_data)
        fp.close()
        if encrypt != 0:
            img_update_efuse_fun(sign, pk_hash, 1, None, key_sel, encrypt_key + bytearray(32 - len(encrypt_key)))
        else:
            img_update_efuse_fun(sign, pk_hash, 0, None, key_sel, bytearray(32))
    return (
     'OK', data_tohash)


def bind_if_img(img_dir_path):
    fp = open_file(cfg.get('Img_CPU0_Cfg', 'whole_img_file'), 'rb')
    read_data = fp.read()
    fp.close()
    fp = open_file(cfg.get('Img_CPU1_Cfg', 'whole_img_file'), 'rb')
    read_data = read_data + fp.read()
    fp.close()
    fp = open_file(img_dir_path + '/wholeimg_cpu0_cpu1_if.bin', 'wb+')
    fp.write(read_data)
    fp.close()


def usage():
    bflb_utils.printf(sys.argv[0], '\n')
    bflb_utils.printf('-c/--cpu=       :CPU type: cpu0 cpu1 or all')
    bflb_utils.printf('-i/--img_type=  :image type:media or if')
    bflb_utils.printf('-s/--signer=    :(the other)signer:cpu0 or cpu1')
    bflb_utils.printf('-h/--help       :helper')


def sign_process(data_tohash, file, privatekey_file_uecc, publickey_file, signer):
    fp = open_file(file, 'rb')
    header = bytearray(fp.read())
    header = header + bytearray(0)
    fp.close()
    pk_data, pk_hash, signature_field = img_create_sign_data(data_tohash, privatekey_file_uecc, publickey_file)
    pk_data = pk_data + bflb_utils.get_crc32_bytearray(pk_data)
    pk_pos = 244
    header[pk_pos:pk_pos + 64 + 4] = pk_data
    sign_pos = 384
    header[sign_pos:sign_pos + 4 + 64 + 4] = signature_field
    fp = open_file(file, 'wb+')
    fp.write(header)
    fp.close()
    mask_4bytes = bytearray.fromhex('FFFFFFFF')
    if signer == 'cpu0':
        bflb_utils.printf("CPU0 is signer, add signature for CPU1's image")
        fp = open_file(cfg.get('Img_CPU0_Cfg', 'efuse_file'), 'rb')
        efuse_data = bytearray(fp.read()) + bytearray(0)
        fp.close()
        fp = open_file(cfg.get('Img_CPU0_Cfg', 'efuse_mask_file'), 'rb')
        efuse_mask_data = bytearray(fp.read()) + bytearray(0)
        fp.close()
        efuse_data[keyslot0:keyslot2] = pk_hash
        efuse_mask_data[keyslot0:keyslot2] = mask_4bytes * 8
        fp = open_file(cfg.get('Img_CPU0_Cfg', 'efuse_file'), 'wb+')
        fp.write(efuse_data)
        fp.close()
        fp = open_file(cfg.get('Img_CPU0_Cfg', 'efuse_mask_file'), 'wb+')
        fp.write(efuse_mask_data)
        fp.close()
    else:
        bflb_utils.printf("CPU1 is signer, add signature for CPU0's image")
        fp = open_file(cfg.get('Img_CPU1_Cfg', 'efuse_file'), 'rb')
        efuse_data = bytearray(fp.read()) + bytearray(0)
        fp.close()
        fp = open_file(cfg.get('Img_CPU1_Cfg', 'efuse_mask_file'), 'rb')
        efuse_mask_data = bytearray(fp.read()) + bytearray(0)
        fp.close()
        efuse_data[keyslot5:keyslot5 + 16] = pk_hash[0:16]
        efuse_mask_data[keyslot5:keyslot5 + 16] = mask_4bytes * 4
        efuse_data[keyslot6:keyslot7] = pk_hash[16:32]
        efuse_mask_data[keyslot6:keyslot7] = mask_4bytes * 4
        fp = open_file(cfg.get('Img_CPU1_Cfg', 'efuse_file'), 'wb+')
        fp.write(efuse_data)
        fp.close()
        fp = open_file(cfg.get('Img_CPU1_Cfg', 'efuse_mask_file'), 'wb+')
        fp.write(efuse_mask_data)
        fp.close()


def img_create_do(options, img_dir_path=None, config_file=None):
    bflb_utils.printf('========= image create =========')
    bflb_utils.printf('Image create path: ', img_dir_path)
    if config_file == None:
        config_file = img_dir_path + '/img_create_cfg.ini'
    cfg.read(config_file)
    bflb_utils.printf('Config file: ', config_file)
    cpu_type = ''
    signer = 'none'
    ret0 = 'OK'
    ret1 = 'OK'
    data_tohash_cpu0 = bytearray(0)
    data_tohash_cpu1 = bytearray(0)
    try:
        opts, args = getopt.getopt(options, 'c:i:s:Hh', ['cpu=', 'img_type=', 'signer=', 'help'])
        for option, value in opts:
            if option in ('-h', '-H'):
                usage()
            else:
                if option in ('-c', '--cpu'):
                    cpu_type = value
                if option in ('-i', '--img_type'):
                    img_type = value
            if option in ('-s', '--signer'):
                signer = value

    except getopt.GetoptError as err:
        try:
            bflb_utils.printf(err)
            usage()
        finally:
            err = None
            del err

    if img_type == 'media':
        flash_img = 1
    else:
        flash_img = 0
    if cpu_type == 'cpu0':
        ret0, data_tohash_cpu0 = img_creat_process('cpu0', flash_img)
    elif cpu_type == 'cpu1':
        ret1, data_tohash_cpu1 = img_creat_process('cpu1', flash_img)
    elif cpu_type == 'all':
        ret0, data_tohash_cpu0 = img_creat_process('cpu0', flash_img)
        ret1, data_tohash_cpu1 = img_creat_process('cpu1', flash_img)
    else:
        img_creat_process('', flash_img)
        return
    if ret0 == 'OK' and ret1 == 'OK':
        if signer == 'cpu0':
            bflb_utils.printf('cpu0 sign cpu1 ')
            if flash_img == 1:
                sign_process(data_tohash_cpu1, cfg.get('Img_CPU1_Cfg', 'bootinfo_file'), cfg.get('Img_CPU0_Cfg', 'privatekey_file_uecc'), cfg.get('Img_CPU0_Cfg', 'publickey_file'), 'cpu0')
            else:
                sign_process(data_tohash_cpu1, cfg.get('Img_CPU1_Cfg', 'whole_img_file'), cfg.get('Img_CPU0_Cfg', 'privatekey_file_uecc'), cfg.get('Img_CPU0_Cfg', 'publickey_file'), 'cpu0')
        elif signer == 'cpu1':
            bflb_utils.printf('cpu1 sign cpu0 ')
            if flash_img == 1:
                sign_process(data_tohash_cpu0, cfg.get('Img_CPU0_Cfg', 'bootinfo_file'), cfg.get('Img_CPU1_Cfg', 'privatekey_file_uecc'), cfg.get('Img_CPU1_Cfg', 'publickey_file'), 'cpu1')
            else:
                sign_process(data_tohash_cpu0, cfg.get('Img_CPU0_Cfg', 'whole_img_file'), cfg.get('Img_CPU1_Cfg', 'privatekey_file_uecc'), cfg.get('Img_CPU1_Cfg', 'publickey_file'), 'cpu1')
    else:
        bflb_utils.printf('Fail to create images!')
        return
    if cpu_type == 'all':
        if flash_img == 0:
            bind_if_img(img_dir_path)


def create_sp_media_image(config, cpu_type=None):
    global cfg
    bflb_utils.printf('========= sp image create =========')
    cfg = bflb_utils.BFConfigParser()
    cfg.read(config)
    img_creat_process('cpu0', 1)
# okay decompiling lib.bl60x.img_create_do.pyc
