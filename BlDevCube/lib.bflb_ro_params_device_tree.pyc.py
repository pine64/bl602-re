# decompyle3 version 3.3.2
# Python bytecode 3.7 (3394)
# Decompiled from: Python 3.8.5 (default, Jul 28 2020, 12:59:40) 
# [GCC 9.3.0]
# Embedded file name: lib\bflb_ro_params_device_tree.py
import os, fdt
from lib.bflb_utils import app_path
from lib import bflb_utils

def bl_dts2dtb(src_addr='', dest_addr=''):
    if '' == src_addr or ('' == dest_addr):
        bflb_utils.printf('bl_dts2dtb please check arg.')
        return
    bflb_utils.printf('=========', src_addr, dest_addr, '=========')
    with open(src_addr, 'r') as f:
        tmp1_dts = f.read()
    tmp2_dtb = fdt.parse_dts(tmp1_dts)
    dest_addr = os.path.join(app_path, dest_addr)
    with open(dest_addr, 'wb') as f:
        f.write(tmp2_dtb.to_dtb(version=17))


def bl_ro_params_device_tree(in_dts_config, out_bin_file):
    dts_config = in_dts_config
    bin_file = out_bin_file
    bl_dts2dtb(dts_config, bin_file)
# okay decompiling lib.bflb_ro_params_device_tree.pyc
