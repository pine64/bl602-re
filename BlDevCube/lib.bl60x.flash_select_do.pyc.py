# decompyle3 version 3.3.2
# Python bytecode 3.7 (3394)
# Decompiled from: Python 3.8.5 (default, Jul 28 2020, 12:59:40) 
# [GCC 9.3.0]
# Embedded file name: lib\bl60x\flash_select_do.py
from lib import bflb_utils
import os
from lib.bflb_utils import app_path

def get_suitable_file_name(cfg_dir, flash_id):
    conf_files = []
    for home, dirs, files in os.walk(cfg_dir):
        for filename in files:
            if filename.split('_')[(-1)] == flash_id + '.conf':
                conf_files.append(filename)

    if len(conf_files) > 1:
        bflb_utils.printf('Flash id duplicate and alternative is:')
        for i in range(len(conf_files)):
            tmp = conf_files[i].split('.')[0]
            bflb_utils.printf('%d:%s' % (i + 1, tmp))

        return conf_files[i]
    if len(conf_files) == 1:
        return conf_files[0]
    return ''


def update_flash_cfg_do(chipname, chiptype, flash_id, file=None, create=False, section=None):
    cfg_dir = app_path + '/common/flash_config/' + chiptype + '/'
    conf_name = get_suitable_file_name(cfg_dir, flash_id)
    value_key = []
    if os.path.isfile(cfg_dir + conf_name) == False:
        return False
    fp = open(cfg_dir + conf_name, 'r')
    for line in fp.readlines():
        value = line.split('=')[0].strip()
        if value == '[FLASH_CFG]':
            continue
        else:
            value_key.append(value)

    cfg1 = bflb_utils.BFConfigParser()
    cfg1.read(cfg_dir + conf_name)
    cfg2 = bflb_utils.BFConfigParser()
    cfg2.read(file)
    for i in range(len(value_key)):
        if cfg1.has_option('FLASH_CFG', value_key[i]):
            if cfg2.has_option(section, value_key[i]):
                tmp_value = cfg1.get('FLASH_CFG', value_key[i])
                bflb_utils.Update_Cfg(cfg2, section, value_key[i], tmp_value)

    cfg2.write(file, 'w+')
    bflb_utils.printf('Update flash cfg finished')


def get_supported_flash_do():
    flash_type = []
    return flash_type
# okay decompiling lib.bl60x.flash_select_do.pyc
