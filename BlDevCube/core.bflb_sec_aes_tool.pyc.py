# decompyle3 version 3.3.2
# Python bytecode 3.7 (3394)
# Decompiled from: Python 3.8.5 (default, Jul 28 2020, 12:59:40) 
# [GCC 9.3.0]
# Embedded file name: core\bflb_sec_aes_tool.py
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


def create_sec_aes_data(values):
    tips = ''
    bflb_utils.printf('Create_Sec_Aes_data')
    fp = open(efuse_cfg, 'w+')
    fp.write('[EFUSE_CFG]\n')
    aes_mode = ef_sf_aes_mode_list.index(values['ef_sf_aes_mode'])
    fp.write('ef_sf_aes_mode = ' + str(ef_sf_aes_mode_list.index(values['ef_sf_aes_mode'])) + '\n')
    if aes_mode != 0:
        fp.write('ef_cpu_enc_en = 1\n')
    if 'slot_2_simple' in values.keys():
        if values['slot_2_simple'] != '':
            if verify_hex_num(values['slot_2_simple']) == True:
                if len(values['slot_2_simple']) == 32:
                    fp.write('ef_key_slot_2_w0 = 0x' + str_endian_switch(values['slot_2_simple'][0:8]) + '\n')
                    fp.write('ef_key_slot_2_w1 = 0x' + str_endian_switch(values['slot_2_simple'][8:16]) + '\n')
                    fp.write('ef_key_slot_2_w2 = 0x' + str_endian_switch(values['slot_2_simple'][16:24]) + '\n')
                    fp.write('ef_key_slot_2_w3 = 0x' + str_endian_switch(values['slot_2_simple'][24:32]) + '\n')
                elif len(values['slot_2_simple']) == 16:
                    fp.write('ef_key_slot_2_w0 = 0x00000000\n')
                    fp.write('ef_key_slot_2_w1 = 0x00000000\n')
                    fp.write('ef_key_slot_2_w2 = 0x' + str_endian_switch(values['slot_2_simple'][0:8]) + '\n')
                    fp.write('ef_key_slot_2_w3 = 0x' + str_endian_switch(values['slot_2_simple'][8:16]) + '\n')
                else:
                    bflb_utils.printf('Error: Please check ef_key_slot_2 len')
                    return 'Error: Please check ef_key_slot_2 len'
                if values['slot_2_wp_enable'] == True:
                    fp.write('wr_lock_key_slot_2 = 1\n')
                else:
                    fp.write('wr_lock_key_slot_2 = 0\n')
                if values['slot_2_rp_enable'] == True:
                    fp.write('rd_lock_key_slot_2 = 1\n')
                else:
                    fp.write('rd_lock_key_slot_2 = 0\n')
                tips += 'ef_key_slot_2\r\n'
            else:
                bflb_utils.printf('Error: Please check ef_key_slot_2 data')
                return 'Error: Please check ef_key_slot_2 data'
    if 'slot_3_simple' in values.keys():
        if values['slot_3_simple'] != '':
            if verify_hex_num(values['slot_3_simple']) == True:
                if len(values['slot_3_simple']) == 32:
                    fp.write('ef_key_slot_3_w0 = 0x' + str_endian_switch(values['slot_3_simple'][0:8]) + '\n')
                    fp.write('ef_key_slot_3_w1 = 0x' + str_endian_switch(values['slot_3_simple'][8:16]) + '\n')
                    fp.write('ef_key_slot_3_w2 = 0x' + str_endian_switch(values['slot_3_simple'][16:24]) + '\n')
                    fp.write('ef_key_slot_3_w3 = 0x' + str_endian_switch(values['slot_3_simple'][24:32]) + '\n')
                elif len(values['slot_3_simple']) == 16:
                    fp.write('ef_key_slot_3_w0 = 0x00000000\n')
                    fp.write('ef_key_slot_3_w1 = 0x00000000\n')
                    fp.write('ef_key_slot_3_w2 = 0x' + str_endian_switch(values['slot_3_simple'][0:8]) + '\n')
                    fp.write('ef_key_slot_3_w3 = 0x' + str_endian_switch(values['slot_3_simple'][8:16]) + '\n')
                else:
                    bflb_utils.printf('Error: Please check ef_key_slot_3 len')
                    return 'Error: Please check ef_key_slot_3 len'
                if values['slot_3_wp_enable'] == True:
                    fp.write('wr_lock_key_slot_3 = 1\n')
                else:
                    fp.write('wr_lock_key_slot_3 = 0\n')
                if values['slot_3_rp_enable'] == True:
                    fp.write('rd_lock_key_slot_3 = 1\n')
                else:
                    fp.write('rd_lock_key_slot_3 = 0\n')
                tips += 'ef_key_slot_3\r\n'
            else:
                bflb_utils.printf('Error: Please check ef_key_slot_3 data')
                return 'Error: Please check ef_key_slot_3 data'
    if 'slot_4_simple' in values.keys():
        if values['slot_4_simple'] != '':
            if verify_hex_num(values['slot_4_simple']) == True:
                if len(values['slot_4_simple']) == 32:
                    fp.write('ef_key_slot_4_w0 = 0x' + str_endian_switch(values['slot_4_simple'][0:8]) + '\n')
                    fp.write('ef_key_slot_4_w1 = 0x' + str_endian_switch(values['slot_4_simple'][8:16]) + '\n')
                    fp.write('ef_key_slot_4_w2 = 0x' + str_endian_switch(values['slot_4_simple'][16:24]) + '\n')
                    fp.write('ef_key_slot_4_w3 = 0x' + str_endian_switch(values['slot_4_simple'][24:32]) + '\n')
                elif len(values['slot_4_simple']) == 16:
                    fp.write('ef_key_slot_4_w0 = 0x00000000\n')
                    fp.write('ef_key_slot_4_w1 = 0x00000000\n')
                    fp.write('ef_key_slot_4_w2 = 0x' + str_endian_switch(values['slot_4_simple'][0:8]) + '\n')
                    fp.write('ef_key_slot_4_w3 = 0x' + str_endian_switch(values['slot_4_simple'][8:16]) + '\n')
                else:
                    bflb_utils.printf('Error: Please check ef_key_slot_4 len')
                    return 'Error: Please check ef_key_slot_4 len'
                if chip_type == 'bl602':
                    if values['slot_4_wp_enable'] == True:
                        fp.write('wr_lock_key_slot_4_l = 1\n')
                        fp.write('wr_lock_key_slot_4_h = 1\n')
                    else:
                        fp.write('wr_lock_key_slot_4_l = 0\n')
                        fp.write('wr_lock_key_slot_4_h = 0\n')
                elif values['slot_4_wp_enable'] == True:
                    fp.write('wr_lock_key_slot_4 = 1\n')
                else:
                    fp.write('wr_lock_key_slot_4 = 0\n')
                if values['slot_4_rp_enable'] == True:
                    fp.write('rd_lock_key_slot_4 = 1\n')
                else:
                    fp.write('rd_lock_key_slot_4 = 0\n')
                tips += 'ef_key_slot_4\r\n'
            else:
                bflb_utils.printf('Error: Please check ef_key_slot_4 data')
                return 'Error: Please check ef_key_slot_4 data'
    if 'slot_7_simple' in values.keys():
        if values['slot_7_simple'] != '':
            if verify_hex_num(values['slot_7_simple']) == True:
                if len(values['slot_7_simple']) == 32:
                    fp.write('ef_key_slot_7_w0 = 0x' + str_endian_switch(values['slot_7_simple'][0:8]) + '\n')
                    fp.write('ef_key_slot_7_w1 = 0x' + str_endian_switch(values['slot_7_simple'][8:16]) + '\n')
                    fp.write('ef_key_slot_7_w2 = 0x' + str_endian_switch(values['slot_7_simple'][16:24]) + '\n')
                    fp.write('ef_key_slot_7_w3 = 0x' + str_endian_switch(values['slot_7_simple'][24:32]) + '\n')
                elif len(values['slot_7_simple']) == 16:
                    fp.write('ef_key_slot_7_w0 = 0x00000000\n')
                    fp.write('ef_key_slot_7_w1 = 0x00000000\n')
                    fp.write('ef_key_slot_7_w2 = 0x' + str_endian_switch(values['slot_7_simple'][0:8]) + '\n')
                    fp.write('ef_key_slot_7_w3 = 0x' + str_endian_switch(values['slot_7_simple'][8:16]) + '\n')
                else:
                    bflb_utils.printf('Error: Please check ef_key_slot_7 len')
                    return 'Error: Please check ef_key_slot_7 len'
                if values['slot_7_wp_enable'] == True:
                    fp.write('wr_lock_key_slot_7 = 1\n')
                else:
                    fp.write('wr_lock_key_slot_7 = 0\n')
                if values['slot_7_rp_enable'] == True:
                    fp.write('rd_lock_key_slot_7 = 1\n')
                else:
                    fp.write('rd_lock_key_slot_7 = 0\n')
                tips += 'ef_key_slot_7\r\n'
            else:
                bflb_utils.printf('Error: Please check ef_key_slot_7 data')
                return 'Error: Please check ef_key_slot_7 data'
    if 'slot_8_simple' in values.keys():
        if values['slot_8_simple'] != '':
            if verify_hex_num(values['slot_8_simple']) == True:
                if len(values['slot_8_simple']) == 32:
                    fp.write('ef_key_slot_8_w0 = 0x' + str_endian_switch(values['slot_8_simple'][0:8]) + '\n')
                    fp.write('ef_key_slot_8_w1 = 0x' + str_endian_switch(values['slot_8_simple'][8:16]) + '\n')
                    fp.write('ef_key_slot_8_w2 = 0x' + str_endian_switch(values['slot_8_simple'][16:24]) + '\n')
                    fp.write('ef_key_slot_8_w3 = 0x' + str_endian_switch(values['slot_8_simple'][24:32]) + '\n')
                elif len(values['slot_8_simple']) == 16:
                    fp.write('ef_key_slot_8_w0 = 0x00000000\n')
                    fp.write('ef_key_slot_8_w1 = 0x00000000\n')
                    fp.write('ef_key_slot_8_w2 = 0x' + str_endian_switch(values['slot_8_simple'][0:8]) + '\n')
                    fp.write('ef_key_slot_8_w3 = 0x' + str_endian_switch(values['slot_8_simple'][8:16]) + '\n')
                else:
                    bflb_utils.printf('Error: Please check ef_key_slot_8 len')
                    return 'Error: Please check ef_key_slot_8 len'
                if values['slot_8_wp_enable'] == True:
                    fp.write('wr_lock_key_slot_8 = 1\n')
                else:
                    fp.write('wr_lock_key_slot_8 = 0\n')
                if values['slot_8_rp_enable'] == True:
                    fp.write('rd_lock_key_slot_8 = 1\n')
                else:
                    fp.write('rd_lock_key_slot_8 = 0\n')
                tips += 'ef_key_slot_8\r\n'
            else:
                bflb_utils.printf('Error: Please check ef_key_slot_8 data')
                return 'Error: Please check ef_key_slot_8 data'
    if 'slot_9_simple' in values.keys():
        if values['slot_9_simple'] != '':
            if verify_hex_num(values['slot_9_simple']) == True:
                if len(values['slot_9_simple']) == 32:
                    fp.write('ef_key_slot_9_w0 = 0x' + str_endian_switch(values['slot_9_simple'][0:8]) + '\n')
                    fp.write('ef_key_slot_9_w1 = 0x' + str_endian_switch(values['slot_9_simple'][8:16]) + '\n')
                    fp.write('ef_key_slot_9_w2 = 0x' + str_endian_switch(values['slot_9_simple'][16:24]) + '\n')
                    fp.write('ef_key_slot_9_w3 = 0x' + str_endian_switch(values['slot_9_simple'][24:32]) + '\n')
                elif len(values['slot_9_simple']) == 16:
                    fp.write('ef_key_slot_9_w0 = 0x00000000\n')
                    fp.write('ef_key_slot_9_w1 = 0x00000000\n')
                    fp.write('ef_key_slot_9_w2 = 0x' + str_endian_switch(values['slot_9_simple'][0:8]) + '\n')
                    fp.write('ef_key_slot_9_w3 = 0x' + str_endian_switch(values['slot_9_simple'][8:16]) + '\n')
                else:
                    bflb_utils.printf('Error: Please check ef_key_slot_9 len')
                    return 'Error: Please check ef_key_slot_9 len'
                if values['slot_9_wp_enable'] == True:
                    fp.write('wr_lock_key_slot_9 = 1\n')
                else:
                    fp.write('wr_lock_key_slot_9 = 0\n')
                if values['slot_9_rp_enable'] == True:
                    fp.write('rd_lock_key_slot_9 = 1\n')
                else:
                    fp.write('rd_lock_key_slot_9 = 0\n')
                tips += 'ef_key_slot_9\r\n'
            else:
                bflb_utils.printf('Error: Please check ef_key_slot_9 data')
                return 'Error: Please check ef_key_slot_9 data'
    if 'slot_10_simple' in values.keys():
        if values['slot_10_simple'] != '':
            if verify_hex_num(values['slot_10_simple']) == True:
                if len(values['slot_10_simple']) == 32:
                    fp.write('ef_key_slot_10_w0 = 0x' + str_endian_switch(values['slot_10_simple'][0:8]) + '\n')
                    fp.write('ef_key_slot_10_w1 = 0x' + str_endian_switch(values['slot_10_simple'][8:16]) + '\n')
                    fp.write('ef_key_slot_10_w2 = 0x' + str_endian_switch(values['slot_10_simple'][16:24]) + '\n')
                    fp.write('ef_key_slot_10_w3 = 0x' + str_endian_switch(values['slot_10_simple'][24:32]) + '\n')
                elif len(values['slot_10_simple']) == 16:
                    fp.write('ef_key_slot_10_w0 = 0x00000000\n')
                    fp.write('ef_key_slot_10_w1 = 0x00000000\n')
                    fp.write('ef_key_slot_10_w2 = 0x' + str_endian_switch(values['slot_10_simple'][0:8]) + '\n')
                    fp.write('ef_key_slot_10_w3 = 0x' + str_endian_switch(values['slot_10_simple'][8:16]) + '\n')
                else:
                    bflb_utils.printf('Error: Please check ef_key_slot_10 len')
                    return 'Error: Please check ef_key_slot_10 len'
                if values['slot_10_wp_enable'] == True:
                    fp.write('wr_lock_key_slot_10 = 1\n')
                else:
                    fp.write('wr_lock_key_slot_10 = 0\n')
                if values['slot_10_rp_enable'] == True:
                    fp.write('rd_lock_key_slot_10 = 1\n')
                else:
                    fp.write('rd_lock_key_slot_10 = 0\n')
                tips += 'ef_key_slot_10\r\n'
            else:
                bflb_utils.printf('Error: Please check ef_key_slot_10 data')
                return 'Error: Please check ef_key_slot_10 data'
    if 'slot_11_simple' in values.keys():
        if values['slot_11_simple'] != '':
            if verify_hex_num(values['slot_11_simple']) == True:
                if len(values['slot_11_simple']) == 32:
                    fp.write('ef_key_slot_11_w0 = 0x' + str_endian_switch(values['slot_11_simple'][0:8]) + '\n')
                    fp.write('ef_key_slot_11_w1 = 0x' + str_endian_switch(values['slot_11_simple'][8:16]) + '\n')
                    fp.write('ef_key_slot_11_w2 = 0x' + str_endian_switch(values['slot_11_simple'][16:24]) + '\n')
                    fp.write('ef_key_slot_11_w3 = 0x' + str_endian_switch(values['slot_11_simple'][24:32]) + '\n')
                elif len(values['slot_11_simple']) == 16:
                    fp.write('ef_key_slot_11_w0 = 0x00000000\n')
                    fp.write('ef_key_slot_11_w1 = 0x00000000\n')
                    fp.write('ef_key_slot_11_w2 = 0x' + str_endian_switch(values['slot_11_simple'][0:8]) + '\n')
                    fp.write('ef_key_slot_11_w3 = 0x' + str_endian_switch(values['slot_11_simple'][8:16]) + '\n')
                else:
                    bflb_utils.printf('Error: Please check ef_key_slot_11 len')
                    return 'Error: Please check ef_key_slot_11 len'
                if values['slot_11_wp_enable'] == True:
                    fp.write('wr_lock_key_slot_11 = 1\n')
                else:
                    fp.write('wr_lock_key_slot_11 = 0\n')
                if values['slot_11_rp_enable'] == True:
                    fp.write('rd_lock_key_slot_11 = 1\n')
                else:
                    fp.write('rd_lock_key_slot_11 = 0\n')
                tips += 'ef_key_slot_11\r\n'
            else:
                bflb_utils.printf('Error: Please check ef_key_slot_11 data')
                return 'Error: Please check ef_key_slot_11 data'
    if 'usage_1_simple' in values.keys():
        if values['usage_1_simple'] != '':
            if values['usage_1_simple'][0:2] != '0x':
                if values['usage_1_simple'][0:2] != '0X':
                    bflb_utils.printf('Error: usage_1_simple is HEX data, must begin with 0x')
                    return
            if len(values['usage_1_simple']) == 10 and verify_hex_num(values['usage_1_simple'][2:]) == True:
                fp.write('ef_sw_usage_1 = 0x' + str_endian_switch(values['usage_1_simple'][2:10]) + '\n')
                if values['usage_1_wp_enable'] == True:
                    fp.write('wr_lock_sw_usage_1 = 1\n')
                else:
                    fp.write('wr_lock_sw_usage_1 = 0\n')
                tips += 'ef_sw_usage_1\r\n'
            else:
                bflb_utils.printf('Error: Please check ef_sw_usage_1 data and len')
                return 'Error: Please check ef_sw_usage_1 data and len'
    if 'usage_2_simple' in values.keys():
        if values['usage_2_simple'] != '':
            if values['usage_2_simple'][0:2] != '0x':
                if values['usage_2_simple'][0:2] != '0X':
                    bflb_utils.printf('Error: usage_2_simple is HEX data, must begin with 0x')
                    return
            if len(values['usage_2_simple']) == 10 and verify_hex_num(values['usage_2_simple'][2:]) == True:
                fp.write('ef_sw_usage_2 = 0x' + str_endian_switch(values['usage_2_simple'][2:10]) + '\n')
                if values['usage_2_wp_enable'] == True:
                    fp.write('wr_lock_sw_usage_2 = 1\n')
                else:
                    fp.write('wr_lock_sw_usage_2 = 0\n')
                tips += 'ef_sw_usage_2\r\n'
            else:
                bflb_utils.printf('Error: Please check ef_sw_usage_2 data and len')
                return 'Error: Please check ef_sw_usage_2 data and len'
    if 'usage_3_simple' in values.keys():
        if values['usage_3_simple'] != '':
            if values['usage_3_simple'][0:2] != '0x':
                if values['usage_3_simple'][0:2] != '0X':
                    bflb_utils.printf('Error: usage_3_simple is HEX data, must begin with 0x')
                    return
            if len(values['usage_3_simple']) == 10 and verify_hex_num(values['usage_3_simple'][2:]) == True:
                fp.write('ef_sw_usage_3 = 0x' + str_endian_switch(values['usage_3_simple'][2:10]) + '\n')
                if values['usage_3_wp_enable'] == True:
                    fp.write('wr_lock_sw_usage_3 = 1\n')
                else:
                    fp.write('wr_lock_sw_usage_3 = 0\n')
                tips += 'ef_sw_usage_3\r\n'
            else:
                bflb_utils.printf('Error: Please check ef_sw_usage_3 data and len')
                return 'Error: Please check ef_sw_usage_3 data and len'
    lines = len(tips.split('\r\n')) + 1
    bflb_utils.printf('Following will be burned:\r\n' + tips)
    fp.close()
    bflb_efuse_boothd_create.efuse_create_process(chip_name, chip_type, efuse_cfg, efuse_data)


def program_sec_aes_data(values, callback=None):
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
# okay decompiling core.bflb_sec_aes_tool.pyc
