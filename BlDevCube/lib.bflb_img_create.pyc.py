# decompyle3 version 3.3.2
# Python bytecode 3.7 (3394)
# Decompiled from: Python 3.8.5 (default, Jul 28 2020, 12:59:40) 
# [GCC 9.3.0]
# Embedded file name: lib\bflb_img_create.py
import re, os, sys, shutil, zipfile
from lib.bflb_utils import app_path
from lib.bflb_utils import BFConfigParser
from lib.bflb_utils import printf
from lib.bflb_utils import set_error_code

def takeSecond(elem):
    return elem[1]


def check_pt_file(file, addr):
    if len(file) > 0:
        i = 0
        L = []
        while i < len(file):
            L.append([file[i].replace('\\', '/'), int(addr[i], 16)])
            i += 1

        L.sort(key=takeSecond)
        i = 0
        try:
            while i < len(L) - 1:
                address = L[i][1]
                address_next = L[(i + 1)][1]
                file_size = os.path.getsize(os.path.join(app_path, L[i][0]))
                if address_next < address + file_size:
                    printf('pt check fail, %s is overlayed with %s in flash layout, please check your partition table to fix this issue' % (L[i][0], L[(i + 1)][0]))
                    return False
                else:
                    i += 1

        except Exception as err:
            try:
                printf(err)
                return False
            finally:
                err = None
                del err

        return True


def compress_dir(chipname):
    zip_file = os.path.join(app_path, chipname, 'img_create', 'whole_img.pack')
    dir_path = os.path.join(app_path, chipname, chipname)
    cfg_file = os.path.join(app_path, chipname, 'eflash_loader/eflash_loader_cfg.ini')
    cfg = BFConfigParser()
    cfg.read(cfg_file)
    flash_file = re.compile('\\s+').split(cfg.get('FLASH_CFG', 'file'))
    address = re.compile('\\s+').split(cfg.get('FLASH_CFG', 'address'))
    if check_pt_file(flash_file, address) != True:
        printf('PT Check Fail')
        set_error_code('0082')
        return False
    flash_file.append(os.path.join(chipname, 'eflash_loader/eflash_loader_cfg.ini'))
    if len(flash_file) > 0:
        i = 0
        try:
            while i < len(flash_file):
                dir = os.path.join(app_path, chipname, flash_file[i].replace('\\', '/'))
                if os.path.isdir(os.path.dirname(dir)) == False:
                    os.makedirs(os.path.dirname(dir))
                else:
                    shutil.copy(os.path.join(app_path, flash_file[i].replace('\\', '/')), dir)
                    i += 1

        except Exception as err:
            try:
                printf(err)
                return False
            finally:
                err = None
                del err

        try:
            z = zipfile.ZipFile(zip_file, 'w')
            for dirpath, dirnames, filenames in os.walk(dir_path):
                for file in filenames:
                    z.write(os.path.relpath(os.path.join(dirpath, file), os.path.join(app_path, chipname)))

            z.close()
            shutil.rmtree(dir_path)
        except Exception as err:
            try:
                printf(err)
                return False
            finally:
                err = None
                del err

        return True


def img_create(options, chipname='bl60x', chiptype='bl60x', img_dir=None, config_file=None):
    sub_module = __import__(('lib.' + chiptype), fromlist=[chiptype])
    img_dir_path = os.path.join(app_path, chipname, 'img_create')
    if img_dir is None:
        sub_module.img_create_do.img_create_do(options, img_dir_path, config_file)
    else:
        sub_module.img_create_do.img_create_do(options, img_dir, config_file)


def create_sp_media_image_file(config, chiptype='bl60x', cpu_type=None):
    sub_module = __import__(('lib.' + chiptype), fromlist=[chiptype])
    sub_module.img_create_do.create_sp_media_image(config, cpu_type)


if __name__ == '__main__':
    img_create(sys.argv[1:], None, None, 'bl60x')
# okay decompiling lib.bflb_img_create.pyc
