# decompyle3 version 3.3.2
# Python bytecode 3.7 (3394)
# Decompiled from: Python 3.8.5 (default, Jul 28 2020, 12:59:40) 
# [GCC 9.3.0]
# Embedded file name: lib\bflb_pt_creater.py
from lib import bflb_toml as toml
from lib import bflb_utils

class PtCreater:

    def __init__(self, config_file):
        self.parsed_toml = toml.load(config_file)
        self.entry_max = 16
        self.pt_new = False

    def __create_pt_table_do(self, lists, file):
        entry_table = bytearray(36 * self.entry_max)
        entry_cnt = 0
        for item in lists:
            entry_type = item['type']
            entry_name = item['name']
            entry_device = item['device']
            entry_addr0 = item['address0']
            entry_addr1 = item['address1']
            entry_maxlen0 = item['size0']
            entry_maxlen1 = item['size1']
            entry_len = item['len']
            entry_table[36 * entry_cnt + 0] = bflb_utils.int_to_2bytearray_l(entry_type)[0]
            if len(entry_name) >= 8:
                bflb_utils.printf('Entry name is too long!')
                return False
            else:
                entry_table[36 * entry_cnt + 3:36 * entry_cnt + 3 + len(entry_name)] = bytearray(entry_name, 'utf-8') + bytearray(0)
                entry_table[36 * entry_cnt + 12:36 * entry_cnt + 16] = bflb_utils.int_to_4bytearray_l(entry_addr0)
                entry_table[36 * entry_cnt + 16:36 * entry_cnt + 20] = bflb_utils.int_to_4bytearray_l(entry_addr1)
                entry_table[36 * entry_cnt + 20:36 * entry_cnt + 24] = bflb_utils.int_to_4bytearray_l(entry_maxlen0)
                entry_table[36 * entry_cnt + 24:36 * entry_cnt + 28] = bflb_utils.int_to_4bytearray_l(entry_maxlen1)
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
        fp = open(file, 'wb+')
        fp.write(data)
        fp.close()
        return True

    def create_pt_table(self, file):
        self.pt_new = True
        return self._PtCreater__create_pt_table_do(self.parsed_toml['pt_entry'], file)

    def get_pt_table_addr(self):
        addr0 = self.parsed_toml['pt_table']['address0']
        addr1 = self.parsed_toml['pt_table']['address1']
        return (
         addr0, addr1)

    def construct_table(self):
        parcel = {}
        if self.pt_new == True:
            parcel['pt_new'] = True
        else:
            parcel['pt_new'] = False
        parcel['pt_addr0'] = self.parsed_toml['pt_table']['address0']
        parcel['pt_addr1'] = self.parsed_toml['pt_table']['address1']
        for tbl_item in self.parsed_toml['pt_entry']:
            if tbl_item['name'] == 'factory':
                parcel['conf_addr'] = tbl_item['address0']
            else:
                if tbl_item['name'] == 'FW_CPU0':
                    parcel['fw_cpu0_addr'] = tbl_item['address0']
                if tbl_item['name'] == 'FW':
                    parcel['fw_addr'] = tbl_item['address0']
                if tbl_item['name'] == 'media':
                    parcel['media_addr'] = tbl_item['address0']
            if tbl_item['name'] == 'mfg':
                parcel['mfg_addr'] = tbl_item['address0']

        return parcel


if __name__ == '__main__':
    pt_helper = PtCreater('partition_cfg.toml')
    pt_helper.create_pt_table('partition_test.bin')
    pt_helper.get_pt_table_addr()
# okay decompiling lib.bflb_pt_creater.pyc
