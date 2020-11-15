# decompyle3 version 3.3.2
# Python bytecode 3.7 (3394)
# Decompiled from: Python 3.8.5 (default, Jul 28 2020, 12:59:40) 
# [GCC 9.3.0]
# Embedded file name: lib\bl602\partition_cfg_do.py
import binascii
from lib import bflb_utils
partition1_addr = 'E000'
partition2_addr = 'F000'
fireware_name = 'FW'
partition_magic_code = 1111904340

def check_pt_data(data):
    if partition_magic_code != bflb_utils.bytearray_to_int(data[0:4]):
        bflb_utils.printf('partition bin magic check fail ', binascii.hexlify(data[0:4]))
        return (False, 0, 0)
    table_count = bflb_utils.bytearray_to_int(data[6:7]) + (bflb_utils.bytearray_to_int(data[7:8]) << 8)
    if table_count > 16:
        bflb_utils.printf('error, pt enter size > 16')
        return (False, 0, 0)
    crcarray = bflb_utils.get_crc32_bytearray(data[:12])
    if data[12:16] != crcarray:
        bflb_utils.printf('pt table crc fail ', binascii.hexlify(crcarray))
        return (False, 0, 0)
    crcarray = bflb_utils.get_crc32_bytearray(data[16:16 + 36 * table_count])
    if data[16 + 36 * table_count:16 + 36 * table_count + 4] != crcarray:
        bflb_utils.printf('pt entries crc fail ', binascii.hexlify(crcarray))
        return (False, 0, 0)
    age = bflb_utils.bytearray_to_int(data[8:9]) + (bflb_utils.bytearray_to_int(data[9:10]) << 8) + (bflb_utils.bytearray_to_int(data[10:11]) << 16) + (bflb_utils.bytearray_to_int(data[11:12]) << 24)
    return (
     True, table_count, age)
# okay decompiling lib.bl602.partition_cfg_do.pyc
