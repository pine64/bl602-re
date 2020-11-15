# decompyle3 version 3.3.2
# Python bytecode 3.7 (3394)
# Decompiled from: Python 3.8.5 (default, Jul 28 2020, 12:59:40) 
# [GCC 9.3.0]
# Embedded file name: core\bflb_simple_flasher.py
import os, sys, re, argparse, shutil, subprocess, traceback, hashlib, lzma
if getattr(sys, 'frozen', False):
    app_path = os.path.dirname(sys.executable)
else:
    app_path = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
sys.path.append(app_path)
try:
    import changeconf as cgc
    conf_sign = True
except:
    conf_sign = False

import globalvar as gol
from lib import bflb_eflash_loader
from lib import bflb_utils
from lib import bflb_toml as toml
__all__ = [
 'flasher_download_cmd', 'chip_flash_type', 'chip_flash_type_config', 'bl60x_boards_selectbox', 'bl60x_boards_xtal_selectbox', 'bl_factory_params_file_prefix', 'flasher_download_thread', 'flash_type', 'generate_romfs_img']
if conf_sign:
    chip_dict = {'bl56x': 'bl60x', 
     'bl60x': 'bl60x', 
     'bl562': 'bl602', 
     'bl602': 'bl602', 
     'bl702': 'bl702', 
     cgc.lower_name: 'bl602'}
else:
    chip_dict = {'bl56x':'bl60x', 
     'bl60x':'bl60x', 
     'bl562':'bl602', 
     'bl602':'bl602', 
     'bl702':'bl702'}
chip_name = gol.GlobalVar.type_chip[0]
chip_type = gol.GlobalVar.type_chip[1]
eflash_loader_t = bflb_eflash_loader.BFLB_Eflash_Loader(chip_type)
if conf_sign:
    chip_xtal = cgc.choice_xtal
    chip_brd = cgc.choice_board
else:
    chip_xtal = 'bl60x_xtal'
    chip_brd = 'bl60x_brd'

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
    xtal_suffix = str(xtal).lower().replace('.', 'p')
    return 'eflash_loader_' + xtal_suffix + '.bin'


def flash_type(chip_flash_name):
    cfg_file_name_list = chip_flash_name.split('_')
    _type = cfg_file_name_list[1]
    vendor = cfg_file_name_list[2]
    size = cfg_file_name_list[3]
    return (
     _type, vendor, size)


def generate_romfs_img(romfs_dir, dst_img_name):
    exe = None
    if os.name == 'nt':
        exe = os.path.join(app_path, 'common/genromfs', 'genromfs.exe')
    elif os.name == 'posix':
        machine = os.uname().machine
        if machine == 'x86_64':
            exe = os.path.join(app_path, 'common/genromfs', 'genromfs_amd64')
        elif machine == 'armv7l':
            exe = os.path.join(app_path, 'common/genromfs', 'genromfs_armel')
    if exe is None:
        bflb_utils.printf('NO supported genromfs exe for your platform!')
        return -1
    dir = os.path.abspath(romfs_dir)
    dst = os.path.abspath(dst_img_name)
    bflb_utils.printf('Generating romfs image %s using directory %s ... ' % (dst, dir))
    return subprocess.call([exe, '-d', dir, '-f', dst])


def exe_genitor(list_args):
    p = subprocess.Popen(list_args, shell=True, stdout=(subprocess.PIPE), stderr=(subprocess.STDOUT))
    while subprocess.Popen.poll(p) == None:
        try:
            r = p.stdout.readline().strip().decode('utf-8')
            if r == '':
                break
            else:
                bflb_utils.printf(r)
        except UnicodeDecodeError:
            continue


def bl60x_fw_boot_head_gen(boot2, xtal, config, encrypt=False, chipname='bl60x', chiptype='bl60x', cpu_type=None, boot2_en=False):
    cfg = BFConfigParser()
    cfg.read(config)
    if cpu_type != None:
        bootheader_section_name = 'BOOTHEADER_' + cpu_type + '_CFG'
    elif 'BOOTHEADER_CPU0_CFG' in cfg.sections():
        bootheader_section_name = 'BOOTHEADER_CPU0_CFG'
    else:
        bootheader_section_name = 'BOOTHEADER_CFG'
    if chiptype == 'bl702':
        if boot2_en == True:
            cfg.set(bootheader_section_name, 'boot2_enable', 1)
        else:
            cfg.set(bootheader_section_name, 'boot2_enable', 0)
    if boot2 == True:
        cfg.set(bootheader_section_name, 'img_start', '0x2000')
        cfg.set(bootheader_section_name, 'cache_enable', '1')
        if cpu_type != None:
            cfg.set(bootheader_section_name, 'halt_cpu1', '1')
        cfg.set(bootheader_section_name, 'key_sel', '0')
    if encrypt:
        cfg.set(bootheader_section_name, 'encrypt_type', '1')
    else:
        cfg.set(bootheader_section_name, 'encrypt_type', '0')
    bflb_utils.printf('bl60x_fw_boot_head_gen xtal: %s' % xtal)
    cfg.set(bootheader_section_name, 'xtal_type', dict_xtal.index(xtal))
    cfg.write(config)
    eb_create.efuse_boothd_create_process(chipname, chiptype, config)


def bl60x_mfg_boot_head_gen(mfg_addr, xtal, config, chipname='bl60x', chiptype='bl60x', cpu_type=None):
    cfg = BFConfigParser()
    cfg.read(config)
    bflb_utils.printf(mfg_addr)
    if cpu_type != None:
        bootheader_section_name = 'BOOTHEADER_' + cpu_type + '_CFG'
    elif 'BOOTHEADER_CPU0_CFG' in cfg.sections():
        bootheader_section_name = 'BOOTHEADER_CPU0_CFG'
    else:
        bootheader_section_name = 'BOOTHEADER_CFG'
    cfg.set(bootheader_section_name, 'img_start', mfg_addr)
    cfg.set(bootheader_section_name, 'cache_enable', '1')
    if cpu_type != None:
        cfg.set(bootheader_section_name, 'halt_cpu1', '1')
    cfg.set(bootheader_section_name, 'halt_cpu1', '1')
    cfg.set(bootheader_section_name, 'key_sel', '0')
    bflb_utils.printf('bl60x_mfg_boot_head_gen xtal: %s' % xtal)
    cfg.set(bootheader_section_name, 'xtal_type', dict_xtal.index(xtal))
    cfg.write(config)
    eb_create.efuse_boothd_create_process(chipname, chiptype, config)


def bl60x_image_gen_cfg(chiptype, raw_bin_name, bintype, key=None, iv=None, cfg_ini=None, cpu_type=None):
    cfg = BFConfigParser()
    if cfg_ini in (None, ''):
        if chiptype == 'bl60x':
            f_org = os.path.join(app_path, chip_name, 'img_create/img_create_cfg_dp.conf')
        else:
            f_org = os.path.join(app_path, chip_name, 'img_create/img_create_cfg.conf')
        f = os.path.join(app_path, chip_name, 'img_create/img_create_cfg.ini')
        if os.path.isfile(f) == False:
            shutil.copy(f_org, f)
    else:
        f = cfg_ini
    cfg.read(f)
    if bintype == 'fw':
        if cpu_type == None:
            bootinfo_file = os.path.join(app_path, chip_name, 'img_create/bootinfo.bin')
            img_file = os.path.join(app_path, chip_name, 'img_create/img.bin')
        else:
            bootinfo_file = os.path.join(app_path, chip_name, 'img_create/bootinfo_{0}.bin'.format(cpu_type.lower()))
            img_file = os.path.join(app_path, chip_name, 'img_create/img_{0}.bin'.format(cpu_type.lower()))
    else:
        bootinfo_file = os.path.join(app_path, chip_name, 'img_create/bootinfo_{0}.bin'.format(bintype))
        img_file = os.path.join(app_path, chip_name, 'img_create/img_{0}.bin'.format(bintype))
    if cpu_type != None:
        img_section_name = 'Img_' + cpu_type + '_Cfg'
    elif 'Img_CPU0_Cfg' in cfg.sections():
        img_section_name = 'Img_CPU0_Cfg'
    else:
        img_section_name = 'Img_Cfg'
    cfg.set(img_section_name, 'boot_header_file', bh_file)
    cfg.set(img_section_name, 'efuse_file', efuse_file)
    cfg.set(img_section_name, 'efuse_mask_file', efuse_mask_file)
    cfg.set(img_section_name, 'segdata_file', raw_bin_name)
    cfg.set(img_section_name, 'bootinfo_file', bootinfo_file)
    cfg.set(img_section_name, 'img_file', img_file)
    if key:
        cfg.set(img_section_name, 'aes_key_org', key)
    if iv:
        cfg.set(img_section_name, 'aes_iv', iv)
    cfg.write(f, 'w')
    return f


def bl60x_mfg_ota_header(file_bytearray, use_xz):
    parsed_toml = toml.load(ota)
    header_len = 512
    header = bytearray()
    file_len = len(file_bytearray)
    m = hashlib.sha256()
    data = b'BL60X_OTA_Ver1.0'
    for b in data:
        header.append(b)

    if use_xz:
        data = b'XZ  '
    else:
        data = b'RAW '
    for b in data:
        header.append(b)

    file_len_bytes = file_len.to_bytes(4, byteorder='little')
    for b in file_len_bytes:
        header.append(b)

    header.append(1)
    header.append(2)
    header.append(3)
    header.append(4)
    header.append(5)
    header.append(6)
    header.append(7)
    header.append(8)
    data = bytearray(parsed_toml['ota']['version_hardware'].encode())
    data_len = 16 - len(data)
    for b in data:
        header.append(b)

    while data_len > 0:
        header.append(0)
        data_len = data_len - 1

    data = bytearray(parsed_toml['ota']['version_software'].encode())
    data_len = 16 - len(data)
    for b in data:
        header.append(b)

    while data_len > 0:
        header.append(0)
        data_len = data_len - 1

    m.update(file_bytearray)
    hash_bytes = m.digest()
    for b in hash_bytes:
        header.append(b)

    header_len = header_len - len(header)
    while header_len > 0:
        header.append(255)
        header_len = header_len - 1

    return header


def img_create_sha256_data(data_bytearray):
    hashfun = hashlib.sha256()
    hashfun.update(data_bytearray)
    return bflb_utils.hexstr_to_bytearray(hashfun.hexdigest())


def bl60x_mfg_ota_xz_gen(chipname='bl60x', chiptype='bl60x', cpu_type=None):
    bl60x_xz_filters = [
     {'id':lzma.FILTER_LZMA2, 
      'dict_size':32768}]
    fw_ota_bin = bytearray()
    fw_ota_bin_xz = bytearray()
    if cpu_type == None:
        FW_OTA_path = os.path.join(app_path, chipname, 'ota/FW_OTA.bin')
    else:
        FW_OTA_path = os.path.join(app_path, chipname, 'ota/' + cpu_type + '_OTA.bin')
    with open(FW_OTA_path, mode='rb') as bin_f:
        file_bytes = bin_f.read()
        for b in file_bytes:
            fw_ota_bin.append(b)

    if cpu_type == None:
        FW_OTA_path = os.path.join(app_path, chipname, 'ota/FW_OTA.bin.xz')
    else:
        FW_OTA_path = os.path.join(app_path, chipname, 'ota/' + cpu_type + '_OTA.bin.xz')
    with lzma.open(FW_OTA_path, mode='wb', check=(lzma.CHECK_CRC32), filters=bl60x_xz_filters) as xz_f:
        xz_f.write(fw_ota_bin)
    with open(FW_OTA_path, mode='rb') as f:
        file_bytes = f.read()
        for b in file_bytes:
            fw_ota_bin_xz.append(b)

    fw_ota_bin_xz_ota = bl60x_mfg_ota_header(fw_ota_bin_xz, use_xz=1)
    for b in fw_ota_bin_xz:
        fw_ota_bin_xz_ota.append(b)

    if cpu_type == None:
        FW_OTA_path = os.path.join(app_path, chipname, 'ota/FW_OTA.bin.xz.ota')
    else:
        FW_OTA_path = os.path.join(app_path, chipname, 'ota/' + cpu_type + '_OTA.bin.xz.ota')
    with open(FW_OTA_path, mode='wb') as f:
        f.write(fw_ota_bin_xz_ota)
    with open((FW_OTA_path.replace('.ota', '.hash')), mode='wb') as f:
        f.write(fw_ota_bin_xz + img_create_sha256_data(fw_ota_bin_xz))


def bl60x_mfg_ota_bin_gen(chipname='bl60x', chiptype='bl60x', cpu_type=None):
    fw_header_len = 4096
    fw_ota_bin = bytearray()
    ota_path = os.path.join(app_path, chipname, 'ota')
    if os.path.isdir(ota_path) == False:
        os.mkdir(ota_path)
    if cpu_type == None:
        bootinfo_fw_path = os.path.join(app_path, chipname, 'img_create/bootinfo.bin')
    else:
        bootinfo_fw_path = os.path.join(app_path, chipname, 'img_create/bootinfo_' + cpu_type.lower() + '.bin')
    with open(bootinfo_fw_path, mode='rb') as f:
        file_bytes = f.read(4096)
        for b in file_bytes:
            fw_ota_bin.append(b)

    i = fw_header_len - len(fw_ota_bin)
    bflb_utils.printf('FW Header is %d, %d still needed' % (len(fw_ota_bin), i))
    while i > 0:
        fw_ota_bin.append(255)
        i = i - 1

    bflb_utils.printf('FW OTA bin header is Done. Len is %d' % len(fw_ota_bin))
    if cpu_type == None:
        img_fw_path = os.path.join(app_path, chipname, 'img_create/img.bin')
    else:
        img_fw_path = os.path.join(app_path, chipname, 'img_create/img_' + cpu_type.lower() + '.bin')
    with open(img_fw_path, mode='rb') as f:
        file_bytes = f.read()
        for b in file_bytes:
            fw_ota_bin.append(b)

    fw_ota_bin_header = bl60x_mfg_ota_header(fw_ota_bin, use_xz=0)
    if cpu_type == None:
        FW_OTA_path = os.path.join(app_path, chipname, 'ota/FW_OTA.bin')
    else:
        FW_OTA_path = os.path.join(app_path, chipname, 'ota/' + cpu_type + '_OTA.bin')
    with open(FW_OTA_path, mode='wb') as f:
        f.write(fw_ota_bin)
    for b in fw_ota_bin:
        fw_ota_bin_header.append(b)

    if cpu_type == None:
        FW_OTA_path = os.path.join(app_path, chipname, 'ota/FW_OTA.bin.ota')
    else:
        FW_OTA_path = os.path.join(app_path, chipname, 'ota/' + cpu_type + '_OTA.bin.ota')
    with open(FW_OTA_path, mode='wb') as f:
        f.write(fw_ota_bin_header)
    bflb_utils.printf('FW OTA bin is Done. Len is %d' % len(fw_ota_bin))
    bl60x_mfg_ota_xz_gen(chipname, chiptype, cpu_type)
    bflb_utils.printf('FW OTA xz is Done')


def bl60x_image_gen(chipname, chiptype, cpu_type, bintype, raw_bin_name, key=None, iv=None, cfg_ini=None):
    f = bl60x_image_gen_cfg(chiptype, raw_bin_name, bintype, key, iv, cfg_ini, cpu_type)
    return img_create.create_sp_media_image_file(f, chiptype, cpu_type)


def bl60x_mfg_flasher_cfg(uart, baudrate='57600', cfg_ini=None):
    cfg = BFConfigParser()
    if cfg_ini in (None, ''):
        f = eflash_loader_cfg
    else:
        f = cfg_ini
    cfg.read(f)
    cfg.set('LOAD_CFG', 'interface', 'uart')
    cfg.set('LOAD_CFG', 'device', uart)
    cfg.set('LOAD_CFG', 'speed_uart_load', baudrate)
    cfg.write(f, 'w')


def bl60x_mfg_flasher_jlink_cfg(rate='1000', cfg_ini=None):
    cfg = BFConfigParser()
    if cfg_ini in (None, ''):
        f = eflash_loader_cfg
    else:
        f = cfg_ini
    cfg.read(f)
    cfg.set('LOAD_CFG', 'interface', 'jlink')
    cfg.set('LOAD_CFG', 'speed_jlink', rate)
    cfg.write(f, 'w')


def bl60x_mfg_flasher_openocd_cfg(rate='8000', cfg_ini=None):
    cfg = BFConfigParser()
    if cfg_ini in (None, ''):
        f = eflash_loader_cfg
    else:
        f = cfg_ini
    cfg.read(f)
    cfg.set('LOAD_CFG', 'interface', 'openocd')
    cfg.set('LOAD_CFG', 'speed_jlink', rate)
    cfg.write(f, 'w')


def bl60x_mfg_flasher_erase_all(erase, cfg_ini=None):
    cfg = BFConfigParser()
    if cfg_ini in (None, ''):
        f = eflash_loader_cfg
    else:
        f = cfg_ini
    cfg.read(f)
    if erase == True:
        cfg.set('LOAD_CFG', 'erase', '2')
    else:
        cfg.set('LOAD_CFG', 'erase', '1')
    cfg.write(f, 'w')


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


def bl_get_largest_addr(addrs, files):
    maxlen = 0
    datalen = 0
    for i in range(len(addrs)):
        if int(addrs[i], 16) > maxlen:
            maxlen = int(addrs[i], 16)
            datalen = os.path.getsize(os.path.join(app_path, files[i]))

    return maxlen + datalen


def bl_write_flash_img(d_addrs, d_files, flash_size):
    whole_img_len = bl_get_largest_addr(d_addrs, d_files)
    whole_img_data = bl_create_flash_default_data(whole_img_len)
    filedatas = bl_get_file_data(d_files)
    for i in range(len(d_addrs)):
        start_addr = int(d_addrs[i], 16)
        whole_img_data[start_addr:start_addr + len(filedatas[i])] = filedatas[i]

    fp = open(whole_img_file, 'wb+')
    fp.write(whole_img_data)
    fp.close()


def bl60x_mfg_flasher_eflash_loader_cfg(chipname, chiptype, bin_file, boot2, ro_params, pt_parcel, media, mfg, flash_opt='1M'):
    bflb_utils.printf('========= eflash loader config =========')
    d_files = []
    d_addrs = []
    bind_bootinfo = True
    if pt_parcel == None:
        bflb_utils.set_error_code('007B')
        return bflb_utils.errorcode_msg()
    if boot2 == True:
        if bind_bootinfo == True:
            whole_img = os.path.join(app_path, chip_name + '/img_create/whole_img_boot2.bin')
            whole_img_len = 8192 + os.path.getsize(os.path.join(app_path, chip_name + '/img_create/img_boot2.bin'))
            whole_img_data = bl_create_flash_default_data(whole_img_len)
            filedata = bl_get_file_data([chip_name + '/img_create/bootinfo_boot2.bin'])[0]
            whole_img_data[0:len(filedata)] = filedata
            filedata = bl_get_file_data([chip_name + '/img_create/img_boot2.bin'])[0]
            whole_img_data[8192:8192 + len(filedata)] = filedata
            fp = open(whole_img, 'wb+')
            fp.write(whole_img_data)
            fp.close()
            d_files.append(chip_name + '/img_create/whole_img_boot2.bin')
            d_addrs.append('00000000')
        else:
            d_files.append(chip_name + '/img_create/bootinfo_boot2.bin')
            d_addrs.append('00000000')
            d_files.append(chip_name + '/img_create/img_boot2.bin')
            d_addrs.append('00002000')
    elif chiptype == 'bl702':
        bflb_utils.printf('========= copy bootinfo_boot2.bin =========')
        bflb_utils.copyfile(chip_name + '/img_create/bootinfo.bin', chip_name + '/img_create/bootinfo_boot2.bin')
        d_files.append(chip_name + '/img_create/bootinfo_boot2.bin')
        d_addrs.append('00000000')
    if pt_parcel != None:
        if len(pt_parcel) > 0:
            if pt_parcel['pt_new'] == True:
                d_files.append(chip_name + '/partition/partition.bin')
                d_addrs.append(hex(pt_parcel['pt_addr0'])[2:])
                d_files.append(chip_name + '/partition/partition.bin')
                d_addrs.append(hex(pt_parcel['pt_addr1'])[2:])
    if bin_file == True:
        if 'fw_cpu0_addr' in pt_parcel:
            if bind_bootinfo == True:
                whole_img = os.path.join(app_path, chip_name + '/img_create/whole_img_cpu0.bin')
                whole_img_len = 4096 + os.path.getsize(os.path.join(app_path, chip_name + '/img_create/img_cpu0.bin'))
                whole_img_data = bl_create_flash_default_data(whole_img_len)
                filedata = bl_get_file_data([chip_name + '/img_create/bootinfo_cpu0.bin'])[0]
                whole_img_data[0:len(filedata)] = filedata
                filedata = bl_get_file_data([chip_name + '/img_create/img_cpu0.bin'])[0]
                whole_img_data[4096:4096 + len(filedata)] = filedata
                fp = open(whole_img, 'wb+')
                fp.write(whole_img_data)
                fp.close()
                d_files.append(chip_name + '/img_create/whole_img_cpu0.bin')
                d_addrs.append(hex(pt_parcel['fw_cpu0_addr'])[2:])
            else:
                d_files.append(chip_name + '/img_create/bootinfo_cpu0.bin')
                d_addrs.append(hex(pt_parcel['fw_cpu0_addr'])[2:])
                d_files.append(chip_name + '/img_create/img_cpu0.bin')
                d_addrs.append(hex(pt_parcel['fw_cpu0_addr'] + 4096)[2:])
    if bin_file == True:
        if 'fw_addr' in pt_parcel:
            if bind_bootinfo == True:
                whole_img = os.path.join(app_path, chip_name + '/img_create/whole_img.bin')
                whole_img_len = 4096 + os.path.getsize(os.path.join(app_path, chip_name + '/img_create/img.bin'))
                whole_img_data = bl_create_flash_default_data(whole_img_len)
                filedata = bl_get_file_data([chip_name + '/img_create/bootinfo.bin'])[0]
                whole_img_data[0:len(filedata)] = filedata
                filedata = bl_get_file_data([chip_name + '/img_create/img.bin'])[0]
                whole_img_data[4096:4096 + len(filedata)] = filedata
                fp = open(whole_img, 'wb+')
                fp.write(whole_img_data)
                fp.close()
                d_files.append(chip_name + '/img_create/whole_img.bin')
                d_addrs.append(hex(pt_parcel['fw_addr'])[2:])
            else:
                d_files.append(chip_name + '/img_create/bootinfo.bin')
                d_addrs.append(hex(pt_parcel['fw_addr'])[2:])
                d_files.append(chip_name + '/img_create/img.bin')
                d_addrs.append(hex(pt_parcel['fw_addr'] + 4096)[2:])
    if ro_params != None:
        if len(ro_params) > 0:
            if pt_parcel['conf_addr'] != None:
                bl_ro_device_tree.bl_ro_params_device_tree(ro_params, chip_name + '/device_tree/ro_params.dtb')
                d_files.append(chip_name + '/device_tree/ro_params.dtb')
                d_addrs.append(hex(pt_parcel['conf_addr'])[2:])
    if media == True:
        if pt_parcel['media_addr'] != None:
            d_files.append(chip_name + '/img_create/media.bin')
            d_addrs.append(hex(pt_parcel['media_addr'])[2:])
    if mfg == True:
        if bind_bootinfo == True:
            whole_img = os.path.join(app_path, chip_name + '/img_create/whole_img_mfg.bin')
            whole_img_len = 4096 + os.path.getsize(os.path.join(app_path, chip_name + '/img_create/img_mfg.bin'))
            whole_img_data = bl_create_flash_default_data(whole_img_len)
            filedata = bl_get_file_data([chip_name + '/img_create/bootinfo_mfg.bin'])[0]
            whole_img_data[0:len(filedata)] = filedata
            filedata = bl_get_file_data([chip_name + '/img_create/img_mfg.bin'])[0]
            whole_img_data[4096:4096 + len(filedata)] = filedata
            fp = open(whole_img, 'wb+')
            fp.write(whole_img_data)
            fp.close()
            d_files.append(chip_name + '/img_create/whole_img_mfg.bin')
            d_addrs.append(hex(pt_parcel['mfg_addr'])[2:])
        else:
            d_files.append(chip_name + '/img_create/bootinfo_mfg.bin')
            d_addrs.append(hex(pt_parcel['mfg_addr'])[2:])
            d_files.append(chip_name + '/img_create/img_mfg.bin')
            d_addrs.append(hex(pt_parcel['mfg_addr'] + 4096)[2:])
    if len(d_files) > 0:
        if len(d_addrs) > 0:
            cfg = BFConfigParser()
            cfg.read(eflash_loader_cfg)
            bl_write_flash_img(d_addrs, d_files, flash_opt)
            files_str = ' '.join(d_files)
            addrs_str = ' '.join(d_addrs)
            cfg.set('FLASH_CFG', 'file', files_str)
            cfg.set('FLASH_CFG', 'address', addrs_str)
            cfg.write(eflash_loader_cfg, 'w')
            ret = img_create.compress_dir(chipname)
            if ret != True:
                return bflb_utils.errorcode_msg()
            return True
    bflb_utils.set_error_code('0060')
    return bflb_utils.errorcode_msg()


def bl60x_mfg_uart_flasher(uart, baudrate='57600', cfg_ini=None):
    bl60x_mfg_flasher_cfg(uart, baudrate, cfg_ini)
    exe_genitor(['python', os.path.join(app_path, 'lib/bflb_eflash_loader.py'), '-p', '-t', 'flash', '-c', eflash_loader_cfg])


def flasher_download_cfg_ini_gen(chipname, chiptype, cpu_type, config):
    bin_d = False
    boot2_d = False
    ro_params_d = None
    pt_parcel = None
    media_bin_d = False
    mfg_d = False
    boot2_en = False
    error = 'Please check your partition table file'
    gol.GlobalVar.values = config
    cfg = BFConfigParser()
    cfg.read(eflash_loader_cfg)
    if cfg.has_option('FLASH_CFG', 'flash_id'):
        flash_id = cfg.get('FLASH_CFG', 'flash_id')
        bflb_utils.printf('========= chip flash id: %s =========' % flash_id)
        if chiptype == 'bl602':
            if bflb_flash_select.update_flash_cfg(chipname, chiptype, flash_id, bh_cfg_file, False, 'BOOTHEADER_CFG') == False:
                error = 'flash_id:' + flash_id + ' do not support'
                bflb_utils.printf(error)
                bflb_utils.set_error_code('0069')
                return bflb_utils.errorcode_msg()
        elif chiptype == 'bl60x':
            if bflb_flash_select.update_flash_cfg(chipname, chiptype, flash_id, bh_cfg_file, False, 'BOOTHEADER_CPU0_CFG') == False:
                error = 'flash_id:' + flash_id + ' do not support'
                bflb_utils.printf(error)
                bflb_utils.set_error_code('0069')
                return bflb_utils.errorcode_msg()
    else:
        error = 'Do not find flash_id in eflash_loader_cfg.ini'
        bflb_utils.printf(error)
        bflb_utils.set_error_code('0070')
        return bflb_utils.errorcode_msg()
    pt = config['input_path']['pt_bin_input']
    if pt != None and len(pt) > 0:
        pt_helper = partition.PtCreater(pt)
        if config['check_box']['partition_download'] == True:
            bflb_utils.printf('create partition.bin, pt_new == True')
            pt_helper.create_pt_table(partition_path)
        pt_parcel = pt_helper.construct_table()
    else:
        bflb_utils.set_error_code('0076')
        return bflb_utils.errorcode_msg()
    if config['check_box']['encrypt'] == True:
        aes_key = config['param']['aes_key'].replace(' ', '')
        aes_iv = config['param']['aes_iv'].replace(' ', '')
        if verify_hex_num(aes_key) != True or (len(aes_key) != 32):
            error = 'Error: Please check AES key data and len'
            bflb_utils.printf(error)
            bflb_utils.set_error_code('0077')
            return bflb_utils.errorcode_msg()
        if verify_hex_num(aes_iv) != True or (len(aes_iv) != 32):
            error = 'Error: Please check AES iv data and len'
            bflb_utils.printf(error)
            bflb_utils.set_error_code('0078')
            return bflb_utils.errorcode_msg()
        if aes_iv.endswith('00000000') == False:
            error = 'AES IV should endswith 4 bytes zero'
            bflb_utils.printf(error)
            bflb_utils.set_error_code('0073')
            return bflb_utils.errorcode_msg()
    if chiptype == 'bl702':
        if config['check_box']['boot2_download'] == True:
            boot2_en = False
        else:
            boot2_en = True
    if config['check_box']['boot2_download'] == True:
        boot2 = config['input_path']['boot2_bin_input']
        if not boot2 != None or len(boot2) > 0:
            bl60x_fw_boot_head_gen(True, config['param'][chip_xtal], bh_cfg_file, config['check_box']['encrypt'], chipname, chiptype, cpu_type, boot2_en)
            f_org = os.path.join(app_path, chip_name, 'img_create/img_create_cfg_boot2.conf')
            f = os.path.join(app_path, chip_name, 'img_create/img_create_cfg_boot2.ini')
            if os.path.isfile(f) == False:
                shutil.copy(f_org, f)
            bl60x_image_gen(chipname, chiptype, cpu_type, 'boot2', boot2, config['param']['aes_key'], config['param']['aes_iv'], f)
            boot2_d = True
    elif chiptype == 'bl702':
        bl60x_fw_boot_head_gen(True, config['param'][chip_xtal], bh_cfg_file, config['check_box']['encrypt'], chipname, chiptype, cpu_type, boot2_en)
    if config['check_box']['bin_download'] == True:
        bin = config['input_path']['cfg2_bin_input']
        if bin != None:
            if len(bin) > 0:
                bl60x_fw_boot_head_gen(False, config['param'][chip_xtal], bh_cfg_file, config['check_box']['encrypt'], chipname, chiptype, cpu_type, boot2_en)
                bl60x_image_gen(chipname, chiptype, cpu_type, 'fw', bin, config['param']['aes_key'], config['param']['aes_iv'])
                bl60x_mfg_ota_bin_gen(chipname, chiptype, cpu_type)
                bin_d = True
    if config['check_box']['ro_params_download'] == True:
        suffix = config['param'][chip_brd] + '_' + config['param'][chip_xtal] + '.dts'
        ro = os.path.join(app_path, chip_name, 'device_tree/', bl_factory_params_file_prefix + suffix)
        if not os.path.isfile(ro):
            bflb_utils.printf("Don't Find %s as bl_factory image" % ro)
            error = "Don't Find %s as bl_factory image" % ro
            bflb_utils.printf(error)
            bflb_utils.set_error_code('0079')
            return bflb_utils.errorcode_msg()
        if ro != None:
            if len(ro) > 0:
                ro_params_d = ro
    if config['check_box']['media_download'] == True:
        media_bin = config['input_path']['meida_bin_input']
        if not media_bin != None or len(media_bin) > 0:
            try:
                shutil.copy(media_bin, os.path.join(app_path, chip_name, 'img_create/media.bin'))
            except Exception as e:
                try:
                    bflb_utils.printf(e)
                finally:
                    e = None
                    del e

            media_bin_d = True
    if config['check_box']['use_romfs'] == True:
        romfs_dir = config['input_path']['romfs_dir_input']
        if romfs_dir != None:
            if len(romfs_dir) > 0:
                ret = generate_romfs_img(romfs_dir, os.path.join(app_path, chip_name, 'img_create/media.bin'))
                if ret != 0:
                    bflb_utils.printf('ERROR, ret %s.' % ret)
                    error = 'ERROR, ret %s.' % ret
                    bflb_utils.printf(error)
                    bflb_utils.set_error_code('007A')
                    return bflb_utils.errorcode_msg()
                media_bin_d = True
    if config['check_box']['mfg_download'] == True:
        mfg = config['input_path']['mfg_bin_input']
        if mfg != None:
            if len(mfg) > 0:
                bl60x_mfg_boot_head_gen(hex(pt_parcel['mfg_addr']), config['param'][chip_xtal], bh_cfg_file, chipname, chiptype, cpu_type)
                f_org = os.path.join(app_path, chip_name, 'img_create/img_create_cfg_mfg.conf')
                f = os.path.join(app_path, chip_name, 'img_create/img_create_cfg_mfg.ini')
                if os.path.isfile(f) == False:
                    shutil.copy(f_org, f)
                bl60x_image_gen(chipname, chiptype, cpu_type, 'mfg', mfg, config['param']['aes_key'], config['param']['aes_iv'], f)
                mfg_d = True
    return bl60x_mfg_flasher_eflash_loader_cfg(chipname, chiptype, bin_d, boot2_d, ro_params_d, pt_parcel, media_bin_d, mfg_d)


def create_simple_callback():
    cpu_type = None
    error = None
    if chip_name in gol.cpu_type.keys():
        cpu_type = gol.cpu_type[chip_name][0]
    values = gol.GlobalVar.values
    error = flasher_download_cfg_ini_gen(chip_name, chip_type, cpu_type, values)
    if error != True:
        bflb_utils.printf(error)
    return error


def flasher_download_thread(chipname, chiptype, act, config, callback=None):
    global eflash_loader_t
    error = None
    cpu_type = None
    if chipname in gol.cpu_type.keys():
        cpu_type = gol.cpu_type[chipname][0]
    if act != 'build':
        if act != 'download':
            return 'no such action!'
    try:
        try:
            if config['param']['interface_type'] == 'Uart':
                uart = config['param']['comport_uart']
                uart_brd = config['param']['speed_uart']
                bflb_utils.printf('========= Interface is Uart =========')
                bl60x_mfg_flasher_cfg(uart, uart_brd)
            elif config['param']['interface_type'] == 'JLink':
                jlink_brd = config['param']['speed_jlink']
                bflb_utils.printf('========= Interface is JLink =========')
                bl60x_mfg_flasher_jlink_cfg(rate=jlink_brd)
            else:
                openocd_brd = config['param']['speed_jlink']
                bflb_utils.printf('========= Interface is Openocd =========')
                bl60x_mfg_flasher_openocd_cfg(rate=openocd_brd)
            cfg = BFConfigParser()
            cfg.read(eflash_loader_cfg)
            if 'dl_verify' in config['param'].keys():
                if config['param']['verify'] == 'True':
                    cfg.set('LOAD_CFG', 'verify', '1')
                else:
                    cfg.set('LOAD_CFG', 'verify', '0')
            cfg.write(eflash_loader_cfg, 'w')
            bl60x_xtal = config['param'][chip_xtal]
            bflb_utils.printf('eflash loader bin is ' + get_eflash_loader(bl60x_xtal))
            eflash_loader_bin = os.path.join(app_path, chipname, 'eflash_loader/' + get_eflash_loader(bl60x_xtal))
            if config['check_box']['download_single'] == True and act == 'download':
                cfg = BFConfigParser()
                cfg.read(eflash_loader_cfg)
                files_str = config['input_path']['img_bin_input']
                addrs_str = config['param']['addr'].replace('0x', '')
                cfg.set('FLASH_CFG', 'file', files_str)
                cfg.set('FLASH_CFG', 'address', addrs_str)
                cfg.write(eflash_loader_cfg, 'w')
                eflash_loader_t = eflash_loader.BFLB_Eflash_Loader(chiptype)
                if config['check_box']['ckb_erase_all'] == 'True':
                    bl60x_mfg_flasher_erase_all(True)
                else:
                    bl60x_mfg_flasher_erase_all(False)
                if callback:
                    if config['param']['interface_type'] == 'Uart':
                        error = eflash_loader_t.efuse_flash_loader(('-p -t flash -d ' + uart).split(' '), eflash_loader_cfg, eflash_loader_bin, callback, create_simple_callback, None)
                    else:
                        error = eflash_loader_t.efuse_flash_loader('-p -t flash'.split(' '), eflash_loader_cfg, eflash_loader_bin, callback, create_simple_callback, None)
                elif config['param']['interface_type'] == 'Uart':
                    error = eflash_loader_t.efuse_flash_loader(('-p -t flash -d ' + uart).split(' '), eflash_loader_cfg, eflash_loader_bin, None, create_simple_callback, None)
                else:
                    error = eflash_loader_t.efuse_flash_loader('-p -t flash'.split(' '), eflash_loader_cfg, eflash_loader_bin, None, create_simple_callback, None)
            elif flasher_download_cfg_ini_gen(chipname, chiptype, cpu_type, config) == True:
                if act == 'build':
                    pass
                elif act == 'download':
                    eflash_loader_t = eflash_loader.BFLB_Eflash_Loader(chiptype)
                    if config['check_box']['ckb_erase_all'] == 'True':
                        bl60x_mfg_flasher_erase_all(True)
                    else:
                        bl60x_mfg_flasher_erase_all(False)
                    if callback:
                        if config['param']['interface_type'] == 'Uart':
                            error = eflash_loader_t.efuse_flash_loader(('-p -t flash -d ' + uart).split(' '), eflash_loader_cfg, eflash_loader_bin, callback, create_simple_callback, None)
                        else:
                            error = eflash_loader_t.efuse_flash_loader('-p -t flash'.split(' '), eflash_loader_cfg, eflash_loader_bin, callback, create_simple_callback, None)
                    elif config['param']['interface_type'] == 'Uart':
                        error = eflash_loader_t.efuse_flash_loader(('-p -t flash -d ' + uart).split(' '), eflash_loader_cfg, eflash_loader_bin, None, create_simple_callback, None)
                    else:
                        error = eflash_loader_t.efuse_flash_loader('-p -t flash'.split(' '), eflash_loader_cfg, eflash_loader_bin, None, create_simple_callback, None)
            else:
                error = flasher_download_cfg_ini_gen(chipname, chiptype, cpu_type, config)
                bflb_utils.printf('Please check your partition table file')
        except Exception as e:
            try:
                traceback.print_exc(limit=10, file=(sys.stdout))
                error = str(e)
            finally:
                e = None
                del e

    finally:
        return error


def flasher_download_cmd(args):
    config = toml.load(args.config)
    chipname = args.chipname
    chiptype = chip_dict[chipname]
    act = 'download'
    flasher_download_thread(chipname, chiptype, act, config)


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


if __name__ == '__main__':
    parser = argparse.ArgumentParser(description='flasher download')
    parser.add_argument('chipname')
    parser.add_argument('config')
    args = parser.parse_args()
    chip_name = args.chipname
    chip_type = chip_dict[chip_name]
else:
    chip_name = gol.GlobalVar.type_chip[0]
    chip_type = gol.GlobalVar.type_chip[1]
ota_path = os.path.join(app_path, chip_name, 'ota')
imgcreate2_path = os.path.join(app_path, chip_name, 'img_create2')
if not os.path.exists(ota_path):
    os.makedirs(ota_path)
if not os.path.exists(imgcreate2_path):
    os.makedirs(imgcreate2_path)
from lib import bflb_flash_select
from lib.bflb_utils import BFConfigParser
import lib.bflb_pt_creater as partition
import lib.bflb_eflash_loader as eflash_loader
import lib.bflb_efuse_boothd_create as eb_create
import lib.bflb_img_create as img_create
import lib.bflb_ro_params_device_tree as bl_ro_device_tree
partition_path = os.path.join(app_path, chip_name, 'partition/partition.bin')
eflash_loader_cfg_org = os.path.join(app_path, chip_name, 'eflash_loader/eflash_loader_cfg.conf')
eflash_loader_cfg = os.path.join(app_path, chip_name, 'eflash_loader/eflash_loader_cfg.ini')
shutil.copy(eflash_loader_cfg_org, eflash_loader_cfg)
ota = os.path.join(app_path, chip_name, 'conf/ota.toml')
if chip_type == 'bl60x':
    bh_cfg_file_org = os.path.join(app_path, chip_name, 'efuse_bootheader/efuse_bootheader_cfg_dp.conf')
    bh_file = os.path.join(app_path, chip_name, 'efuse_bootheader/bootheader_cpu0.bin')
else:
    bh_cfg_file_org = os.path.join(app_path, chip_name, 'efuse_bootheader/efuse_bootheader_cfg.conf')
    bh_file = os.path.join(app_path, chip_name, 'efuse_bootheader/bootheader.bin')
bh_cfg_file = os.path.join(app_path, chip_name, 'efuse_bootheader/efuse_bootheader_cfg.ini')
shutil.copy(bh_cfg_file_org, bh_cfg_file)
efuse_file = os.path.join(app_path, chip_name, 'efuse_bootheader/efusedata.bin')
efuse_mask_file = os.path.join(app_path, chip_name, 'efuse_bootheader/efusedata_mask.bin')
whole_img_file = os.path.join(app_path, chip_name, 'img_create/whole_flash_data.bin')
dict_xtal = gol.xtal_type[chip_type]
ini_file_kw = 'efuse_bootheader_cfg_'
ini_file_kw_len = len(ini_file_kw)
chip_flash_type_config = {}
bl60x_boards = set()
bl60x_board_xtal = set()
if conf_sign:
    bl_factory_params_file_prefix = cgc.show_text_first_value
else:
    bl_factory_params_file_prefix = 'bl_factory_params_'
bl_factory_params_file_prefix_len = len(bl_factory_params_file_prefix)
bl60x_boards_xtal_selectbox = []
bl60x_boards_selectbox = []
try:
    bl_factory_params_files = os.listdir(os.path.join(app_path, chip_name, 'device_tree'))
    for bl_fac_p_f in bl_factory_params_files:
        if not os.path.isdir(bl_fac_p_f):
            drop_idx_start = bl_fac_p_f.find(bl_factory_params_file_prefix)
            if drop_idx_start != -1:
                drop_idx_end = drop_idx_start + bl_factory_params_file_prefix_len
                drop_value_l = bl_fac_p_f[drop_idx_end:-4].split('_')
                bl60x_boards.add(drop_value_l[0].strip())
                bl60x_board_xtal.add(drop_value_l[1].strip())

    bl60x_boards_selectbox = list(bl60x_boards)
    bl60x_boards_xtal_selectbox = list(bl60x_board_xtal)
except Exception as e:
    try:
        bflb_utils.printf(e)
    finally:
        e = None
        del e

if __name__ == '__main__':
    parser.set_defaults(func=flasher_download_cmd)
    args = parser.parse_args()
    args.func(args)
# okay decompiling core.bflb_simple_flasher.pyc
