# decompyle3 version 3.3.2
# Python bytecode 3.7 (3394)
# Decompiled from: Python 3.8.5 (default, Jul 28 2020, 12:59:40) 
# [GCC 9.3.0]
# Embedded file name: lib\bflb_efuse_boothd_create.py
import os, sys, traceback
from lib import bflb_utils
from lib.bflb_utils import app_path

def bootheader_update_flash_pll_crc(bootheader_data):
    flash_cfg_start = 8
    flash_cfg_len = 92
    flash_cfg = bootheader_data[flash_cfg_start + 4:flash_cfg_start + flash_cfg_len - 4]
    crcarray = bflb_utils.get_crc32_bytearray(flash_cfg)
    bootheader_data[flash_cfg_start + flash_cfg_len - 4:flash_cfg_start + flash_cfg_len] = crcarray
    pll_cfg_start = flash_cfg_start + flash_cfg_len
    pll_cfg_len = 16
    pll_cfg = bootheader_data[pll_cfg_start + 4:pll_cfg_start + pll_cfg_len - 4]
    crcarray = bflb_utils.get_crc32_bytearray(pll_cfg)
    bootheader_data[pll_cfg_start + pll_cfg_len - 4:pll_cfg_start + pll_cfg_len] = crcarray
    return bootheader_data


def get_int_mask(pos, length):
    ones = '11111111111111111111111111111111'
    zeros = '00000000000000000000000000000000'
    mask = ones[0:32 - pos - length] + zeros[0:length] + ones[0:pos]
    return int(mask, 2)


def update_data_from_cfg(config_keys, config_file, section):
    bflb_utils.printf('Updating data according to <' + config_file + '[' + section + ']>')
    cfg = bflb_utils.BFConfigParser()
    cfg.read(config_file)
    filelen = 0
    for key in config_keys:
        offset = int(config_keys.get(key)['offset'], 10)
        if offset > filelen:
            filelen = offset

    filelen += 4
    bflb_utils.printf('Created file len:' + str(filelen))
    data = bytearray(filelen)
    data_mask = bytearray(filelen)
    for key in cfg.options(section):
        if config_keys.get(key) == None:
            bflb_utils.printf(key + ' not exist')
            continue
        else:
            val = cfg.get(section, key)
            if val.startswith('0x'):
                val = int(val, 16)
            else:
                val = int(val, 10)
            offset = int(config_keys.get(key)['offset'], 10)
            pos = int(config_keys.get(key)['pos'], 10)
            bitlen = int(config_keys.get(key)['bitlen'], 10)
            oldval = bflb_utils.bytearray_to_int(bflb_utils.bytearray_reverse(data[offset:offset + 4]))
            oldval_mask = bflb_utils.bytearray_to_int(bflb_utils.bytearray_reverse(data_mask[offset:offset + 4]))
            newval = (oldval & get_int_mask(pos, bitlen)) + (val << pos)
            if val != 0:
                newval_mask = oldval_mask | ~get_int_mask(pos, bitlen)
            else:
                newval_mask = oldval_mask
            data[offset:offset + 4] = bflb_utils.int_to_4bytearray_l(newval)
            data_mask[offset:offset + 4] = bflb_utils.int_to_4bytearray_l(newval_mask)

    return (data, data_mask)


def bootheader_create_do(chipname, chiptype, config_file, section, output_file=None, if_img=False):
    efuse_bootheader_path = os.path.join(app_path, chipname, 'efuse_bootheader')
    try:
        bflb_utils.printf('Create bootheader using ', config_file)
        sub_module = __import__(('lib.' + chiptype), fromlist=[chiptype])
        bh_data, tmp = update_data_from_cfg(sub_module.bootheader_cfg_keys.bootheader_cfg_keys, config_file, section)
        bh_data = bootheader_update_flash_pll_crc(bh_data)
        if output_file == None:
            fp = open(efuse_bootheader_path + '/' + section.lower().replace('_cfg', '.bin'), 'wb+')
        else:
            fp = open(output_file, 'wb+')
        if section == 'BOOTHEADER_CFG':
            if chiptype == 'bl60x':
                final_data = bytearray(8192)
                bh_data[118] = bh_data[118] | 4
                final_data[0:176] = bh_data
                final_data[4096:4272] = bh_data
                final_data[4098] = 65
                final_data[117] = final_data[117] | 240
                final_data[4214] = final_data[4214] | 3
                bh_data = final_data
        if if_img == True:
            bh_data[8:12] = bytearray(4)
            bh_data[100:104] = bytearray(4)
            fp.write(bh_data[0:176])
        else:
            fp.write(bh_data)
        fp.close()
        if output_file == None:
            fp = open(efuse_bootheader_path + '/flash_para.bin', 'wb+')
        else:
            parent_path = os.path.abspath(os.path.dirname(output_file))
            fp = open(parent_path + '/flash_para.bin', 'wb+')
        fp.write(bh_data[12:96])
        fp.close()
    except Exception as err:
        try:
            bflb_utils.printf('bootheader_create_do  fail!!')
            bflb_utils.printf(err)
            traceback.print_exc(limit=5, file=(sys.stdout))
        finally:
            err = None
            del err


def bootheader_create_process(chipname, chiptype, config_file, output_file1=None, output_file2=None, if_img=False):
    fp = open(config_file, 'r')
    data = fp.read()
    fp.close()
    if 'BOOTHEADER_CFG' in data:
        bootheader_create_do(chipname, chiptype, config_file, 'BOOTHEADER_CFG', output_file1, if_img)
    if 'BOOTHEADER_CPU0_CFG' in data:
        bootheader_create_do(chipname, chiptype, config_file, 'BOOTHEADER_CPU0_CFG', output_file1, if_img)
    if 'BOOTHEADER_CPU1_CFG' in data:
        bootheader_create_do(chipname, chiptype, config_file, 'BOOTHEADER_CPU1_CFG', output_file2, if_img)


def efuse_create_process(chipname, chiptype, config_file, output_file=None):
    efuse_bootheader_path = os.path.join(app_path, chipname, 'efuse_bootheader')
    bflb_utils.printf('Create efuse using ', config_file)
    sub_module = __import__(('lib.' + chiptype), fromlist=[chiptype])
    efuse_data, mask = update_data_from_cfg(sub_module.efuse_cfg_keys.efuse_cfg_keys, config_file, 'EFUSE_CFG')
    if output_file == None:
        fp = open(efuse_bootheader_path + '/efusedata.bin', 'wb+')
    else:
        fp = open(output_file, 'wb+')
    fp.write(efuse_data)
    fp.close()
    if output_file == None:
        fp = open(efuse_bootheader_path + '/efusedata_mask.bin', 'wb+')
    else:
        fp = open(output_file.replace('.bin', '_mask.bin'), 'wb+')
    fp.write(mask)
    fp.close()


def efuse_boothd_create_process(chipname, chiptype, config_file):
    bootheader_create_process(chipname, chiptype, config_file)
    efuse_create_process(chipname, chiptype, config_file)


if __name__ == '__main__':
    pass
# okay decompiling lib.bflb_efuse_boothd_create.pyc
