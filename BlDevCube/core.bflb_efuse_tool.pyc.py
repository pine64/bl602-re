# decompyle3 version 3.3.2
# Python bytecode 3.7 (3394)
# Decompiled from: Python 3.8.5 (default, Jul 28 2020, 12:59:40) 
# [GCC 9.3.0]
# Embedded file name: core\bflb_efuse_tool.py
import os, sys, shutil
from lib import bflb_eflash_loader
from lib import bflb_efuse_boothd_create
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
ef_flash_psram_info_list = [
 'NoMemory', '1M Flash', '2M Flash', 'PSRAM']
ef_pack_info_list = ['QFN40', 'QFN56']
sdio_pin_sel_list = ['GPIO16-21', 'GPIO0-5']
ef_wifi_mcu_info_list = ['WiFi', 'MCU']
ef_core_info_list = ['DualCore', 'SingleCore']
external_flash_list = ['Embedded Swap', 'Embedded NoSwap', 'GPIO0-5', 'GPIO22-23,37-40']
ef_dbg_mode_list = ['Open', 'Password', 'Close']
ef_sf_aes_mode_list = ['None', 'AES128', 'AES192', 'AES256']
xtal_type_list = ['XTAL_None', 'XTAL_32M', 'XTAL_38.4M', 'XTAL_40M', 'XTAL_26M', 'XTAL_52M']
pll_clk_list = ['50M', '120M', '160M', '192M']
vddio_18_user_ctrl_list = ['Default', '1.8V(VDDCPU)', '1.8V(VDDIO)', '3.3V(VDDCPU)']

def get_eflash_loader(xtal):
    xtal_suffix = str(xtal).lower().replace('.', 'p').replace('M', 'm').replace('RC', 'rc')
    return 'eflash_loader_' + xtal_suffix + '.bin'


def create_img(values):
    fp = open(efuse_cfg, 'w+')
    fp.write('[EFUSE_CFG]\n')
    fp.write('ef_flash_psram_info = ' + str(ef_flash_psram_info_list.index(values['ef_flash_psram_info'])) + '\n')
    fp.write('ef_pack_info = ' + str(ef_pack_info_list.index(values['ef_pack_info'])) + '\n')
    fp.write('sdio_pin_sel = ' + str(sdio_pin_sel_list.index(values['sdio_pin_sel'])) + '\n')
    fp.write('ef_wifi_mcu_info = ' + str(ef_wifi_mcu_info_list.index(values['ef_wifi_mcu_info'])) + '\n')
    fp.write('ef_core_info = ' + str(ef_core_info_list.index(values['ef_core_info'])) + '\n')
    fp.write('external_flash = ' + str(external_flash_list.index(values['external_flash'])) + '\n')
    if values['ef_dbg_mode'] == 'Open':
        fp.write('ef_dbg_mode = 0\n')
    elif values['ef_dbg_mode'] == 'Password':
        fp.write('ef_dbg_mode = 3\n')
    if values['ef_dbg_mode'] == 'Close':
        fp.write('ef_dbg_mode = 15\n')
    fp.write('ef_sf_aes_mode = ' + str(ef_sf_aes_mode_list.index(values['ef_sf_aes_mode'])) + '\n')
    fp.write('xtal_type = ' + str(xtal_type_list.index(values['xtal_type'])) + '\n')
    fp.write('pll_clk = ' + str(pll_clk_list.index(values['pll_clk'])) + '\n')
    if values['pll_clk'] == '50M':
        fp.write('hclk_div = 0\n')
        fp.write('bclk_div = 0\n')
    else:
        fp.write('hclk_div = 0\n')
        fp.write('bclk_div = 1\n')
    if values['vddio_18_user_ctrl'] == 'Default':
        fp.write('vddio_18_user_ctrl = 0\n')
        fp.write('vddio_18_sw1 = 0\n')
        fp.write('vddio_18_sw2 = 0\n')
        fp.write('vddio_18_sw3 = 0\n')
        fp.write('vddio_18_bypass = 0\n')
    if values['vddio_18_user_ctrl'] == '1.8V(VDDCPU)':
        fp.write('vddio_18_user_ctrl = 1\n')
        fp.write('vddio_18_sw1 = 0\n')
        fp.write('vddio_18_sw2 = 1\n')
        fp.write('vddio_18_sw3 = 0\n')
        fp.write('vddio_18_bypass = 0\n')
    if values['vddio_18_user_ctrl'] == '1.8V(VDDIO)':
        fp.write('vddio_18_user_ctrl = 1\n')
        fp.write('vddio_18_sw1 = 1\n')
        fp.write('vddio_18_sw2 = 0\n')
        fp.write('vddio_18_sw3 = 0\n')
        fp.write('vddio_18_bypass = 0\n')
    if values['vddio_18_user_ctrl'] == '3.3V(VDDCPU)':
        fp.write('vddio_18_user_ctrl = 1\n')
        fp.write('vddio_18_sw1 = 0\n')
        fp.write('vddio_18_sw2 = 1\n')
        fp.write('vddio_18_sw3 = 0\n')
        fp.write('vddio_18_bypass = 1\n')
    if values['ef_dbg_jtag_dis'] == True:
        fp.write('ef_dbg_jtag_dis = 3\n')
    else:
        fp.write('ef_dbg_jtag_dis = 0\n')
    if values['ef_sw_sf_dis'] == True:
        fp.write('ef_sw_sf_dis = 1\n')
    else:
        fp.write('ef_sw_sf_dis = 0\n')
    if values['ef_sw_cam_dis'] == True:
        fp.write('ef_sw_cam_dis = 1\n')
    else:
        fp.write('ef_sw_cam_dis = 0\n')
    if values['ef_sboot_en'] == True:
        fp.write('ef_sboot_en = 15\n')
    else:
        fp.write('ef_sboot_en = 0\n')
    if values['ef_sboot_sign_mode'] == True:
        fp.write('ef_sboot_sign_mode = 1\n')
    else:
        fp.write('ef_sboot_sign_mode = 0\n')
    if values['bootrom_protect'] == True:
        fp.write('bootrom_protect = 1\n')
    else:
        fp.write('bootrom_protect = 0\n')
    if values['uart_disable'] == True:
        fp.write('uart_disable = 1\n')
    else:
        fp.write('uart_disable = 0\n')
    if values['jtag_switch'] == True:
        fp.write('jtag_switch = 1\n')
    else:
        fp.write('jtag_switch = 0\n')
    if values['tz_boot'] == True:
        fp.write('tz_boot = 1\n')
    else:
        fp.write('tz_boot = 0\n')
    if values['encryped_with_sign'] == True:
        fp.write('encryped_with_sign = 1\n')
    else:
        fp.write('encryped_with_sign = 0\n')
    if values['mediaboot_disable'] == True:
        fp.write('mediaboot_disable = 1\n')
    else:
        fp.write('mediaboot_disable = 0\n')
    if values['uartboot_disable'] == True:
        fp.write('uartboot_disable = 1\n')
    else:
        fp.write('uartboot_disable = 0\n')
    if values['sdioboot_disable'] == True:
        fp.write('sdioboot_disable = 1\n')
    else:
        fp.write('sdioboot_disable = 0\n')
    if values['keep_dbg_port_closed'] == True:
        fp.write('keep_dbg_port_closed = 1\n')
    else:
        fp.write('keep_dbg_port_closed = 0\n')
    if values['hbn_check_sign'] == True:
        fp.write('hbn_check_sign = 1\n')
    else:
        fp.write('hbn_check_sign = 0\n')
    fp.close()
    bflb_efuse_boothd_create.efuse_create_process(efuse_cfg, efuse_data)


def program_img_thread(values):
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
    cmd = '-p -t efuse -c %s' % eflash_loader_cfg_tmp
    eflash_loader_t = bflb_eflash_loader.BFLB_Eflash_Loader(chip_type)
    eflash_loader_t.efuse_flash_loader(cmd.split(' '), None, eflash_loader_bin)
# okay decompiling core.bflb_efuse_tool.pyc
