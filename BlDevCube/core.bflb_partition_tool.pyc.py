# decompyle3 version 3.3.2
# Python bytecode 3.7 (3394)
# Decompiled from: Python 3.8.5 (default, Jul 28 2020, 12:59:40) 
# [GCC 9.3.0]
# Embedded file name: core\bflb_partition_tool.py
import sys, os, traceback
from lib import bflb_eflash_loader
from lib import bflb_utils
import globalvar as gol
chip_name = gol.GlobalVar.type_chip[0]
chip_type = gol.GlobalVar.type_chip[1]
if getattr(sys, 'frozen', False):
    app_path = os.path.dirname(sys.executable)
else:
    app_path = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
partition_path = os.path.join(app_path, chip_name, 'partition/partition.bin')
eflash_loader_bin = os.path.join(app_path, chip_name, 'eflash_loader/eflash_loader_40m.bin')
eflash_loader_cfg = os.path.join(app_path, chip_name, 'eflash_loader/eflash_loader_cfg.conf')
eflash_loader_cfg_tmp = os.path.join(app_path, chip_name, 'eflash_loader/eflash_loader_cfg.ini')
efuse_data = os.path.join(app_path, chip_name, 'efuse_bootheader/efuse_data.bin')
efuse_data_mask = os.path.join(app_path, chip_name, 'efuse_bootheader/efuse_data_mask.bin')
entry_max = 6

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


def create_partition_table(values):
    entry_table = bytearray(36 * entry_max)
    entry_cnt = 0
    for i in range(entry_max):
        entry_type = values[('entry' + str(i + 1) + '_type')]
        entry_name = values[('entry' + str(i + 1) + '_name')]
        entry_addr0 = values[('entry' + str(i + 1) + '_addr0')]
        entry_addr1 = values[('entry' + str(i + 1) + '_addr1')]
        entry_maxlen0 = values[('entry' + str(i + 1) + '_maxlen0')]
        entry_maxlen1 = values[('entry' + str(i + 1) + '_maxlen1')]
        if entry_type != '':
            entry_table[36 * entry_cnt + 0] = bflb_utils.int_to_2bytearray_l(int(entry_type))[0]
            if len(entry_name) >= 8:
                return 'Entry name is too long!'
            else:
                entry_table[36 * entry_cnt + 3:36 * entry_cnt + 3 + len(entry_name)] = bflb_utils.get_byte_array(entry_name)
                entry_table[36 * entry_cnt + 12:36 * entry_cnt + 16] = bflb_utils.int_to_4bytearray_l(int(entry_addr0, 16))
                entry_table[36 * entry_cnt + 16:36 * entry_cnt + 20] = bflb_utils.int_to_4bytearray_l(int(entry_addr1, 16))
                entry_table[36 * entry_cnt + 20:36 * entry_cnt + 24] = bflb_utils.int_to_4bytearray_l(int(entry_maxlen0, 16))
                entry_table[36 * entry_cnt + 24:36 * entry_cnt + 28] = bflb_utils.int_to_4bytearray_l(int(entry_maxlen1, 16))
                entry_cnt += 1

    pt_table = bytearray(16)
    pt_table[0] = 66
    pt_table[1] = 70
    pt_table[2] = 80
    pt_table[3] = 84
    pt_table[6:8] = bflb_utils.int_to_2bytearray_l(int(entry_cnt))
    pt_table[12:16] = bflb_utils.get_crc32_bytearray(pt_table[0:12])
    entry_table[36 * entry_cnt:36 * entry_cnt + 4] = bflb_utils.get_crc32_bytearray(entry_table[0:36 * entry_cnt])
    data = pt_table + entry_table[0:36 * entry_cnt + 4]
    fp = open(partition_path, 'wb+')
    fp.write(data)
    fp.close()
    return True


def flash_partition_thread(values, action):
    global eflash_loader_bin
    eflash_loader_bin = os.path.join(app_path, chip_name, 'eflash_loader/' + get_eflash_loader(values['dl_xtal']))
    ret = None
    if action == 'erase partition1':
        start_addr = values['p1_start_addr']
        end_addr = hex(int(start_addr, 16) + 4096 - 1).replace('0x', '')
        update_cfg(values)
        cmd = '-e -t flash -c %s --start=%s --end=%s' % (eflash_loader_cfg_tmp, start_addr, end_addr)
    elif action == 'erase partition2':
        start_addr = values['p2_start_addr']
        end_addr = hex(int(start_addr, 16) + 4096 - 1).replace('0x', '')
        update_cfg(values)
        cmd = '-e -t flash -c %s --start=%s --end=%s' % (eflash_loader_cfg_tmp, start_addr, end_addr)
    elif action == 'program':
        if create_partition_table(values) == False:
            return
        start_addr = values['p1_start_addr']
        end_addr = hex(int(start_addr, 16) + 4096 - 1).replace('0x', '')
        update_cfg(values)
        cmd = '-p -t flash -c %s --file=%s --addr=%s' % (eflash_loader_cfg_tmp, partition_path, start_addr)
    elif action == 'create':
        create_partition_table(values)
        return True
    try:
        try:
            bflb_utils.printf(cmd)
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
# okay decompiling core.bflb_partition_tool.pyc
