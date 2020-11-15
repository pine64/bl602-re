# decompyle3 version 3.3.2
# Python bytecode 3.7 (3394)
# Decompiled from: Python 3.8.5 (default, Jul 28 2020, 12:59:40) 
# [GCC 9.3.0]
# Embedded file name: lib\bl60x\efuse_create_do.py
import os, sys, re
from lib import bflb_utils
from lib import bflb_efuse_boothd_create
ef_sf_aes_mode_list = [
 'None', 'AES128', 'AES192', 'AES256']

def verify_hex_num(string):
    l = len(string)
    i = 0
    while 1:
        if re.match('\\A[0-9a-fA-F]+\\Z', string[i:i + 1]) == None:
            return False
        else:
            i += 1
        if i >= l:
            break

    return True


def get_eflash_loader(xtal):
    xtal_suffix = str(xtal).lower().replace('.', 'p').replace('M', 'm').replace('RC', 'rc')
    return 'eflash_loader_' + xtal_suffix + '.bin'


def str_endian_switch(string):
    s = string[6:8] + string[4:6] + string[2:4] + string[0:2]
    return s


def create_key_data_do(values, chip_name, chip_type, cfg_file, efuse_data):
    tips = ''
    bflb_utils.printf('Create_key_data')
    fp = open(cfg_file, 'w+')
    fp.write('[EFUSE_CFG]\n')
    aes_mode = ef_sf_aes_mode_list.index(values['ef_sf_aes_mode'])
    tips += 'AES Mode:' + values['ef_sf_aes_mode'] + '\r\n'
    bflb_utils.printf(ef_sf_aes_mode_list[aes_mode])
    if len(values['cpu0_pk_simple']) == 64and len(values['cpu1_pk_simple']) == 64 and len(values['cpu1_pk_simple']) == 64 and verify_hex_num(values['cpu1_pk_simple']) == True:
        fp.write('ef_key_slot_0_w0 = 0x' + str_endian_switch(values['cpu0_pk_simple'][0:8]) + '\n')
        fp.write('ef_key_slot_0_w1 = 0x' + str_endian_switch(values['cpu0_pk_simple'][8:16]) + '\n')
        fp.write('ef_key_slot_0_w2 = 0x' + str_endian_switch(values['cpu0_pk_simple'][16:24]) + '\n')
        fp.write('ef_key_slot_0_w3 = 0x' + str_endian_switch(values['cpu0_pk_simple'][24:32]) + '\n')
        fp.write('ef_key_slot_1_w0 = 0x' + str_endian_switch(values['cpu0_pk_simple'][32:40]) + '\n')
        fp.write('ef_key_slot_1_w1 = 0x' + str_endian_switch(values['cpu0_pk_simple'][40:48]) + '\n')
        fp.write('ef_key_slot_1_w2 = 0x' + str_endian_switch(values['cpu0_pk_simple'][48:56]) + '\n')
        fp.write('ef_key_slot_1_w3 = 0x' + str_endian_switch(values['cpu0_pk_simple'][56:64]) + '\n')
        if values['cpu0_pk_wp_enable'] == True:
            fp.write('wr_lock_key_slot_0 = 1\n')
            fp.write('wr_lock_key_slot_1 = 1\n')
        else:
            fp.write('wr_lock_key_slot_0 = 0\n')
            fp.write('wr_lock_key_slot_1 = 0\n')
        tips += 'CPU0 public key hash\r\n'
        fp.write('ef_key_slot_5_w0 = 0x' + str_endian_switch(values['cpu1_pk_simple'][0:8]) + '\n')
        fp.write('ef_key_slot_5_w1 = 0x' + str_endian_switch(values['cpu1_pk_simple'][8:16]) + '\n')
        fp.write('ef_key_slot_5_w2 = 0x' + str_endian_switch(values['cpu1_pk_simple'][16:24]) + '\n')
        fp.write('ef_key_slot_5_w3 = 0x' + str_endian_switch(values['cpu1_pk_simple'][24:32]) + '\n')
        fp.write('ef_key_slot_6_w0 = 0x' + str_endian_switch(values['cpu1_pk_simple'][32:40]) + '\n')
        fp.write('ef_key_slot_6_w1 = 0x' + str_endian_switch(values['cpu1_pk_simple'][40:48]) + '\n')
        fp.write('ef_key_slot_6_w2 = 0x' + str_endian_switch(values['cpu1_pk_simple'][48:56]) + '\n')
        fp.write('ef_key_slot_6_w3 = 0x' + str_endian_switch(values['cpu1_pk_simple'][56:64]) + '\n')
        if values['cpu1_pk_wp_enable'] == True:
            fp.write('wr_lock_key_slot_5 = 1\n')
            fp.write('wr_lock_key_slot_6 = 1\n')
        else:
            fp.write('wr_lock_key_slot_5 = 0\n')
            fp.write('wr_lock_key_slot_6 = 0\n')
        tips += 'CPU1 public key hash\r\n'
        if aes_mode != 0:
            if len(values['cpu0_aes_key_simple']) >= 32and len(values['cpu1_aes_key_simple']) >= 32and len(values['common_aes_key_simple']) >= 32and verify_hex_num(values['cpu0_aes_key_simple']) == True and len(values['cpu1_aes_key_simple']) >= 32 and verify_hex_num(values['common_aes_key_simple']) == True:
                fp.write('ef_key_slot_2_w0 = 0x' + str_endian_switch(values['cpu0_aes_key_simple'][0:8]) + '\n')
                fp.write('ef_key_slot_2_w1 = 0x' + str_endian_switch(values['cpu0_aes_key_simple'][8:16]) + '\n')
                fp.write('ef_key_slot_2_w2 = 0x' + str_endian_switch(values['cpu0_aes_key_simple'][16:24]) + '\n')
                fp.write('ef_key_slot_2_w3 = 0x' + str_endian_switch(values['cpu0_aes_key_simple'][24:32]) + '\n')
                if values['cpu0_aes_key_wp_enable'] == True:
                    fp.write('wr_lock_key_slot_2 = 1\n')
                else:
                    fp.write('wr_lock_key_slot_2 = 0\n')
                if values['cpu0_aes_key_rp_enable'] == True:
                    fp.write('rd_lock_key_slot_2 = 1\n')
                else:
                    fp.write('rd_lock_key_slot_2 = 0\n')
                tips += 'CPU0 AES key\r\n'
                fp.write('ef_key_slot_7_w0 = 0x' + str_endian_switch(values['cpu1_aes_key_simple'][0:8]) + '\n')
                fp.write('ef_key_slot_7_w1 = 0x' + str_endian_switch(values['cpu1_aes_key_simple'][8:16]) + '\n')
                fp.write('ef_key_slot_7_w2 = 0x' + str_endian_switch(values['cpu1_aes_key_simple'][16:24]) + '\n')
                fp.write('ef_key_slot_7_w3 = 0x' + str_endian_switch(values['cpu1_aes_key_simple'][24:32]) + '\n')
                if values['cpu1_aes_key_wp_enable'] == True:
                    fp.write('wr_lock_key_slot_7 = 1\n')
                else:
                    fp.write('wr_lock_key_slot_7 = 0\n')
                if values['cpu1_aes_key_rp_enable'] == True:
                    fp.write('rd_lock_key_slot_7 = 1\n')
                else:
                    fp.write('rd_lock_key_slot_7 = 0\n')
                tips += 'CPU1 AES key\r\n'
                fp.write('ef_key_slot_10_w0 = 0x' + str_endian_switch(values['common_aes_key_simple'][0:8]) + '\n')
                fp.write('ef_key_slot_10_w1 = 0x' + str_endian_switch(values['common_aes_key_simple'][8:16]) + '\n')
                fp.write('ef_key_slot_10_w2 = 0x' + str_endian_switch(values['common_aes_key_simple'][16:24]) + '\n')
                fp.write('ef_key_slot_10_w3 = 0x' + str_endian_switch(values['common_aes_key_simple'][24:32]) + '\n')
                if values['common_aes_key_wp_enable'] == True:
                    fp.write('wr_lock_key_slot_10 = 1\n')
                else:
                    fp.write('wr_lock_key_slot_10 = 0\n')
                if values['common_aes_key_rp_enable'] == True:
                    fp.write('rd_lock_key_slot_10 = 1\n')
                else:
                    fp.write('rd_lock_key_slot_10 = 0\n')
                tips += 'Common AES key\r\n'
            else:
                bflb_utils.printf('Error: Please check AES key data and len')
                return 'Error: Please check AES key data and len'
        else:
            if values['cpu0_aes_key_simple'] != '':
                bflb_utils.printf('Error: AES mode is None, no need to fill in CPU0 AES key')
                return 'Error: AES mode is None, no need to fill in CPU0 AES key'
            if values['cpu1_aes_key_simple'] != '':
                bflb_utils.printf('Error: AES mode is None, no need to fill in CPU1 AES key')
                return 'Error: AES mode is None, no need to fill in CPU1 AES key'
            if values['common_aes_key_simple'] != '':
                bflb_utils.printf('Error: AES mode is None, no need to fill in Common AES key')
                return 'Error: AES mode is None, no need to fill in Common AES key'
    else:
        bflb_utils.printf('Error: Please check public key hash data and len')
        return 'Error: Please check public key hash data and len'
    if aes_mode == 1:
        if len(values['cpu0_aes_key_simple']) != 32:
            bflb_utils.printf('Error: Please check CPU0 AES key len')
            return 'Error: Please check CPU0 AES key len'
        if len(values['cpu1_aes_key_simple']) != 32:
            bflb_utils.printf('Error: Please check CPU1 AES key len')
            return 'Error: Please check CPU1 AES key len'
        if len(values['common_aes_key_simple']) != 32:
            bflb_utils.printf('Error: Please check Common AES key len')
            return 'Error: Please check Common AES key len'
    elif aes_mode == 2:
        if len(values['cpu0_aes_key_simple']) == 48:
            fp.write('ef_key_slot_3_w0 = 0x' + str_endian_switch(values['cpu0_aes_key_simple'][32:40]) + '\n')
            fp.write('ef_key_slot_3_w1 = 0x' + str_endian_switch(values['cpu0_aes_key_simple'][40:48]) + '\n')
            if values['cpu0_aes_key_wp_enable'] == True:
                fp.write('wr_lock_key_slot_3 = 1\n')
            else:
                fp.write('wr_lock_key_slot_3 = 0\n')
            if values['cpu0_aes_key_rp_enable'] == True:
                fp.write('rd_lock_key_slot_3 = 1\n')
            else:
                fp.write('rd_lock_key_slot_3 = 0\n')
        else:
            bflb_utils.printf('Error: Please check CPU0 AES key len')
            return 'Error: Please check CPU0 AES key len'
        if len(values['cpu1_aes_key_simple']) == 48:
            fp.write('ef_key_slot_8_w0 = 0x' + str_endian_switch(values['cpu1_aes_key_simple'][32:40]) + '\n')
            fp.write('ef_key_slot_8_w1 = 0x' + str_endian_switch(values['cpu1_aes_key_simple'][40:48]) + '\n')
            if values['cpu1_aes_key_wp_enable'] == True:
                fp.write('wr_lock_key_slot_8 = 1\n')
            else:
                fp.write('wr_lock_key_slot_8 = 0\n')
            if values['cpu1_aes_key_rp_enable'] == True:
                fp.write('rd_lock_key_slot_8 = 1\n')
            else:
                fp.write('rd_lock_key_slot_8 = 0\n')
        else:
            bflb_utils.printf('Error: Please check CPU1 AES key len')
            return 'Error: Please check CPU1 AES key len'
        if len(values['common_aes_key_simple']) == 48:
            fp.write('ef_key_slot_11_w0 = 0x' + str_endian_switch(values['common_aes_key_simple'][32:40]) + '\n')
            fp.write('ef_key_slot_11_w1 = 0x' + str_endian_switch(values['common_aes_key_simple'][40:48]) + '\n')
            if values['common_aes_key_wp_enable'] == True:
                fp.write('wr_lock_key_slot_11 = 1\n')
            else:
                fp.write('wr_lock_key_slot_11 = 0\n')
            if values['common_aes_key_rp_enable'] == True:
                fp.write('rd_lock_key_slot_11 = 1\n')
            else:
                fp.write('rd_lock_key_slot_11 = 0\n')
        else:
            bflb_utils.printf('Error: Please check Common AES key len')
            return 'Error: Please check Common AES key len'
    elif aes_mode == 3:
        if len(values['cpu0_aes_key_simple']) == 64:
            fp.write('ef_key_slot_3_w0 = 0x' + str_endian_switch(values['cpu0_aes_key_simple'][32:40]) + '\n')
            fp.write('ef_key_slot_3_w1 = 0x' + str_endian_switch(values['cpu0_aes_key_simple'][40:48]) + '\n')
            fp.write('ef_key_slot_3_w2 = 0x' + str_endian_switch(values['cpu0_aes_key_simple'][48:56]) + '\n')
            fp.write('ef_key_slot_3_w3 = 0x' + str_endian_switch(values['cpu0_aes_key_simple'][56:64]) + '\n')
            if values['cpu0_aes_key_wp_enable'] == True:
                fp.write('wr_lock_key_slot_3 = 1\n')
            else:
                fp.write('wr_lock_key_slot_3 = 0\n')
            if values['cpu0_aes_key_rp_enable'] == True:
                fp.write('rd_lock_key_slot_3 = 1\n')
            else:
                fp.write('rd_lock_key_slot_3 = 0\n')
        else:
            bflb_utils.printf('Error: Please check CPU0 AES key len')
            return 'Error: Please check CPU0 AES key len'
        if len(values['cpu1_aes_key_simple']) == 64:
            fp.write('ef_key_slot_8_w0 = 0x' + str_endian_switch(values['cpu1_aes_key_simple'][32:40]) + '\n')
            fp.write('ef_key_slot_8_w1 = 0x' + str_endian_switch(values['cpu1_aes_key_simple'][40:48]) + '\n')
            fp.write('ef_key_slot_8_w2 = 0x' + str_endian_switch(values['cpu1_aes_key_simple'][48:56]) + '\n')
            fp.write('ef_key_slot_8_w3 = 0x' + str_endian_switch(values['cpu1_aes_key_simple'][56:64]) + '\n')
            if values['cpu1_aes_key_wp_enable'] == True:
                fp.write('wr_lock_key_slot_8 = 1\n')
            else:
                fp.write('wr_lock_key_slot_8 = 0\n')
            if values['cpu1_aes_key_rp_enable'] == True:
                fp.write('rd_lock_key_slot_8 = 1\n')
            else:
                fp.write('rd_lock_key_slot_8 = 0\n')
        else:
            bflb_utils.printf('Error: Please check CPU1 AES key len')
            return 'Error: Please check CPU1 AES key len'
        if len(values['common_aes_key_simple']) == 64:
            fp.write('ef_key_slot_11_w0 = 0x' + str_endian_switch(values['common_aes_key_simple'][32:40]) + '\n')
            fp.write('ef_key_slot_11_w1 = 0x' + str_endian_switch(values['common_aes_key_simple'][40:48]) + '\n')
            fp.write('ef_key_slot_11_w2 = 0x' + str_endian_switch(values['common_aes_key_simple'][48:56]) + '\n')
            fp.write('ef_key_slot_11_w3 = 0x' + str_endian_switch(values['common_aes_key_simple'][56:64]) + '\n')
            if values['common_aes_key_wp_enable'] == True:
                fp.write('wr_lock_key_slot_11 = 1\n')
            else:
                fp.write('wr_lock_key_slot_11 = 0\n')
            if values['common_aes_key_rp_enable'] == True:
                fp.write('rd_lock_key_slot_11 = 1\n')
            else:
                fp.write('rd_lock_key_slot_11 = 0\n')
        else:
            bflb_utils.printf('Error: Please check Common AES key len')
            return 'Error: Please check Common AES key len'
    lines = len(tips.split('\r\n')) + 1
    bflb_utils.printf('Following will be burned:\r\n' + tips)
    fp.close()
    bflb_efuse_boothd_create.efuse_create_process(chip_name, chip_type, cfg_file, efuse_data)
# okay decompiling lib.bl60x.efuse_create_do.pyc
