# decompyle3 version 3.3.2
# Python bytecode 3.7 (3394)
# Decompiled from: Python 3.8.5 (default, Jul 28 2020, 12:59:40) 
# [GCC 9.3.0]
# Embedded file name: core\bflb_key_tool.py
import os, sys, re, shutil
from lib import bflb_eflash_loader
from lib import bflb_efuse_boothd_create
from lib import bflb_utils
import globalvar as gol
chip_name = gol.GlobalVar.type_chip[0]
chip_type = gol.GlobalVar.type_chip[1]
if getattr(sys, 'frozen', False):
    app_path = os.path.dirname(sys.executable)
else:
    app_path = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
eflash_loader_bin = os.path.join(app_path, chip_name, 'eflash_loader/eflash_loader_40m.bin')
eflash_loader_cfg = os.path.join(app_path, chip_name, 'eflash_loader/eflash_loader_cfg.conf')
eflash_loader_cfg_tmp = os.path.join(app_path, chip_name, 'eflash_loader/eflash_loader_cfg.ini')
efuse_data = os.path.join(app_path, chip_name, 'efuse_bootheader/efuse_data.bin')
efuse_data_mask = os.path.join(app_path, chip_name, 'efuse_bootheader/efuse_data_mask.bin')
efuse_cfg = os.path.join(app_path, chip_name, 'efuse_bootheader/eflash_cfg.ini')
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


def create_key_data(values):
    sub_module = __import__(('lib.' + chip_type), fromlist=[chip_type])
    return sub_module.efuse_create_do.create_key_data_do(values, chip_name, chip_type, efuse_cfg, efuse_data)


def program_key_data(values, callback=None):
    global eflash_loader_bin
    eflash_loader_bin = os.path.join(app_path, chip_name, 'eflash_loader/' + get_eflash_loader(values['dl_xtal']))
    cfg = bflb_utils.BFConfigParser()
    if os.path.isfile(eflash_loader_cfg_tmp) == False:
        shutil.copy(eflash_loader_cfg, eflash_loader_cfg_tmp)
    cfg.read(eflash_loader_cfg_tmp)
    bflb_utils.Update_Cfg(cfg, 'LOAD_CFG', 'interface', values['dl_device'].lower())
    bflb_utils.Update_Cfg(cfg, 'LOAD_CFG', 'device', values['dl_comport'])
    bflb_utils.Update_Cfg(cfg, 'LOAD_CFG', 'speed_uart_load', values['dl_comspeed'])
    bflb_utils.Update_Cfg(cfg, 'LOAD_CFG', 'speed_jlink', values['dl_jlinkspeed'])
    if values['dl_chiperase'] == 'True':
        bflb_utils.Update_Cfg(cfg, 'LOAD_CFG', 'erase', '2')
    else:
        bflb_utils.Update_Cfg(cfg, 'LOAD_CFG', 'erase', '1')
    if 'dl_verify' in values.keys():
        if values['dl_verify'] == 'True':
            bflb_utils.Update_Cfg(cfg, 'LOAD_CFG', 'verify', '1')
        else:
            bflb_utils.Update_Cfg(cfg, 'LOAD_CFG', 'verify', '0')
    bflb_utils.Update_Cfg(cfg, 'EFUSE_CFG', 'file', efuse_data)
    bflb_utils.Update_Cfg(cfg, 'EFUSE_CFG', 'maskfile', efuse_data_mask)
    cfg.write(eflash_loader_cfg_tmp, 'w+')
    ret = None
    try:
        try:
            cmd = '-p -t efuse -c %s' % eflash_loader_cfg_tmp
            eflash_loader_t = bflb_eflash_loader.BFLB_Eflash_Loader(chip_type)
            ret = eflash_loader_t.efuse_flash_loader(cmd.split(' '), None, eflash_loader_bin)
        except Exception as e:
            try:
                ret = str(e)
                traceback.print_exc(limit=5, file=(sys.stdout))
            finally:
                e = None
                del e

    finally:
        return ret
# okay decompiling core.bflb_key_tool.pyc
