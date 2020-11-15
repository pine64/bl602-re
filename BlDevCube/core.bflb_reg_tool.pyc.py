# decompyle3 version 3.3.2
# Python bytecode 3.7 (3394)
# Decompiled from: Python 3.8.5 (default, Jul 28 2020, 12:59:40) 
# [GCC 9.3.0]
# Embedded file name: core\bflb_reg_tool.py
import os, sys, binascii, shutil
from lib import bflb_eflash_loader
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

def get_eflash_loader(xtal):
    xtal_suffix = str(xtal).lower().replace('.', 'p').replace('M', 'm').replace('RC', 'rc')
    return 'eflash_loader_' + xtal_suffix + '.bin'


def update_cfg(values):
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


def program_read_id(values, callback=None):
    global eflash_loader_bin
    eflash_loader_bin = os.path.join(app_path, chip_name, 'eflash_loader/' + get_eflash_loader(values['dl_xtal']))
    try:
        update_cfg(values)
        cmd = '-n -t flash -c %s' % eflash_loader_cfg_tmp
        eflash_loader_t = bflb_eflash_loader.BFLB_Eflash_Loader(chip_type)
        eflash_loader_t.efuse_flash_loader(cmd.split(' '), None, eflash_loader_bin)
        ret, data = eflash_loader_t.flash_read_jedec_id_process()
        if ret:
            data = binascii.hexlify(data).decode('utf-8')
        eflash_loader_t.close_if()
        return (
         ret, data)
    except Exception as err:
        try:
            ret = str(err)
            bflb_utils.printf('error:' + ret)
            return (
             False, ret)
        finally:
            err = None
            del err


def program_read_reg(values, callback=None):
    global eflash_loader_bin
    eflash_loader_bin = os.path.join(app_path, chip_name, 'eflash_loader/' + get_eflash_loader(values['dl_xtal']))
    try:
        update_cfg(values)
        cmd = '-n -t flash -c %s' % eflash_loader_cfg_tmp
        eflash_loader_t = bflb_eflash_loader.BFLB_Eflash_Loader(chip_type)
        eflash_loader_t.efuse_flash_loader(cmd.split(' '), None, eflash_loader_bin)
        cmd = values['cmd']
        length = int(values['len'])
        ret, data = eflash_loader_t.flash_read_status_reg_process(cmd, length)
        if ret:
            data = binascii.hexlify(data).decode('utf-8')
        eflash_loader_t.close_if()
        return (
         ret, data)
    except Exception as err:
        try:
            ret = str(err)
            bflb_utils.printf('error:' + ret)
            return (
             False, ret)
        finally:
            err = None
            del err


def program_write_reg(values, callback=None):
    global eflash_loader_bin
    eflash_loader_bin = os.path.join(app_path, chip_name, 'eflash_loader/' + get_eflash_loader(values['dl_xtal']))
    try:
        update_cfg(values)
        cmd = '-n -t flash -c %s' % eflash_loader_cfg_tmp
        eflash_loader_t = bflb_eflash_loader.BFLB_Eflash_Loader(chip_type)
        eflash_loader_t.efuse_flash_loader(cmd.split(' '), None, eflash_loader_bin)
        cmd = values['cmd']
        length = int(values['len'])
        val = values['val']
        ret, data = eflash_loader_t.flash_write_status_reg_process(cmd, length, val)
        eflash_loader_t.close_if()
        return (
         ret, data)
    except Exception as err:
        try:
            ret = str(err)
            bflb_utils.printf('error:' + ret)
            return (
             False, ret)
        finally:
            err = None
            del err
# okay decompiling core.bflb_reg_tool.pyc
