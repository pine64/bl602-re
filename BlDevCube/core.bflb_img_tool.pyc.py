# decompyle3 version 3.3.2
# Python bytecode 3.7 (3394)
# Decompiled from: Python 3.8.5 (default, Jul 28 2020, 12:59:40) 
# [GCC 9.3.0]
# Embedded file name: core\bflb_img_tool.py
import re, os, sys, traceback, shutil
from lib import bflb_eflash_loader
from lib import bflb_efuse_boothd_create
from lib import bflb_img_create
from lib import bflb_img_loader
from lib import bflb_flash_select
from lib import bflb_utils
import globalvar as gol
chip_name = gol.GlobalVar.type_chip[0]
chip_type = gol.GlobalVar.type_chip[1]
if getattr(sys, 'frozen', False):
    app_path = os.path.dirname(sys.executable)
else:
    app_path = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
sys.path.append(app_path)
eflash_loader_cfg = os.path.join(app_path, chip_name, 'eflash_loader/eflash_loader_cfg.conf')
eflash_loader_cfg_tmp = os.path.join(app_path, chip_name, 'eflash_loader/eflash_loader_cfg.ini')
eflash_loader_bin = os.path.join(app_path, chip_name, 'eflash_loader/eflash_loader_40m.bin')
img_create_path = os.path.join(app_path, chip_name, 'img_create2')
efuse_bh_default_cfg = os.path.join(app_path, chip_name, 'efuse_bootheader') + '/efuse_bootheader_cfg.conf'
efuse_bh_default_cfg_dp = os.path.join(app_path, chip_name, 'efuse_bootheader') + '/efuse_bootheader_cfg_dp.conf'
img_create_cfg_org = os.path.join(app_path, chip_name, 'img_create') + '/img_create_cfg.conf'
img_create_cfg_dp_org = os.path.join(app_path, chip_name, 'img_create') + '/img_create_cfg_dp.conf'
img_create_cfg = os.path.join(app_path, chip_name, 'img_create2') + '/img_create_cfg.ini'
if os.path.isfile(eflash_loader_cfg_tmp) == False:
    shutil.copy(eflash_loader_cfg, eflash_loader_cfg_tmp)
if os.path.isfile(img_create_cfg) == False:
    shutil.copy(img_create_cfg_org, img_create_cfg)
xtal_type = gol.xtal_type[chip_type]
xtal_type_ = gol.xtal_type_[chip_type]
pll_clk = gol.pll_clk[chip_type]
encrypt_type = gol.encrypt_type[chip_type]
key_sel = gol.key_sel[chip_type]
sign_type = gol.sign_type[chip_type]
cache_way_disable = gol.cache_way_disable[chip_type]
flash_clk_type = gol.flash_clk_type[chip_type]
crc_ignore = gol.crc_ignore[chip_type]
hash_ignore = gol.hash_ignore[chip_type]
img_type = gol.img_type[chip_type]
boot_src = gol.boot_src[chip_type]
fl_thrx = None
eflash_loader_t = bflb_eflash_loader.BFLB_Eflash_Loader(chip_type)

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


def bl_create_flash_default_data(length):
    datas = bytearray(length)
    for i in range(length):
        datas[i] = 255

    return datas


def bl_get_file_data(files):
    datas = []
    for file in files:
        with open(os.path.join(app_path, file), 'rb') as fp:
            data = fp.read()
        datas.append(data)

    return datas


def get_eflash_loader(xtal):
    xtal_suffix = str(xtal).lower().replace('.', 'p').replace('M', 'm').replace('RC', 'rc')
    return 'eflash_loader_' + xtal_suffix + '.bin'


def eflash_loader_thread(cmd, callback=None, create_img_callback=None):
    global eflash_loader_bin
    global eflash_loader_t
    ret = None
    try:
        try:
            ret = eflash_loader_t.efuse_flash_loader(cmd.split(' '), None, eflash_loader_bin, callback, None, create_img_callback)
        except Exception as err:
            try:
                traceback.print_exc(limit=5, file=(sys.stdout))
                ret = str(err)
            finally:
                err = None
                del err

    finally:
        return ret


def img_loader_thread(comnum, sh_baudrate, wk_baudrate, file1, file2, callback=None):
    ret = None
    try:
        try:
            img_load_t = bflb_img_loader.BFLB_Img_Loader(chip_type)
            ret = img_load_t.img_load_process(comnum, sh_baudrate, wk_baudrate, file1, file2, callback, True, 50, 100, False, 50, 3)
            img_load_t.close_if()
        except Exception as err:
            try:
                traceback.print_exc(limit=5, file=(sys.stdout))
                ret = str(err)
            finally:
                err = None
                del err

    finally:
        return ret


def log_read_thread():
    try:
        ret, data = eflash_loader_t.log_read_process()
        eflash_loader_t.close_if()
        return (
         ret, data)
    except Exception as err:
        try:
            traceback.print_exc(limit=10, file=(sys.stdout))
            ret = str(err)
            return (
             False, ret)
        finally:
            err = None
            del err


def read_efuse_thread(values, callback=None):
    global eflash_loader_bin
    cmd = ''
    ret = None
    try:
        try:
            cfg = bflb_utils.BFConfigParser()
            if os.path.isfile(eflash_loader_cfg_tmp) == False:
                shutil.copy(eflash_loader_cfg, eflash_loader_cfg_tmp)
            cfg.read(eflash_loader_cfg_tmp)
            bflb_utils.Update_Cfg(cfg, 'LOAD_CFG', 'interface', values['dl_device'].lower())
            bflb_utils.Update_Cfg(cfg, 'LOAD_CFG', 'device', values['dl_comport'])
            bflb_utils.Update_Cfg(cfg, 'LOAD_CFG', 'speed_uart_load', values['dl_comspeed'])
            bflb_utils.Update_Cfg(cfg, 'LOAD_CFG', 'speed_jlink', values['dl_jlinkspeed'])
            if 'dl_verify' in values.keys():
                if values['dl_verify'] == 'True':
                    bflb_utils.Update_Cfg(cfg, 'LOAD_CFG', 'verify', '1')
                else:
                    bflb_utils.Update_Cfg(cfg, 'LOAD_CFG', 'verify', '0')
            cfg.write(eflash_loader_cfg_tmp, 'w+')
            bflb_utils.printf('Save as efuse.bin')
            cmd = '-r -t efuse --start=0 --end=255 --file=efuse.bin -c %s' % eflash_loader_cfg_tmp
            eflash_loader_bin = os.path.join(app_path, chip_name, 'eflash_loader/' + get_eflash_loader(values['dl_xtal']))
            ret = eflash_loader_thread(cmd, callback)
        except Exception as e:
            try:
                ret = str(e)
            finally:
                e = None
                del e

    finally:
        return ret


def read_flash_thread(values, callback=None):
    global eflash_loader_bin
    cmd = ''
    start = ''
    end = ''
    ret = None
    try:
        try:
            cfg = bflb_utils.BFConfigParser()
            if os.path.isfile(eflash_loader_cfg_tmp) == False:
                shutil.copy(eflash_loader_cfg, eflash_loader_cfg_tmp)
            cfg.read(eflash_loader_cfg_tmp)
            bflb_utils.Update_Cfg(cfg, 'LOAD_CFG', 'interface', values['dl_device'].lower())
            bflb_utils.Update_Cfg(cfg, 'LOAD_CFG', 'device', values['dl_comport'])
            bflb_utils.Update_Cfg(cfg, 'LOAD_CFG', 'speed_uart_load', values['dl_comspeed'])
            bflb_utils.Update_Cfg(cfg, 'LOAD_CFG', 'speed_jlink', values['dl_jlinkspeed'])
            if 'dl_verify' in values.keys():
                if values['dl_verify'] == 'True':
                    bflb_utils.Update_Cfg(cfg, 'LOAD_CFG', 'verify', '1')
                else:
                    bflb_utils.Update_Cfg(cfg, 'LOAD_CFG', 'verify', '0')
            cfg.write(eflash_loader_cfg_tmp, 'w+')
            if verify_hex_num(values['start_addr'][2:]) == True:
                if values['start_addr'][0:2] == '0x':
                    start = values['start_addr'][2:]
                else:
                    bflb_utils.printf('Error, start_addr is HEX data, must begin with 0x')
                    ret = 'start_addr is HEX data, must begin with 0x'
            else:
                bflb_utils.printf('Error, Please check start_addr hex data')
                ret = 'Please check start_addr hex data'
            if verify_hex_num(values['end_addr'][2:]) == True:
                if values['end_addr'][0:2] == '0x':
                    end = values['end_addr'][2:]
                else:
                    bflb_utils.printf('Error, end_addr is HEX data, must begin with 0x')
                    ret = 'end_addr is HEX data, must begin with 0x'
            else:
                bflb_utils.printf('Error, Please check end_addr hex data')
                ret = 'Please check end_addr hex data'
            if int(start, 16) >= int(end, 16):
                bflb_utils.printf('Error, Start addr must less than end addr')
                ret = 'Start addr must less than end addr'
            if ret != None:
                return ret
            bflb_utils.printf('Save as flash.bin')
            cmd = '-r -t flash --start=' + start + ' --end=' + end + ' --file=flash.bin -c %s' % eflash_loader_cfg_tmp
            eflash_loader_bin = os.path.join(app_path, chip_name, 'eflash_loader/' + get_eflash_loader(values['dl_xtal']))
            ret = eflash_loader_thread(cmd, callback)
        except Exception as e:
            try:
                ret = str(e)
            finally:
                e = None
                del e

    finally:
        return ret


def erase_flash_thread(values, callback=None):
    global eflash_loader_bin
    cmd = ''
    start = ''
    end = ''
    ret = None
    try:
        try:
            cfg = bflb_utils.BFConfigParser()
            if os.path.isfile(eflash_loader_cfg_tmp) == False:
                shutil.copy(eflash_loader_cfg, eflash_loader_cfg_tmp)
            cfg.read(eflash_loader_cfg_tmp)
            bflb_utils.Update_Cfg(cfg, 'LOAD_CFG', 'interface', values['dl_device'].lower())
            bflb_utils.Update_Cfg(cfg, 'LOAD_CFG', 'device', values['dl_comport'])
            bflb_utils.Update_Cfg(cfg, 'LOAD_CFG', 'speed_uart_load', values['dl_comspeed'])
            bflb_utils.Update_Cfg(cfg, 'LOAD_CFG', 'speed_jlink', values['dl_jlinkspeed'])
            if 'dl_verify' in values.keys():
                if values['dl_verify'] == 'True':
                    bflb_utils.Update_Cfg(cfg, 'LOAD_CFG', 'verify', '1')
                else:
                    bflb_utils.Update_Cfg(cfg, 'LOAD_CFG', 'verify', '0')
            cfg.write(eflash_loader_cfg_tmp, 'w+')
            if verify_hex_num(values['start_addr'][2:]) == True:
                if values['start_addr'][0:2] == '0x':
                    start = values['start_addr'][2:]
                else:
                    bflb_utils.printf('Error, start_addr is HEX data, must begin with 0x')
                    ret = 'start_addr is HEX data, must begin with 0x'
            else:
                bflb_utils.printf('Error, Please check start_addr hex data')
                ret = 'Please check start_addr hex data'
            if verify_hex_num(values['end_addr'][2:]) == True:
                if values['end_addr'][0:2] == '0x':
                    end = values['end_addr'][2:]
                else:
                    bflb_utils.printf('Error, end_addr is HEX data, must begin with 0x')
                    ret = 'end_addr is HEX data, must begin with 0x'
            else:
                bflb_utils.printf('Error, Please check end_addr hex data')
                ret = 'Please check end_addr hex data'
            if int(start, 16) >= int(end, 16):
                if values['whole_chip'] == False:
                    bflb_utils.printf('Error, Start addr must less than end addr')
                    ret = 'Start addr must less than end addr'
            if ret != None:
                return ret
            if values['whole_chip'] == True:
                cmd = '-e -t flash --end=0 -c %s' % eflash_loader_cfg_tmp
            else:
                cmd = '-e -t flash --start=' + start + ' --end=' + end + ' -c %s' % eflash_loader_cfg_tmp
            eflash_loader_bin = os.path.join(app_path, chip_name, 'eflash_loader/' + get_eflash_loader(values['dl_xtal']))
            ret = eflash_loader_thread(cmd, callback)
        except Exception as e:
            try:
                ret = str(e)
            finally:
                e = None
                del e

    finally:
        return ret


def create_img(chipname, chiptype, values):
    gol.GlobalVar.values = values
    error = True
    try:
        try:
            if values['img_file'] == '':
                if values['dl_chiperase'] == 'True':
                    bflb_utils.printf('flash chiperase operation')
                    return True
                error = 'Please select image file'
                bflb_utils.printf(error)
                bflb_utils.set_error_code('0061')
                return bflb_utils.errorcode_msg()
            if values['img_addr'] == '' or (values['img_addr'] == '0x'):
                error = 'Please set image address'
                bflb_utils.printf(error)
                bflb_utils.set_error_code('0062')
                return bflb_utils.errorcode_msg()
            if values['bootinfo_addr'] == '' or (values['bootinfo_addr'] == '0x'):
                error = 'Please set boot info address'
                bflb_utils.printf(error)
                bflb_utils.set_error_code('0063')
                return bflb_utils.errorcode_msg()
            if 'encrypt_type' in values.keys():
                if 'encrypt_key' in values.keys():
                    if values['encrypt_type'] != 'None':
                        if values['encrypt_key'] == '':
                            error = 'Please set AES key'
                            bflb_utils.printf(error)
                            bflb_utils.set_error_code('0064')
                            return bflb_utils.errorcode_msg()
                if 'aes_iv' in values.keys():
                    if values['encrypt_type'] != 'None':
                        if values['aes_iv'] == '':
                            error = 'Please set AES IV'
                            bflb_utils.printf(error)
                            bflb_utils.set_error_code('0065')
                            return bflb_utils.errorcode_msg()
            if 'sign_type' in values.keys():
                if 'public_key_cfg' in values.keys():
                    if values['sign_type'] != 'None':
                        if values['public_key_cfg'] == '':
                            error = 'Please set public key'
                            bflb_utils.printf(error)
                            bflb_utils.set_error_code('0066')
                            return bflb_utils.errorcode_msg()
                if 'private_key_cfg' in values.keys():
                    if values['sign_type'] != 'None':
                        if values['private_key_cfg'] == '':
                            error = 'Please set private key'
                            bflb_utils.printf(error)
                            bflb_utils.set_error_code('0067')
                            return bflb_utils.errorcode_msg()
            if values['img_type'] == 'SingleCPU':
                section = 'BOOTHEADER_CFG'
                bh_cfg_file = img_create_path + '/bootheader_cfg.ini'
                bh_file = img_create_path + '/bootheader.bin'
                efuse_file = img_create_path + '/efusedata.bin'
                efuse_mask_file = img_create_path + '/efusedata_mask.bin'
                bootinfo_file = img_create_path + '/bootinfo.bin'
                img_output_file = img_create_path + '/img.bin'
                img_create_section = 'Img_Cfg'
            elif values['img_type'] == 'BLSP_Boot2':
                if chiptype == 'bl60x':
                    section = 'BOOTHEADER_CPU0_CFG'
                else:
                    section = 'BOOTHEADER_CFG'
                bh_cfg_file = img_create_path + '/bootheader_cfg_blsp_boot2.ini'
                bh_file = img_create_path + '/bootheader_blsp_boot2.bin'
                efuse_file = img_create_path + '/efusedata_blsp_boot2.bin'
                efuse_mask_file = img_create_path + '/efusedata_mask_blsp_boot2.bin'
                bootinfo_file = img_create_path + '/bootinfo_blsp_boot2.bin'
                img_output_file = img_create_path + '/img_blsp_boot2.bin'
                if chiptype == 'bl60x':
                    img_create_section = 'Img_CPU0_Cfg'
                else:
                    img_create_section = 'Img_Cfg'
            elif values['img_type'] == 'CPU0':
                section = 'BOOTHEADER_CPU0_CFG'
                bh_cfg_file = img_create_path + '/bootheader_cfg_cpu0.ini'
                bh_file = img_create_path + '/bootheader_cpu0.bin'
                efuse_file = img_create_path + '/efusedata_cpu0.bin'
                efuse_mask_file = img_create_path + '/efusedata_mask_cpu0.bin'
                bootinfo_file = img_create_path + '/bootinfo_cpu0.bin'
                img_output_file = img_create_path + '/img_cpu0.bin'
                img_create_section = 'Img_CPU0_Cfg'
            elif values['img_type'] == 'CPU1':
                section = 'BOOTHEADER_CPU1_CFG'
                bh_cfg_file = img_create_path + '/bootheader_cfg_cpu1.ini'
                bh_file = img_create_path + '/bootheader_cpu1.bin'
                efuse_file = img_create_path + '/efusedata_cpu1.bin'
                efuse_mask_file = img_create_path + '/efusedata_mask_cpu1.bin'
                bootinfo_file = img_create_path + '/bootinfo_cpu1.bin'
                img_output_file = img_create_path + '/img_cpu1.bin'
                img_create_section = 'Img_CPU1_Cfg'
            elif values['img_type'] == 'RAW':
                bflb_utils.printf('raw data do not need create.')
                bflb_utils.set_error_code('0068')
                return bflb_utils.errorcode_msg()
            if values['img_type'] == 'CPU0' or values['img_type'] == 'CPU1':
                bflb_utils.copyfile(efuse_bh_default_cfg_dp, bh_cfg_file)
                shutil.copy(img_create_cfg_dp_org, img_create_cfg)
            elif values['img_type'] == 'BLSP_Boot2':
                if chiptype == 'bl60x':
                    bflb_utils.copyfile(efuse_bh_default_cfg_dp, bh_cfg_file)
                    shutil.copy(img_create_cfg_dp_org, img_create_cfg)
                else:
                    bflb_utils.copyfile(efuse_bh_default_cfg, bh_cfg_file)
                    shutil.copy(img_create_cfg_org, img_create_cfg)
            else:
                bflb_utils.copyfile(efuse_bh_default_cfg, bh_cfg_file)
                shutil.copy(img_create_cfg_org, img_create_cfg)
            if os.path.exists(eflash_loader_cfg_tmp):
                cfg1 = bflb_utils.BFConfigParser()
                cfg1.read(eflash_loader_cfg_tmp)
                if cfg1.has_option('FLASH_CFG', 'flash_id'):
                    flash_id = cfg1.get('FLASH_CFG', 'flash_id')
                    if bflb_flash_select.update_flash_cfg(chipname, chiptype, flash_id, bh_cfg_file, False, section) == False:
                        error = 'flash_id:' + flash_id + ' do not support'
                        bflb_utils.printf(error)
                        bflb_utils.set_error_code('0069')
                        return bflb_utils.errorcode_msg()
                else:
                    error = 'Do not find flash_id in eflash_loader_cfg.ini'
                    bflb_utils.printf(error)
                    bflb_utils.set_error_code('0070')
                    return bflb_utils.errorcode_msg()
            else:
                bflb_utils.printf('Config file not found')
                bflb_utils.set_error_code('000B')
                return bflb_utils.errorcode_msg()
            cfg = bflb_utils.BFConfigParser()
            cfg.read(bh_cfg_file)
            for itrs in cfg.sections():
                bflb_utils.printf(itrs)
                if itrs != section:
                    if itrs != 'EFUSE_CFG':
                        cfg.delete_section(itrs)

            cfg.write(bh_cfg_file, 'w+')
            cfg = bflb_utils.BFConfigParser()
            cfg.read(bh_cfg_file)
            if chiptype == 'bl702':
                bflb_utils.Update_Cfg(cfg, section, 'boot2_enable', '0')
            if 'xtal_type' in values.keys():
                bflb_utils.Update_Cfg(cfg, section, 'xtal_type', xtal_type_.index(values['xtal_type']))
            if 'pll_clk' in values.keys():
                bflb_utils.Update_Cfg(cfg, section, 'pll_clk', pll_clk.index(values['pll_clk']))
            tmp = values['flash_clk_type']
            if tmp != 'Manual':
                bflb_utils.Update_Cfg(cfg, section, 'flash_clk_type', flash_clk_type.index(values['flash_clk_type']))
                bflb_utils.Update_Cfg(cfg, section, 'flash_clk_div', '0')
                if 'xtal_type' in values.keys():
                    if tmp == 'XTAL' or tmp == 'XCLK' or tmp == '48M' or tmp == '57P6M' or values['xtal_type'] == 'XTAL_None':
                        bflb_utils.Update_Cfg(cfg, section, 'sfctrl_clk_delay', '1')
                        bflb_utils.Update_Cfg(cfg, section, 'sfctrl_clk_invert', '0x01')
                    else:
                        bflb_utils.Update_Cfg(cfg, section, 'sfctrl_clk_delay', '1')
                        bflb_utils.Update_Cfg(cfg, section, 'sfctrl_clk_invert', '0x03')
                elif tmp == 'XTAL' or tmp == 'XCLK' or tmp == '48M' or tmp == '57P6M':
                    bflb_utils.Update_Cfg(cfg, section, 'sfctrl_clk_delay', '1')
                    bflb_utils.Update_Cfg(cfg, section, 'sfctrl_clk_invert', '0x01')
                else:
                    bflb_utils.Update_Cfg(cfg, section, 'sfctrl_clk_delay', '1')
                    bflb_utils.Update_Cfg(cfg, section, 'sfctrl_clk_invert', '0x03')
            if 'sign_type' in values.keys():
                bflb_utils.Update_Cfg(cfg, section, 'sign', sign_type.index(values['sign_type']))
            if 'encrypt_type' in values.keys():
                tmp = encrypt_type.index(values['encrypt_type'])
                bflb_utils.Update_Cfg(cfg, section, 'encrypt_type', tmp)
                if tmp == 1:
                    if len(values['encrypt_key']) != 32:
                        error = 'Key length error'
                        bflb_utils.printf(error)
                        bflb_utils.set_error_code('0071')
                        return bflb_utils.errorcode_msg()
                if tmp == 2:
                    if len(values['encrypt_key']) != 64:
                        error = 'Key length error'
                        bflb_utils.printf(error)
                        bflb_utils.set_error_code('0071')
                        return bflb_utils.errorcode_msg()
                if tmp == 3:
                    if len(values['encrypt_key']) != 48:
                        error = 'Key length error'
                        bflb_utils.printf(error)
                        bflb_utils.set_error_code('0071')
                        return bflb_utils.errorcode_msg()
                if tmp != 0:
                    if len(values['aes_iv']) != 32:
                        error = 'AES IV length error'
                        bflb_utils.printf(error)
                        bflb_utils.set_error_code('0072')
                        return bflb_utils.errorcode_msg()
                    if values['aes_iv'].endswith('00000000') == False:
                        error = 'AES IV should endswith 4 bytes zero'
                        bflb_utils.printf(error)
                        bflb_utils.set_error_code('0073')
                        return bflb_utils.errorcode_msg()
            if 'key_sel' in values.keys():
                bflb_utils.Update_Cfg(cfg, section, 'key_sel', key_sel.index(values['key_sel']))
            if 'cache_way_disable' in values.keys():
                bflb_utils.Update_Cfg(cfg, section, 'cache_way_disable', (1 << cache_way_disable.index(values['cache_way_disable'])) - 1)
            if 'crc_ignore' in values.keys():
                bflb_utils.Update_Cfg(cfg, section, 'crc_ignore', crc_ignore.index(values['crc_ignore']))
            if 'hash_ignore' in values.keys():
                bflb_utils.Update_Cfg(cfg, section, 'hash_ignore', hash_ignore.index(values['hash_ignore']))
            if values['img_type'] == 'CPU0':
                bflb_utils.Update_Cfg(cfg, section, 'halt_cpu1', '0')
            elif chiptype != 'bl602':
                bflb_utils.Update_Cfg(cfg, section, 'halt_cpu1', '1')
            bflb_utils.Update_Cfg(cfg, section, 'img_len', '0x100')
            bflb_utils.Update_Cfg(cfg, section, 'img_start', values['img_addr'])
            cfg.write(bh_cfg_file, 'w+')
            if values['img_type'] == 'CPU1':
                bflb_efuse_boothd_create.bootheader_create_process(chipname, chiptype, bh_cfg_file, img_create_path + '/bootheader_dummy.bin', bh_file)
            elif values['boot_src'] == 'UART/SDIO' or values['boot_src'] == 'UART/USB':
                bflb_efuse_boothd_create.bootheader_create_process(chipname, chiptype, bh_cfg_file, bh_file, img_create_path + '/bootheader_dummy.bin', True)
            else:
                bflb_efuse_boothd_create.bootheader_create_process(chipname, chiptype, bh_cfg_file, bh_file, img_create_path + '/bootheader_dummy.bin')
            efuse_data = bytearray(256)
            fp = open(efuse_file, 'wb+')
            fp.write(efuse_data)
            fp.close()
            fp = open(efuse_mask_file, 'wb+')
            fp.write(efuse_data)
            fp.close()
            cfg = bflb_utils.BFConfigParser()
            cfg.read(img_create_cfg)
            bflb_utils.Update_Cfg(cfg, img_create_section, 'boot_header_file', bh_file)
            bflb_utils.Update_Cfg(cfg, img_create_section, 'efuse_file', efuse_file)
            bflb_utils.Update_Cfg(cfg, img_create_section, 'efuse_mask_file', efuse_mask_file)
            segheader = bytearray(12)
            segheader[0:4] = bflb_utils.int_to_4bytearray_l(int(values['img_addr'].replace('0x', ''), 16))
            segfp = open(img_create_path + '/segheader_tmp.bin', 'wb+')
            segfp.write(segheader)
            segfp.close()
            bflb_utils.Update_Cfg(cfg, img_create_section, 'segheader_file', img_create_path + '/segheader_tmp.bin')
            bflb_utils.Update_Cfg(cfg, img_create_section, 'segdata_file', values['img_file'])
            if 'encrypt_key' in values.keys():
                bflb_utils.Update_Cfg(cfg, img_create_section, 'aes_key_org', values['encrypt_key'])
            if 'aes_iv' in values.keys():
                bflb_utils.Update_Cfg(cfg, img_create_section, 'aes_iv', values['aes_iv'])
            if 'public_key_cfg' in values.keys():
                bflb_utils.Update_Cfg(cfg, img_create_section, 'publickey_file', values['public_key_cfg'])
            if 'private_key_cfg' in values.keys():
                bflb_utils.Update_Cfg(cfg, img_create_section, 'privatekey_file_uecc', values['private_key_cfg'])
            bflb_utils.Update_Cfg(cfg, img_create_section, 'bootinfo_file', bootinfo_file)
            bflb_utils.Update_Cfg(cfg, img_create_section, 'img_file', img_output_file)
            bflb_utils.Update_Cfg(cfg, img_create_section, 'whole_img_file', img_output_file.replace('.bin', '_if.bin'))
            cfg.write(img_create_cfg, 'w+')
            if values['boot_src'] == 'Flash':
                if values['img_type'] == 'SingleCPU':
                    bflb_img_create.img_create('-i media -s none'.split(' '), chipname, chiptype, img_create_path, img_create_cfg)
                elif values['img_type'] == 'BLSP_Boot2':
                    if chiptype == 'bl60x':
                        bflb_img_create.img_create('-i media -c cpu0 -s none'.split(' '), chipname, chiptype, img_create_path, img_create_cfg)
                    else:
                        bflb_img_create.img_create('-i media -s none'.split(' '), chipname, chiptype, img_create_path, img_create_cfg)
                elif values['img_type'] == 'CPU0':
                    bflb_img_create.img_create('-i media -c cpu0 -s none'.split(' '), chipname, chiptype, img_create_path, img_create_cfg)
                elif values['img_type'] == 'CPU1':
                    bflb_img_create.img_create('-i media -c cpu1 -s none'.split(' '), chipname, chiptype, img_create_path, img_create_cfg)
                    bflb_utils.set_error_code('0074')
                    return bflb_utils.errorcode_msg()
            elif values['img_type'] == 'SingleCPU':
                bflb_img_create.img_create('-i if -s none'.split(' '), chipname, chiptype, img_create_path, img_create_cfg)
            elif values['img_type'] == 'CPU0':
                bflb_img_create.img_create('-i if -c cpu0 -s none'.split(' '), chipname, chiptype, img_create_path, img_create_cfg)
            elif values['img_type'] == 'CPU1':
                bflb_img_create.img_create('-i if -c cpu1 -s none'.split(' '), chipname, chiptype, img_create_path, img_create_cfg)
            os.remove(img_create_path + '/segheader_tmp.bin')
            if os.path.exists(img_create_path + '/bootheader_dummy.bin'):
                os.remove(img_create_path + '/bootheader_dummy.bin')
            if os.path.exists(img_create_path + '/flash_para.bin'):
                os.remove(img_create_path + '/flash_para.bin')
            return True
        except Exception as e:
            try:
                error = str(e)
                bflb_utils.printf(error)
                bflb_utils.set_error_code('0075')
                traceback.print_exc(limit=5, file=(sys.stdout))
            finally:
                e = None
                del e

    finally:
        return error


def bind_img(values):
    error = None
    try:
        if values['img_type'] == 'SingleCPU':
            bootinfo_file = img_create_path + '/bootinfo.bin'
            img_file = img_create_path + '/img.bin'
            img_output_file = img_create_path + '/wholeimg_flash.bin'
        elif values['img_type'] == 'BLSP_Boot2':
            bootinfo_file = img_create_path + '/bootinfo_blsp_boot2.bin'
            img_file = img_create_path + '/img_blsp_boot2.bin'
            img_output_file = img_create_path + '/wholeimg_blsp_boot2_flash.bin'
        elif values['img_type'] == 'CPU0':
            bootinfo_file = img_create_path + '/bootinfo_cpu0.bin'
            img_file = img_create_path + '/img_cpu0.bin'
            img_output_file = img_create_path + '/wholeimg_cpu0_flash.bin'
        elif values['img_type'] == 'CPU1':
            bootinfo_file = img_create_path + '/bootinfo_cpu1.bin'
            img_file = img_create_path + '/img_cpu1.bin'
            img_output_file = img_create_path + '/wholeimg_cpu1_flash.bin'
        if values['img_type'] == 'SingleCPU':
            dummy_data = bytearray(8192)
        else:
            dummy_data = bytearray(4096)
        for i in range(len(dummy_data)):
            dummy_data[i] = 255

        fp = open(bootinfo_file, 'rb')
        data0 = fp.read() + bytearray(0)
        fp.close()
        fp = open(img_file, 'rb')
        data1 = fp.read() + bytearray(0)
        fp.close()
        fp = open(img_output_file, 'wb+')
        fp.write(data0 + dummy_data[0:len(dummy_data) - len(data0)] + data1)
        fp.close()
        bflb_utils.printf('Output:', img_output_file)
    except Exception as e:
        try:
            bflb_utils.printf('烧写执行出错：', e)
            error = str(e)
        finally:
            e = None
            del e

    return error


def create_img_callback():
    error = None
    values = gol.GlobalVar.values
    error = create_img(chip_name, chip_type, values)
    if error:
        bflb_utils.printf(error)
    return error


def program_img_thread(values, callback=None):
    global eflash_loader_bin
    bflb_utils.printf('========= eflash loader config =========')
    cmd = ''
    ret = None
    try:
        try:
            if values['img_file'] == '' and values['dl_chiperase'] == 'True':
                bflb_utils.printf('Erase Flash')
                cfg = bflb_utils.BFConfigParser()
                if os.path.isfile(eflash_loader_cfg_tmp) == False:
                    shutil.copy(eflash_loader_cfg, eflash_loader_cfg_tmp)
                cfg.read(eflash_loader_cfg_tmp)
                bflb_utils.Update_Cfg(cfg, 'LOAD_CFG', 'interface', values['dl_device'].lower())
                bflb_utils.Update_Cfg(cfg, 'LOAD_CFG', 'device', values['dl_comport'])
                bflb_utils.Update_Cfg(cfg, 'LOAD_CFG', 'speed_uart_load', values['dl_comspeed'])
                bflb_utils.Update_Cfg(cfg, 'LOAD_CFG', 'speed_jlink', values['dl_jlinkspeed'])
                bflb_utils.Update_Cfg(cfg, 'LOAD_CFG', 'erase', '2')
                if 'dl_verify' in values.keys():
                    if values['dl_verify'] == 'True':
                        bflb_utils.Update_Cfg(cfg, 'LOAD_CFG', 'verify', '1')
                    else:
                        bflb_utils.Update_Cfg(cfg, 'LOAD_CFG', 'verify', '0')
                if cfg.has_option('LOAD_CFG', 'xtal_type'):
                    bflb_utils.Update_Cfg(cfg, 'LOAD_CFG', 'xtal_type', xtal_type_.index(values['xtal_type']))
                cfg.write('eflash_loader_tmp.ini', 'w+')
                cmd = '-e --end=0 -c eflash_loader_tmp.ini'
            else:
                if values['img_type'] == 'SingleCPU':
                    bootinfo_file = img_create_path + '/bootinfo.bin'
                    img_output_file = img_create_path + '/img.bin'
                    whole_img_output_file = img_create_path + '/whole_img.bin'
                elif values['img_type'] == 'BLSP_Boot2':
                    bootinfo_file = img_create_path + '/bootinfo_blsp_boot2.bin'
                    img_output_file = img_create_path + '/img_blsp_boot2.bin'
                    whole_img_output_file = img_create_path + '/whole_img_blsp_boot2.bin'
                elif values['img_type'] == 'CPU0':
                    bootinfo_file = img_create_path + '/bootinfo_cpu0.bin'
                    img_output_file = img_create_path + '/img_cpu0.bin'
                    whole_img_output_file = img_create_path + '/whole_img_cpu0.bin'
                elif values['img_type'] == 'CPU1':
                    bootinfo_file = img_create_path + '/bootinfo_cpu1.bin'
                    img_output_file = img_create_path + '/img_cpu1.bin'
                    whole_img_output_file = img_create_path + '/whole_img_cpu1.bin'
                if values['boot_src'] == 'UART/SDIO' or (values['boot_src'] == 'UART/USB'):
                    cfg = bflb_utils.BFConfigParser()
                    if os.path.isfile(eflash_loader_cfg_tmp) == False:
                        shutil.copy(eflash_loader_cfg, eflash_loader_cfg_tmp)
                    cfg.read(eflash_loader_cfg_tmp)
                    boot_speed = int(cfg.get('LOAD_CFG', 'speed_uart_boot'))
                    if values['img_type'] == 'RAW':
                        ret = img_loader_thread(values['dl_comport'], boot_speed, boot_speed, values['img_file'], None, callback)
                    else:
                        ret = img_loader_thread(values['dl_comport'], boot_speed, boot_speed, img_output_file.replace('.bin', '_if.bin'), None, callback)
                    if ret == False:
                        ret = 'Img load fail'
                    return ret
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
                eflash_loader_bin = os.path.join(app_path, chip_name, 'eflash_loader/' + get_eflash_loader(values['dl_xtal']))
                if cfg.has_option('LOAD_CFG', 'xtal_type'):
                    bflb_utils.Update_Cfg(cfg, 'LOAD_CFG', 'xtal_type', xtal_type_.index(values['xtal_type']))
                if values['img_type'] == 'RAW':
                    bflb_utils.Update_Cfg(cfg, 'FLASH_CFG', 'file', values['img_file'])
                    bflb_utils.Update_Cfg(cfg, 'FLASH_CFG', 'address', values['img_addr'].replace('0x', ''))
                else:
                    bind_bootinfo = True
                    if bind_bootinfo == True:
                        img_addr = int(values['img_addr'].replace('0x', ''), 16)
                        whole_img_len = img_addr + os.path.getsize(img_output_file)
                        whole_img_data = bl_create_flash_default_data(whole_img_len)
                        filedata = bl_get_file_data([bootinfo_file])[0]
                        whole_img_data[0:len(filedata)] = filedata
                        filedata = bl_get_file_data([img_output_file])[0]
                        whole_img_data[img_addr:img_addr + len(filedata)] = filedata
                        fp = open(whole_img_output_file, 'wb+')
                        fp.write(whole_img_data)
                        fp.close()
                        bflb_utils.Update_Cfg(cfg, 'FLASH_CFG', 'file', whole_img_output_file)
                        bflb_utils.Update_Cfg(cfg, 'FLASH_CFG', 'address', values['bootinfo_addr'].replace('0x', ''))
                    else:
                        bflb_utils.Update_Cfg(cfg, 'FLASH_CFG', 'file', bootinfo_file + ' ' + img_output_file)
                        bflb_utils.Update_Cfg(cfg, 'FLASH_CFG', 'address', values['bootinfo_addr'].replace('0x', '') + ' ' + values['img_addr'].replace('0x', ''))
                cfg.write(eflash_loader_cfg_tmp, 'w+')
                if values['dl_device'].lower() == 'uart':
                    cmd = '-p -t flash -d %s -c %s' % (values['dl_comport'], eflash_loader_cfg_tmp)
                else:
                    cmd = '-p -t flash -c %s' % eflash_loader_cfg_tmp
            ret = eflash_loader_thread(cmd, callback, create_img_callback)
        except Exception as e:
            try:
                ret = str(e)
                traceback.print_exc(limit=5, file=(sys.stdout))
            finally:
                e = None
                del e

    finally:
        return ret
# okay decompiling core.bflb_img_tool.pyc
