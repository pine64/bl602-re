# decompyle3 version 3.3.2
# Python bytecode 3.7 (3394)
# Decompiled from: Python 3.8.5 (default, Jul 28 2020, 12:59:40) 
# [GCC 9.3.0]
# Embedded file name: lib\bflb_eflash_loader.py
import os, sys, re, time, hashlib, binascii, getopt, subprocess, traceback, ecdsa
lib_path = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
sys.path.append(lib_path)
from lib import bflb_version
from lib import bflb_com_if_uart
from lib import bflb_com_if_jlink
from lib import bflb_com_if_openocd
from lib import bflb_img_loader
from lib import bflb_utils
from lib import bflb_ecdh
from lib import bflb_aes
from lib.bflb_utils import app_path, open_file
try:
    import changeconf as cgc
    conf_sign = True
except:
    conf_sign = False

class BFLB_Eflash_Loader(object):

    def __init__(self, chiptype='bl60x'):
        self._bflb_auto_download = False
        self._bflb_com_img_loader = None
        self._bflb_com_if = None
        self._bflb_com_device = ''
        self._bflb_boot_speed = 0
        self._bflb_com_speed = 0
        self._bflb_com_tx_size = 0
        self._erase_time_out = 10000
        self._need_shake_hand = True
        self._checksum_err_retry_limit = 2
        self._macaddr_check = bytearray(0)
        self._chip_type = chiptype
        self._loader_checksum_err_str = 'FL0103'
        self._com_cmds = {'change_rate':{'cmd_id':'20', 
          'data_len':'0008', 
          'callback':None}, 
         'reset':{'cmd_id':'21', 
          'data_len':'0000', 
          'callback':None}, 
         'flash_erase':{'cmd_id':'30', 
          'data_len':'0000', 
          'callback':None}, 
         'flash_write':{'cmd_id':'31', 
          'data_len':'0100', 
          'callback':None}, 
         'flash_read':{'cmd_id':'32', 
          'data_len':'0100', 
          'callback':None}, 
         'flash_read_jid':{'cmd_id':'36', 
          'data_len':'0000', 
          'callback':None}, 
         'flash_read_status_reg':{'cmd_id':'37', 
          'data_len':'0000', 
          'callback':None}, 
         'flash_write_status_reg':{'cmd_id':'38', 
          'data_len':'0000', 
          'callback':None}, 
         'flash_write_check':{'cmd_id':'3a', 
          'data_len':'0000', 
          'callback':None}, 
         'flash_set_para':{'cmd_id':'3b', 
          'data_len':'0000', 
          'callback':None}, 
         'flash_chiperase':{'cmd_id':'3c', 
          'data_len':'0000', 
          'callback':None}, 
         'flash_readSha':{'cmd_id':'3d', 
          'data_len':'0100', 
          'callback':None}, 
         'flash_xip_readSha':{'cmd_id':'3e', 
          'data_len':'0100', 
          'callback':None}, 
         'efuse_write':{'cmd_id':'40', 
          'data_len':'0080', 
          'callback':None}, 
         'efuse_read':{'cmd_id':'41', 
          'data_len':'0000', 
          'callback':None}, 
         'efuse_read_mac':{'cmd_id':'42', 
          'data_len':'0000', 
          'callback':None}, 
         'efuse_write_mac':{'cmd_id':'43', 
          'data_len':'0006', 
          'callback':None}, 
         'flash_xip_read_start':{'cmd_id':'60', 
          'data_len':'0080', 
          'callback':None}, 
         'flash_xip_read_finish':{'cmd_id':'61', 
          'data_len':'0000', 
          'callback':None}, 
         'log_read':{'cmd_id':'71', 
          'data_len':'0000', 
          'callback':None}, 
         'ecdh_get_pk':{'cmd_id':'90', 
          'data_len':'0000', 
          'callback':None}, 
         'ecdh_chanllenge':{'cmd_id':'91', 
          'data_len':'0000', 
          'callback':None}, 
         'efuse_security_write':{'cmd_id':'80', 
          'data_len':'0080', 
          'callback':None}, 
         'efuse_security_read':{'cmd_id':'81', 
          'data_len':'0000', 
          'callback':None}}
        self._resp_cmds = [
         'flash_read', 'efuse_read', 'efuse_read_mac', 'flash_readSha', 'flash_xip_readSha', 'flash_read_jid',
         'flash_read_status_reg', 'log_read', 'ecdh_get_pk', 'ecdh_chanllenge', 'efuse_security_read']

    def com_process_one_cmd(self, section, cmd_id, data_send):
        data_read = bytearray(0)
        data_len = bflb_utils.int_to_2bytearray_l(len(data_send))
        checksum = 0
        checksum += bflb_utils.bytearray_to_int(data_len[0:1]) + bflb_utils.bytearray_to_int(data_len[1:2])
        for i in range(len(data_send)):
            checksum += bflb_utils.bytearray_to_int(data_send[i:i + 1]) & 255

        data = cmd_id + bflb_utils.int_to_2bytearray_l(checksum & 255)[0:1] + data_len + data_send
        self._bflb_com_if.if_write(data)
        if section in self._resp_cmds:
            res, data_read = self._bflb_com_if.if_deal_response()
        else:
            res = self._bflb_com_if.if_deal_ack()
        return (
         res, data_read)

    def com_inf_change_rate(self, section, newrate):
        cmd_id = bflb_utils.hexstr_to_bytearray(self._com_cmds.get(section)['cmd_id'])
        cmd_len = bflb_utils.hexstr_to_bytearray(self._com_cmds.get(section)['data_len'])
        bflb_utils.printf('Process ', section, ', cmd=', binascii.hexlify(cmd_id).decode('utf-8'), ',data len=', binascii.hexlify(cmd_len).decode('utf-8'))
        baudrate = self._bflb_com_if.if_get_rate()
        oldv = bflb_utils.int_to_4bytearray_l(baudrate)
        newv = bflb_utils.int_to_4bytearray_l(newrate)
        tmp = bytearray(3)
        tmp[1] = cmd_len[1]
        tmp[2] = cmd_len[0]
        data = cmd_id + tmp + oldv + newv
        self._bflb_com_if.if_write(data)
        stime = 110 / float(baudrate) * 2
        if stime < 0.003:
            stime = 0.003
        time.sleep(stime)
        self._bflb_com_if.if_close()
        self._bflb_com_speed = newrate
        self._bflb_com_if.if_init(self._bflb_com_device, self._bflb_com_speed, self._chip_type)
        return self._bflb_com_if.if_deal_ack()

    def load_helper_bin(self, interface, helper_file, do_reset=False, reset_hold_time=100, shake_hand_delay=100, reset_revert=True, cutoff_time=0, shake_hand_retry=2):
        bflb_utils.printf('========= load eflash_loader.bin =========')
        if interface == 'jlink':
            bflb_utils.printf('Load eflash_loader.bin via jlink')
            self._bflb_com_if.if_init(self._bflb_com_device, self._bflb_com_speed, self._chip_type)
            self._bflb_com_if.reset_cpu()
            imge_fp = open_file(helper_file, 'rb')
            fw_data = bytearray(imge_fp.read())[192:] + bytearray(0)
            imge_fp.close()
            sub_module = __import__(('lib.' + self._chip_type), fromlist=[self._chip_type])
            load_addr = sub_module.jlink_load_cfg.jlink_load_addr
            self._bflb_com_if.if_raw_write(load_addr, fw_data)
            pc = fw_data[4:8]
            pc = bytes([pc[3], pc[2], pc[1], pc[0]])
            msp = fw_data[0:4]
            msp = bytes([msp[3], msp[2], msp[1], msp[0]])
            self._bflb_com_if.set_pc_msp(binascii.hexlify(pc), binascii.hexlify(msp).decode('utf-8'))
            return (True, None)
        if interface == 'openocd':
            bflb_utils.printf('Load eflash_loader.bin via openocd')
            self._bflb_com_if.if_init(self._bflb_com_device, self._bflb_com_speed, self._chip_type)
            self._bflb_com_if.halt_cpu()
            imge_fp = open_file(helper_file, 'rb')
            fw_data = bytearray(imge_fp.read())[192:] + bytearray(0)
            imge_fp.close()
            sub_module = __import__(('lib.' + self._chip_type), fromlist=[self._chip_type])
            load_addr = sub_module.openocd_load_cfg.openocd_load_addr
            self._bflb_com_if.if_raw_write(load_addr, fw_data)
            pc = fw_data[4:8]
            pc = bytes([pc[3], pc[2], pc[1], pc[0]])
            msp = fw_data[0:4]
            msp = bytes([msp[3], msp[2], msp[1], msp[0]])
            self._bflb_com_if.set_pc_msp(binascii.hexlify(pc), binascii.hexlify(msp).decode('utf-8'))
            return (True, None)
        if interface == 'uart':
            ret = True
            bflb_utils.printf('Load eflash_loader.bin via uart')
            start_time = time.time() * 1000
            ret = self._bflb_com_img_loader.img_load_process(self._bflb_com_device, self._bflb_boot_speed, self._bflb_boot_speed, helper_file, '', None, do_reset, reset_hold_time, shake_hand_delay, reset_revert, cutoff_time, shake_hand_retry)
            bflb_utils.printf('Load helper bin time cost(ms): ', time.time() * 1000 - start_time)
            return (
             ret, None)

    def get_boot_info(self, interface, helper_file, do_reset=False, reset_hold_time=100, shake_hand_delay=100, reset_revert=True, cutoff_time=0, shake_hand_retry=2):
        bflb_utils.printf('========= get_boot_info =========')
        if interface == 'uart':
            ret = True
            start_time = time.time() * 1000
            ret, bootinfo = self._bflb_com_img_loader.img_get_bootinfo(self._bflb_com_device, self._bflb_boot_speed, self._bflb_boot_speed, helper_file, '', None, do_reset, reset_hold_time, shake_hand_delay, reset_revert, cutoff_time, shake_hand_retry)
            bootinfo = bootinfo.decode('utf-8')
            bflb_utils.printf('========= chipID: ', bootinfo[34:36] + bootinfo[32:34] + bootinfo[30:32] + bootinfo[28:30] + bootinfo[26:28] + bootinfo[24:26], ' =========')
            bflb_utils.printf('Get bootinfo time cost(ms): ', time.time() * 1000 - start_time)
            return ret
        bflb_utils.printf('interface not fit')
        return False

    def error_code_print(self, code):
        bflb_utils.set_error_code(code)
        bflb_utils.printf('{"ErrorCode": "' + code + '","ErrorMsg":"' + bflb_utils.eflash_loader_error_code[code] + '"}')

    def img_load_shake_hand(self):
        self._bflb_com_if.if_init(self._bflb_com_device, self._bflb_com_speed, self._chip_type)
        if self._bflb_com_if.if_shakehand() != 'OK':
            self.error_code_print('0001')
            return False
        self._need_shake_hand = False
        return True

    def reset_cpu(self, shakehand=0):
        bflb_utils.printf('CPU Reset')
        if shakehand != 0:
            bflb_utils.printf('Flash erase shake hand')
            if self.img_load_shake_hand() == False:
                return False
        else:
            if self._bflb_com_if != None:
                self._bflb_com_if.if_close()
            self._bflb_com_if.if_init(self._bflb_com_device, self._bflb_com_speed, self._chip_type)
        cmd_id = bflb_utils.hexstr_to_bytearray(self._com_cmds.get('reset')['cmd_id'])
        ret, dmy = self.com_process_one_cmd('reset', cmd_id, bytearray(0))
        if ret.startswith('OK'):
            return True
        self.error_code_print('0004')
        return False

    def close_if(self, shakehand=0):
        if self._bflb_com_if != None:
            self._bflb_com_if.if_close()

    def efuse_compare(self, read_data, maskdata, write_data):
        i = 0
        for i in range(len(read_data)):
            if read_data[i] & maskdata[i] != write_data[i]:
                bflb_utils.printf('compare fail: ', i)
                bflb_utils.printf(read_data[i], write_data[i])
                return False

        return True

    def ecdh_encrypt_data(self, data):
        cryptor = bflb_aes.AESModeOfOperationCBC((bytearray.fromhex(self._ecdh_shared_key)), iv=(bytearray(16)))
        ciphertext = cryptor.encrypt(data)
        return ciphertext

    def ecdh_decrypt_data(self, data):
        cryptor = bflb_aes.AESModeOfOperationCBC((bytearray.fromhex(self._ecdh_shared_key)), iv=(bytearray(16)))
        plaintext = cryptor.decrypt(data)
        return plaintext

    def efuse_read_mac_addr_process(self, shakehand=1, callback=None):
        readdata = bytearray(0)
        if shakehand != 0:
            bflb_utils.printf('Flash load shake hand')
            if self.img_load_shake_hand() == False:
                return (False, None)
        cmd_id = bflb_utils.hexstr_to_bytearray(self._com_cmds.get('efuse_read_mac')['cmd_id'])
        ret, data_read = self.com_process_one_cmd('efuse_read_mac', cmd_id, bytearray(0))
        bflb_utils.printf('Read mac addr ')
        if ret.startswith('OK') == False:
            self.error_code_print('0023')
            return (False, None)
        readdata += data_read
        crcarray = bflb_utils.get_crc32_bytearray(readdata[:6])
        if crcarray != readdata[6:10]:
            bflb_utils.printf(binascii.hexlify(crcarray))
            bflb_utils.printf(binascii.hexlify(readdata[6:10]))
            self.error_code_print('0025')
            return (False, None)
        return (True, readdata[:6])

    def efuse_write_mac_addr_process(self, macaddr, shakehand=1, callback=None):
        if shakehand != 0:
            bflb_utils.printf('Flash load shake hand')
            if self.img_load_shake_hand() == False:
                return (False, None)
        cmd_id = bflb_utils.hexstr_to_bytearray(self._com_cmds.get('efuse_write_mac')['cmd_id'])
        ret, data_read = self.com_process_one_cmd('efuse_write_mac', cmd_id, macaddr)
        bflb_utils.printf('Write mac addr ')
        if ret.startswith('OK') == False:
            self.error_code_print('0024')
            return (False, None)
        return (True, None)

    def efuse_read_main_process(self, start_addr, data_len, shakehand=0, file=None, security_read=False):
        readdata = bytearray(0)
        if shakehand != 0:
            bflb_utils.printf('Flash load shake hand')
            if self.img_load_shake_hand() == False:
                return (False, None)
        if security_read:
            cmd_name = 'efuse_security_read'
        else:
            cmd_name = 'efuse_read'
        cmd_id = bflb_utils.hexstr_to_bytearray(self._com_cmds.get(cmd_name)['cmd_id'])
        data_send = bflb_utils.int_to_4bytearray_l(start_addr) + bflb_utils.int_to_4bytearray_l(data_len)
        ret, data_read = self.com_process_one_cmd(cmd_name, cmd_id, data_send)
        bflb_utils.printf('Read efuse ')
        if ret.startswith('OK') == False:
            self.error_code_print('0020')
            return (False, None)
        readdata += data_read
        if security_read:
            readdata = self.ecdh_decrypt_data(readdata)
        bflb_utils.printf('Finished')
        if file != None:
            fp = open_file(file, 'wb+')
            fp.write(readdata)
            fp.close()
        return (True, readdata)

    def efuse_load_main_process(self, file, maskfile, verify=0, security_write=False):
        if file != None:
            bflb_utils.printf('Load file: ', file)
            fp = open_file(file, 'rb')
            efuse_data = bytearray(fp.read()) + bytearray(0)
            fp.close()
            fp = open_file(maskfile, 'rb')
            mask_data = bytearray(fp.read()) + bytearray(0)
            fp.close()
        else:
            efuse_data = self._efuse_data
            mask_data = self._efuse_mask_data
        if security_write:
            if self.get_ecdh_shared_key() != True:
                return False
        bflb_utils.printf('Load efuse 0')
        if security_write:
            cmd_name = 'efuse_security_write'
        else:
            cmd_name = 'efuse_write'
        cmd_id = bflb_utils.hexstr_to_bytearray(self._com_cmds.get(cmd_name)['cmd_id'])
        data_send = bflb_utils.int_to_4bytearray_l(0) + efuse_data[0:124] + bytearray(4)
        if security_write:
            data_send = self.ecdh_encrypt_data(data_send)
        ret, dmy = self.com_process_one_cmd(cmd_name, cmd_id, data_send)
        if ret.startswith('OK') == False:
            bflb_utils.printf('Write Fail')
            self.error_code_print('0021')
            return False
        if verify >= 1:
            ret, read_data = self.efuse_read_main_process(0, 128, shakehand=0, file=None, security_read=security_write)
            if ret == True and self.efuse_compare(read_data, mask_data[0:124] + bytearray(4), efuse_data[0:124] + bytearray(4)):
                bflb_utils.printf('Verify success')
            else:
                bflb_utils.printf('Read: ')
                bflb_utils.printf(binascii.hexlify(read_data[0:124]).decode('utf-8'))
                bflb_utils.printf('Expected: ')
                bflb_utils.printf(binascii.hexlify(efuse_data[0:124]).decode('utf-8'))
                bflb_utils.printf('Verify fail')
                self.error_code_print('0022')
                return False
        data_send = bflb_utils.int_to_4bytearray_l(112) + bytearray(12) + efuse_data[124:128]
        if security_write:
            data_send = self.ecdh_encrypt_data(data_send)
        ret, dmy = self.com_process_one_cmd(cmd_name, cmd_id, data_send)
        if ret.startswith('OK') == False:
            bflb_utils.printf('Write Fail')
            self.error_code_print('0021')
            return False
        if verify >= 1:
            ret, read_data = self.efuse_read_main_process(112, 16, shakehand=0, file=None, security_read=security_write)
            if ret == True and self.efuse_compare(read_data, bytearray(12) + mask_data[124:128], bytearray(12) + efuse_data[124:128]):
                bflb_utils.printf('Verify success')
            else:
                bflb_utils.printf('Read: ')
                bflb_utils.printf(binascii.hexlify(read_data[12:16]))
                bflb_utils.printf('Expected: ')
                bflb_utils.printf(binascii.hexlify(efuse_data[124:128]))
                bflb_utils.printf('Verify fail')
                self.error_code_print('0022')
                return False
        if len(efuse_data) > 128:
            bflb_utils.printf('Load efuse 1')
            if security_write:
                cmd_name = 'efuse_security_write'
            else:
                cmd_name = 'efuse_write'
            cmd_id = bflb_utils.hexstr_to_bytearray(self._com_cmds.get(cmd_name)['cmd_id'])
            data_send = bflb_utils.int_to_4bytearray_l(128) + efuse_data[128:252] + bytearray(4)
            if security_write:
                data_send = self.ecdh_encrypt_data(data_send)
            ret, dmy = self.com_process_one_cmd(cmd_name, cmd_id, data_send)
            if ret.startswith('OK') == False:
                bflb_utils.printf('Write Fail')
                self.error_code_print('0021')
                return False
            if verify >= 1:
                ret, read_data = self.efuse_read_main_process(128, 128, shakehand=0, file=None, security_read=security_write)
                if ret == True and self.efuse_compare(read_data, mask_data[128:252] + bytearray(4), efuse_data[128:252] + bytearray(4)):
                    bflb_utils.printf('Verify success')
                else:
                    bflb_utils.printf('Verify fail')
                    self.error_code_print('0022')
            data_send = bflb_utils.int_to_4bytearray_l(240) + bytearray(12) + efuse_data[252:256]
            if security_write:
                data_send = self.ecdh_encrypt_data(data_send)
            ret, dmy = self.com_process_one_cmd(cmd_name, cmd_id, data_send)
            if ret.startswith('OK') == False:
                bflb_utils.printf('Write Fail')
                self.error_code_print('0021')
                return False
            if verify >= 1:
                ret, read_data = self.efuse_read_main_process(240, 16, shakehand=0, file=None, security_read=security_write)
                if ret == True and self.efuse_compare(read_data, bytearray(12) + mask_data[252:256], bytearray(12) + efuse_data[252:256]):
                    bflb_utils.printf('Verify success')
                else:
                    bflb_utils.printf('Verify fail')
                    self.error_code_print('0022')
        bflb_utils.printf('Finished')
        return True

    def efuse_load_specified(self, file, maskfile, verify=0, shakehand=0, security_write=False):
        bflb_utils.printf('========= efuse load =========')
        if shakehand != 0:
            bflb_utils.printf('Efuse load shake hand')
            ret = self.img_load_shake_hand()
            if ret == False:
                return False
        ret = self.efuse_load_main_process(file, maskfile, verify, security_write)
        return ret

    def efuse_load_macaddr(self, macaddr, verify=0, shakehand=0, security_write=False):
        bflb_utils.printf('========= efuse macaddr load =========')
        cnt = 0
        mac = macaddr[:12]
        for i in range(0, 12):
            temp = int(mac[i:i + 1], 16)
            for j in range(0, 4):
                if temp & 1 << j == 0:
                    cnt += 1

        data_efuse = mac[10:12] + mac[8:10] + mac[6:8] + mac[4:6] + mac[2:4] + mac[0:2] + '%02X' % cnt
        efuseaddrstr = '108'
        efusedatastr = data_efuse
        efusedata = bytearray(128)
        efusemaskdata = bytearray(128)
        zeromac = bytearray(6)
        ret, efusedata = self.efuse_read_main_process(0, 128, shakehand, file=None, security_read=security_write)
        if ret == False:
            return False
        if efusedata[20:26] == zeromac:
            bflb_utils.printf('Efuse load mac slot 1')
            efuseaddrstr = '20'
        elif efusedata[108:114] == zeromac:
            bflb_utils.printf('Efuse load mac slot 2')
            efuseaddrstr = '108'
        elif efusedata[4:10] == zeromac:
            bflb_utils.printf('Efuse load mac slot 3')
            efuseaddrstr = '4'
        else:
            bflb_utils.printf('Efuse mac slot 1/2/3 all not empty')
            return False
        for num in range(int(efuseaddrstr), int(efuseaddrstr) + int(len(efusedatastr) / 2)):
            efusedata[num] |= bytearray.fromhex(efusedatastr)[(num - int(efuseaddrstr))]
            efusemaskdata[num] |= 255

        for num in range(0, 128):
            if efusedata[num] != 0:
                efusemaskdata[num] |= 255

        self._efuse_data = efusedata
        self._efuse_mask_data = efusemaskdata
        ret = self.efuse_load_specified(None, None, verify, 0, security_write)
        if ret == False:
            return False
        return ret

    def efuse_load_aes_key(self, type, value, verify=0, shakehand=0, security_write=False):
        bflb_utils.printf('========= efuse key load =========')
        sub_module = __import__(('lib.' + self._chip_type), fromlist=[self._chip_type])
        self._efuse_data, self._efuse_mask_data = sub_module.efuse_data_create.efuse_data_create(type, value)
        if shakehand != 0:
            bflb_utils.printf('Efuse load shake hand')
            ret = self.img_load_shake_hand()
            if ret == False:
                return False
        ret = self.efuse_load_main_process(None, None, verify, security_write)
        return ret

    def efuse_load_data_process(self, data, addr, verify=0, shakehand=0, security_write=False):
        bflb_utils.printf('========= efuse data load =========')
        if shakehand != False:
            bflb_utils.printf('Flash load shake hand')
            if self.img_load_shake_hand() == False:
                return (False, None)
        if security_write:
            if self.get_ecdh_shared_key() != True:
                return False
        bflb_utils.printf('Load efuse data')
        try:
            if security_write:
                cmd_name = 'efuse_security_write'
            else:
                cmd_name = 'efuse_write'
            cmd_id = bflb_utils.hexstr_to_bytearray(self._com_cmds.get(cmd_name)['cmd_id'])
            start_addr = int(addr) - int(addr) % 16
            efuse_data = bytearray(int(addr) % 16) + bytearray.fromhex(data) + bytearray(16 - (int(addr) + int(len(data) / 2)) % 16)
            bflb_utils.printf('efuse_data: ', start_addr)
            bflb_utils.printf(binascii.hexlify(efuse_data))
            mask_data = bytearray(len(efuse_data))
            data_send = bflb_utils.int_to_4bytearray_l(start_addr) + efuse_data
            if security_write:
                data_send = self.ecdh_encrypt_data(data_send)
            ret, dmy = self.com_process_one_cmd(cmd_name, cmd_id, data_send)
            if ret.startswith('OK') == False:
                bflb_utils.printf('Write Fail')
                self.error_code_print('0021')
                return False
            for num in range(0, len(efuse_data)):
                if efuse_data[num] != 0:
                    mask_data[num] |= 255

        except Exception as err:
            try:
                bflb_utils.printf(err)
                return False
            finally:
                err = None
                del err

        if verify >= 1:
            ret, read_data = self.efuse_read_main_process(start_addr, (len(efuse_data)), 0, file=None, security_read=security_write)
            if ret == True and self.efuse_compare(read_data, mask_data, efuse_data):
                bflb_utils.printf('Verify success')
            else:
                bflb_utils.printf('Read: ')
                bflb_utils.printf(binascii.hexlify(read_data))
                bflb_utils.printf('Expected: ')
                bflb_utils.printf(binascii.hexlify(efuse_data))
                bflb_utils.printf('Verify fail')
                bflb_utils.printf(binascii.hexlify(mask_data))
                self.error_code_print('0022')
                return False

    def flash_read_jedec_id_process(self, callback=None):
        bflb_utils.printf('========= flash read jedec ID =========')
        readdata = bytearray(0)
        if self._need_shake_hand != False:
            bflb_utils.printf('Flash load shake hand')
            if self.img_load_shake_hand() == False:
                return (False, None)
        cmd_id = bflb_utils.hexstr_to_bytearray(self._com_cmds.get('flash_read_jid')['cmd_id'])
        ret, data_read = self.com_process_one_cmd('flash_read_jid', cmd_id, bytearray(0))
        bflb_utils.printf('Read flash jedec ID ')
        if ret.startswith('OK') == False:
            self.error_code_print('0030')
            return (False, None)
        readdata += data_read
        bflb_utils.printf('readdata: ')
        bflb_utils.printf(binascii.hexlify(readdata))
        bflb_utils.printf('Finished')
        return (
         True, readdata[:3])

    def flash_read_status_reg_process(self, cmd, len, callback=None):
        bflb_utils.printf('========= flash read status register =========')
        readdata = bytearray(0)
        if self._need_shake_hand != False:
            bflb_utils.printf('Flash load shake hand')
            if self.img_load_shake_hand() == False:
                return (False, None)
        cmd_id = bflb_utils.hexstr_to_bytearray(self._com_cmds.get('flash_read_status_reg')['cmd_id'])
        data_send = bflb_utils.int_to_4bytearray_l(int(cmd, 16)) + bflb_utils.int_to_4bytearray_l(len)
        ret, data_read = self.com_process_one_cmd('flash_read_status_reg', cmd_id, data_send)
        bflb_utils.printf('Read flash status register ')
        if ret.startswith('OK') == False:
            self.error_code_print('0031')
            return (False, None)
        readdata += data_read
        bflb_utils.printf('readdata: ')
        bflb_utils.printf(binascii.hexlify(readdata))
        bflb_utils.printf('Finished')
        return (
         True, readdata)

    def flash_write_status_reg_process(self, cmd, len, write_data, callback=None):
        bflb_utils.printf('========= flash write status register =========')
        if self._need_shake_hand != False:
            bflb_utils.printf('Flash load shake hand')
            if self.img_load_shake_hand() == False:
                return (False, 'Flash load shake hand fail')
        bflb_utils.printf('write_data ', write_data)
        cmd_id = bflb_utils.hexstr_to_bytearray(self._com_cmds.get('flash_write_status_reg')['cmd_id'])
        data_send = bflb_utils.int_to_4bytearray_l(int(cmd, 16)) + bflb_utils.int_to_4bytearray_l(len) + bflb_utils.int_to_4bytearray_l(int(write_data, 16))
        ret, data_read = self.com_process_one_cmd('flash_write_status_reg', cmd_id, data_send)
        bflb_utils.printf('Write flash status register ')
        if ret.startswith('OK') == False:
            self.error_code_print('0032')
            return (False, 'Write fail')
        bflb_utils.printf('Finished')
        return (True, None)

    def flash_erase_main_process(self, start_addr, end_addr, shakehand=0):
        bflb_utils.printf('========= flash erase =========')
        bflb_utils.printf('Erase flash  from ', hex(start_addr), ' to ', hex(end_addr))
        if shakehand != 0:
            bflb_utils.printf('Flash erase shake hand')
            if self.img_load_shake_hand() == False:
                bflb_utils.printf('Shake hand fail')
                return False
        start_time = time.time() * 1000
        self._bflb_com_if.if_set_rx_timeout(self._erase_time_out / 1000)
        cmd_id = bflb_utils.hexstr_to_bytearray(self._com_cmds.get('flash_erase')['cmd_id'])
        data_send = bflb_utils.int_to_4bytearray_l(start_addr) + bflb_utils.int_to_4bytearray_l(end_addr)
        try_cnt = 0
        while True:
            ret, dmy = self.com_process_one_cmd('flash_erase', cmd_id, data_send)
            if ret.startswith('OK'):
                break
            if try_cnt < self._checksum_err_retry_limit:
                bflb_utils.printf('Retry')
                try_cnt += 1
            else:
                bflb_utils.printf('Erase Fail')
                self._bflb_com_if.if_set_rx_timeout(2.0)
                self.error_code_print('0034')
                return False

        bflb_utils.printf('Erase time cost(ms): ', time.time() * 1000 - start_time)
        self._bflb_com_if.if_set_rx_timeout(2.0)
        return True

    def flash_chiperase_main_process(self, shakehand=0):
        bflb_utils.printf('Flash Chip Erase')
        if shakehand != 0:
            bflb_utils.printf('Flash erase shake hand')
            if self.img_load_shake_hand() == False:
                bflb_utils.printf('Shake hand fail')
                return False
        start_time = time.time() * 1000
        self._bflb_com_if.if_set_rx_timeout(self._erase_time_out / 1000)
        cmd_id = bflb_utils.hexstr_to_bytearray(self._com_cmds.get('flash_chiperase')['cmd_id'])
        try_cnt = 0
        while True:
            ret, dmy = self.com_process_one_cmd('flash_chiperase', cmd_id, bytearray(0))
            if ret.startswith('OK'):
                break
            if try_cnt < self._checksum_err_retry_limit:
                bflb_utils.printf('Retry')
                try_cnt += 1
            else:
                bflb_utils.printf('Erase Fail')
                self._bflb_com_if.if_set_rx_timeout(2.0)
                self.error_code_print('0033')
                return False

        bflb_utils.printf('Chip erase time cost(ms): ', time.time() * 1000 - start_time)
        self._bflb_com_if.if_set_rx_timeout(2.0)
        return True

    def flash_set_para_main_process(self, flash_pin, flash_para, shakehand=0):
        bflb_utils.printf('Set  flash  config ')
        if shakehand != 0:
            bflb_utils.printf('Flash set para shake hand')
            if self.img_load_shake_hand() == False:
                return False
        start_time = time.time() * 1000
        cmd_id = bflb_utils.hexstr_to_bytearray(self._com_cmds.get('flash_set_para')['cmd_id'])
        data_send = bflb_utils.int_to_4bytearray_l(flash_pin) + flash_para
        try_cnt = 0
        while True:
            ret, dmy = self.com_process_one_cmd('flash_set_para', cmd_id, data_send)
            if ret.startswith('OK'):
                break
            if try_cnt < self._checksum_err_retry_limit:
                bflb_utils.printf('Retry')
                try_cnt += 1
            else:
                self.error_code_print('003B')
                return False

        bflb_utils.printf('Set para time cost(ms): ', time.time() * 1000 - start_time)
        return True

    def flash_read_main_process(self, start_addr, flash_data_len, shakehand=0, file=None, callback=None):
        bflb_utils.printf('========= flash read =========')
        i = 0
        cur_len = 0
        readdata = bytearray(0)
        if shakehand != 0:
            bflb_utils.printf('Flash load shake hand')
            if self.img_load_shake_hand() == False:
                return False
        start_time = time.time() * 1000
        log = ''
        while i < flash_data_len:
            cur_len = flash_data_len - i
            if cur_len > self._bflb_com_tx_size - 8:
                cur_len = self._bflb_com_tx_size - 8
            else:
                cmd_id = bflb_utils.hexstr_to_bytearray(self._com_cmds.get('flash_read')['cmd_id'])
                data_send = bflb_utils.int_to_4bytearray_l(i + start_addr) + bflb_utils.int_to_4bytearray_l(cur_len)
                try_cnt = 0
                while True:
                    ret, data_read = self.com_process_one_cmd('flash_read', cmd_id, data_send)
                    if ret.startswith('OK'):
                        break
                    if try_cnt < self._checksum_err_retry_limit:
                        bflb_utils.printf('Retry')
                        try_cnt += 1
                    else:
                        self.error_code_print('0035')
                        return (False, None)

                i += cur_len
                log += 'Read ' + str(i) + '/' + str(flash_data_len)
                if len(log) > 50:
                    bflb_utils.printf(log)
                    log = ''
                else:
                    log += '\n'
                if callback != None:
                    callback(i, flash_data_len, 'APP_VR')
                readdata += data_read

        bflb_utils.printf(log)
        bflb_utils.printf('Flash read time cost(ms): ', time.time() * 1000 - start_time)
        bflb_utils.printf('Finished')
        if file != None:
            fp = open_file(file, 'wb+')
            fp.write(readdata)
            fp.close()
        return (True, readdata)

    def flash_readSha_main_process(self, start_addr, flash_data_len, shakehand=0, file=None, callback=None):
        readdata = bytearray(0)
        if shakehand != 0:
            bflb_utils.printf('Flash load shake hand')
            if self.img_load_shake_hand() == False:
                return (False, None)
        start_time = time.time() * 1000
        log = ''
        cmd_id = bflb_utils.hexstr_to_bytearray(self._com_cmds.get('flash_readSha')['cmd_id'])
        data_send = bflb_utils.int_to_4bytearray_l(start_addr) + bflb_utils.int_to_4bytearray_l(flash_data_len)
        try_cnt = 0
        while True:
            ret, data_read = self.com_process_one_cmd('flash_readSha', cmd_id, data_send)
            if ret.startswith('OK'):
                break
            if try_cnt < self._checksum_err_retry_limit:
                bflb_utils.printf('Retry')
                try_cnt += 1
            else:
                self.error_code_print('0038')
                return (False, None)

        log += 'Read Sha256/' + str(flash_data_len)
        if callback != None:
            callback(flash_data_len, flash_data_len, 'APP_VR')
        readdata += data_read
        bflb_utils.printf(log)
        bflb_utils.printf('Flash readsha time cost(ms): ', time.time() * 1000 - start_time)
        bflb_utils.printf('Finished')
        if file != None:
            fp = open_file(file, 'wb+')
            fp.write(readdata)
            fp.close()
        return (True, readdata)

    def flash_xip_readSha_main_process(self, start_addr, flash_data_len, shakehand=0, file=None, callback=None):
        readdata = bytearray(0)
        if shakehand != 0:
            bflb_utils.printf('Flash load shake hand')
            if self.img_load_shake_hand() == False:
                return (False, None)
        cmd_id = bflb_utils.hexstr_to_bytearray(self._com_cmds.get('flash_xip_read_start')['cmd_id'])
        ret, dmy = self.com_process_one_cmd('flash_xip_read_start', cmd_id, bytearray(0))
        if ret.startswith('OK') == False:
            self.error_code_print('0039')
            return (False, None)
        start_time = time.time() * 1000
        log = ''
        cmd_id = bflb_utils.hexstr_to_bytearray(self._com_cmds.get('flash_xip_readSha')['cmd_id'])
        data_send = bflb_utils.int_to_4bytearray_l(start_addr) + bflb_utils.int_to_4bytearray_l(flash_data_len)
        try_cnt = 0
        while True:
            ret, data_read = self.com_process_one_cmd('flash_xip_readSha', cmd_id, data_send)
            if ret.startswith('OK'):
                break
            if try_cnt < self._checksum_err_retry_limit:
                bflb_utils.printf('Retry')
                try_cnt += 1
            else:
                bflb_utils.printf('Read Fail')
                cmd_id = bflb_utils.hexstr_to_bytearray(self._com_cmds.get('flash_xip_read_finish')['cmd_id'])
                ret, dmy = self.com_process_one_cmd('flash_xip_read_finish', cmd_id, bytearray(0))
                if ret.startswith('OK') == False:
                    self.error_code_print('0039')
                    return (False, None)
                return (False, None)

        log += 'Read Sha256/' + str(flash_data_len)
        if callback != None:
            callback(flash_data_len, flash_data_len, 'APP_VR')
        readdata += data_read
        bflb_utils.printf(log)
        bflb_utils.printf('Flash xip readsha time cost(ms): ', time.time() * 1000 - start_time)
        bflb_utils.printf('Finished')
        if file != None:
            fp = open_file(file, 'wb+')
            fp.write(readdata)
            fp.close()
        cmd_id = bflb_utils.hexstr_to_bytearray(self._com_cmds.get('flash_xip_read_finish')['cmd_id'])
        ret, dmy = self.com_process_one_cmd('flash_xip_read_finish', cmd_id, bytearray(0))
        if ret.startswith('OK') == False:
            self.error_code_print('0039')
            return (False, None)
        return (True, readdata)

    def flash_write_check_main_process(self, shakehand=0):
        bflb_utils.printf('Write check')
        if shakehand != 0:
            bflb_utils.printf('Flash load shake hand')
            if self.img_load_shake_hand() == False:
                return False
        cmd_id = bflb_utils.hexstr_to_bytearray(self._com_cmds.get('flash_write_check')['cmd_id'])
        try_cnt = 0
        while True:
            ret, dmy = self.com_process_one_cmd('flash_write_check', cmd_id, bytearray(0))
            if ret.startswith('OK'):
                break
            if try_cnt < self._checksum_err_retry_limit:
                bflb_utils.printf('Retry')
                try_cnt += 1
            else:
                self.error_code_print('0037')
                return False

        return True

    def flash_load_main_process(self, file, start_addr, erase=1, callback=None):
        fp = open_file(file, 'rb')
        flash_data = bytearray(fp.read())
        fp.close()
        flash_data_len = len(flash_data)
        i = 0
        cur_len = 0
        if erase == 1:
            ret = self.flash_erase_main_process(start_addr, start_addr + flash_data_len - 1)
            if ret == False:
                return False
        start_time = time.time() * 1000
        log = ''
        while i < flash_data_len:
            cur_len = flash_data_len - i
            if cur_len > self._bflb_com_tx_size - 8:
                cur_len = self._bflb_com_tx_size - 8
            cmd_id = bflb_utils.hexstr_to_bytearray(self._com_cmds.get('flash_write')['cmd_id'])
            data_send = bflb_utils.int_to_4bytearray_l(i + start_addr) + flash_data[i:i + cur_len]
            try_cnt = 0
            while True:
                ret, dmy = self.com_process_one_cmd('flash_write', cmd_id, data_send)
                if ret.startswith('OK'):
                    break
                if try_cnt < self._checksum_err_retry_limit:
                    bflb_utils.printf('Retry')
                    try_cnt += 1
                else:
                    self.error_code_print('0036')
                    return False

            i += cur_len
            log += 'Load ' + str(i) + '/' + str(flash_data_len) + ' {"progress":' + str(i * 100 // flash_data_len) + '}'
            if len(log) > 50:
                bflb_utils.printf(log)
                log = ''
            else:
                log += '\n'
            if callback != None:
                callback(i, flash_data_len, 'APP_WR')

        bflb_utils.printf(log)
        if self.flash_write_check_main_process() == False:
            bflb_utils.printf('Flash write check fail')
            return False
        bflb_utils.printf('Flash load time cost(ms): ', time.time() * 1000 - start_time)
        bflb_utils.printf('Finished')
        return True

    def flash_load_specified(self, file, start_addr, erase=1, verify=0, shakehand=0, callback=None):
        bflb_utils.printf('========= flash load =========')
        if shakehand != 0:
            bflb_utils.printf('Flash load shake hand')
            if self.img_load_shake_hand() == False:
                return False
        ret = self.flash_load_main_process(file, start_addr, erase, callback)
        if ret == False:
            bflb_utils.printf('Flash load fail')
            return ret
        fw_sha256 = ''
        fp = open_file(file, 'rb')
        flash_data = fp.read()
        fp.close()
        flash_data_len = len(flash_data)
        sh = hashlib.sha256()
        sh.update(flash_data)
        fw_sha256 = sh.hexdigest()
        fw_sha256 = bflb_utils.hexstr_to_bytearray(fw_sha256)
        bflb_utils.printf('Sha caled by host: ', binascii.hexlify(fw_sha256).decode('utf-8'))
        del sh
        bflb_utils.printf('xip mode Verify')
        ret, read_data = self.flash_xip_readSha_main_process(start_addr, flash_data_len, 0, None, callback)
        bflb_utils.printf('Sha caled by dev: ', binascii.hexlify(read_data).decode('utf-8'))
        if ret == True and read_data == fw_sha256:
            bflb_utils.printf('Verify success')
        else:
            bflb_utils.printf('Verify fail')
            self.error_code_print('003E')
            ret = False
        if verify > 0:
            fp = open_file(file, 'rb')
            flash_data = bytearray(fp.read())
            fp.close()
            flash_data_len = len(flash_data)
            ret, read_data = self.flash_read_main_process(start_addr, flash_data_len, 0, None, callback)
            if ret == True and read_data == flash_data:
                bflb_utils.printf('Verify success')
            else:
                bflb_utils.printf('Verify fail')
                self.error_code_print('003E')
                ret = False
            bflb_utils.printf('sbus mode Verify')
            ret, read_data = self.flash_readSha_main_process(start_addr, flash_data_len, 0, None, callback)
            bflb_utils.printf('Sha caled by dev: ', binascii.hexlify(read_data).decode('utf-8'))
            if ret == True and read_data == fw_sha256:
                bflb_utils.printf('Verify success')
            else:
                bflb_utils.printf('Verify fail')
                self.error_code_print('003E')
                ret = False
        return ret

    def log_read_process(self, shakehand=1, callback=None):
        readdata = bytearray(0)
        try:
            if shakehand != 0:
                bflb_utils.printf('Flash load shake hand')
                if self.img_load_shake_hand() == False:
                    bflb_utils.printf('Shake hand redo')
            cmd_id = bflb_utils.hexstr_to_bytearray(self._com_cmds.get('log_read')['cmd_id'])
            ret, data_read = self.com_process_one_cmd('log_read', cmd_id, bytearray(0))
            bflb_utils.printf('Read log ')
            if ret.startswith('OK') == False:
                bflb_utils.printf('Read Fail')
                return (False, None)
            readdata += data_read
            bflb_utils.printf('log: ')
            bflb_utils.printf('========================================================')
            bflb_utils.printf(readdata.decode('utf-8'))
            bflb_utils.printf('========================================================')
            bflb_utils.printf('Finished')
        except Exception as err:
            try:
                bflb_utils.printf(err)
                self.error_code_print('0006')
                traceback.print_exc(limit=5, file=(sys.stdout))
                return (False, None)
            finally:
                err = None
                del err

        return (
         True, readdata)

    def get_active_fwbin_addr(self, ptaddr1, ptaddr2, entry_name, shakehand=1, callback=None):
        fwaddr = 0
        maxlen = 0
        ptdata = bytearray(0)
        table_count = 0
        try:
            if shakehand != 0:
                bflb_utils.printf('Flash load shake hand')
                if self.img_load_shake_hand() == False:
                    return (False, 0)
            bflb_utils.printf('read partition 1 0x', ptaddr1)
            ret, ptdata1 = self.flash_read_main_process(int(ptaddr1, 16), 768, 0, None, callback)
            if ret == False:
                bflb_utils.printf('read pt 1 data fail')
            bflb_utils.printf('read partition 2 0x', ptaddr2)
            ret, ptdata2 = self.flash_read_main_process(int(ptaddr2, 16), 768, 0, None, callback)
            if ret == False:
                bflb_utils.printf('read pt 2 data fail')
            sub_module = __import__(('lib.' + self._chip_type), fromlist=[self._chip_type])
            ret1, table_count1, age1 = sub_module.partition_cfg_do.check_pt_data(ptdata1)
            if ret1 == False:
                bflb_utils.printf('pt table 1 check fail')
            ret2, table_count2, age2 = sub_module.partition_cfg_do.check_pt_data(ptdata2)
            if ret2 == False:
                bflb_utils.printf('pt table 2 check fail')
            if ret1 != False and ret2 != False:
                if age1 >= age2:
                    ptdata = ptdata1[16:]
                    table_count = table_count1
                else:
                    ptdata = ptdata2[16:]
                    table_count = table_count2
            elif ret1 != False:
                ptdata = ptdata1[16:]
                table_count = table_count1
            elif ret2 != False:
                ptdata = ptdata2[16:]
                table_count = table_count2
            else:
                bflb_utils.printf('pt table all check fail')
                return (False, 0, 0)
            for i in range(table_count):
                if entry_name == ptdata[i * 36 + 3:i * 36 + 3 + len(entry_name)].decode(encoding='utf-8'):
                    addr_start = 0
                    if bflb_utils.bytearray_to_int(ptdata[i * 36 + 2:i * 36 + 3]) != 0:
                        addr_start = i * 36 + 16
                    else:
                        addr_start = i * 36 + 12
                    fwaddr = bflb_utils.bytearray_to_int(ptdata[addr_start + 0:addr_start + 1]) + (bflb_utils.bytearray_to_int(ptdata[addr_start + 1:addr_start + 2]) << 8) + (bflb_utils.bytearray_to_int(ptdata[addr_start + 2:addr_start + 3]) << 16) + (bflb_utils.bytearray_to_int(ptdata[addr_start + 3:addr_start + 4]) << 24)
                    maxlen = bflb_utils.bytearray_to_int(ptdata[addr_start + 0 + 8:addr_start + 1 + 8]) + (bflb_utils.bytearray_to_int(ptdata[addr_start + 1 + 8:addr_start + 2 + 8]) << 8) + (bflb_utils.bytearray_to_int(ptdata[addr_start + 2 + 8:addr_start + 3 + 8]) << 16) + (bflb_utils.bytearray_to_int(ptdata[addr_start + 3 + 8:addr_start + 4 + 8]) << 24)

        except Exception as err:
            try:
                bflb_utils.printf(err)
                traceback.print_exc(limit=5, file=(sys.stdout))
                return (False, 0, 0)
            finally:
                err = None
                del err

        return (
         True, fwaddr, maxlen)

    def load_firmware_bin(self, file, verify, shakehand=1, callback=None):
        entry_name = ''
        sub_module = __import__(('lib.' + self._chip_type), fromlist=[self._chip_type])
        pt_addr1 = sub_module.partition_cfg_do.partition1_addr
        pt_addr2 = sub_module.partition_cfg_do.partition2_addr
        entry_name = sub_module.partition_cfg_do.fireware_name
        ret, fwaddr, max_len = self.get_active_fwbin_addr(pt_addr1, pt_addr2, entry_name, shakehand, callback)
        if ret == False:
            bflb_utils.printf('get active fwbin addr fail')
            return False
        if os.path.getsize(file) > max_len:
            bflb_utils.printf('fwbin size > max len ', os.path.getsize(file))
            return False
        bflb_utils.printf('========= programming firmare ', file, ' to ', hex(fwaddr))
        ret = self.flash_load_specified(file, fwaddr, 1, verify, 0, callback)
        return ret

    def get_suitable_conf_name(self, cfg_dir, flash_id):
        conf_files = []
        for home, dirs, files in os.walk(cfg_dir):
            for filename in files:
                if filename.split('_')[(-1)] == flash_id + '.conf':
                    conf_files.append(filename)

        if len(conf_files) > 1:
            bflb_utils.printf('Flash id duplicate and alternative is:')
            for i in range(len(conf_files)):
                tmp = conf_files[i].split('.')[0]
                bflb_utils.printf('%d:%s' % (i + 1, tmp))

            return conf_files[i]
        if len(conf_files) == 1:
            return conf_files[0]
        return ''

    def is_conf_exist(self, flash_id):
        if conf_sign:
            cfg_dir = app_path + '/common/flash_config/' + cgc.lower_name + '/'
        else:
            cfg_dir = app_path + '/common/flash_config/' + self._chip_type + '/'
        conf_name = self.get_suitable_conf_name(cfg_dir, flash_id)
        if os.path.isfile(cfg_dir + conf_name) == False:
            return False
        return True

    def usage(self):
        bflb_utils.printf(sys.argv[0])
        bflb_utils.printf('-p/-e/-r/-n      :operation type: -e for flash erase, -p for efuse/flash program -r for efuse/flash read -n for eflash loader environment init')
        bflb_utils.printf('-t/--type=       :program type: efuse or flash')
        bflb_utils.printf('-c/--config=     :config file name')
        bflb_utils.printf('--start=         :start address of operation')
        bflb_utils.printf('--end=           :end address of operation')
        bflb_utils.printf('--file=          :file to store read data or file to program')
        bflb_utils.printf('--addr=          :address to program')
        bflb_utils.printf('-h/--help        :helper')
        bflb_utils.printf('for exmple')
        bflb_utils.printf('-e --start=00000000 --end=0000FFFF -c  config.ini')
        bflb_utils.printf('-p -t flash -c  config.ini')
        bflb_utils.printf('-p -t flash --file=1.bin,2.bin --addr=00000000,00001000 -c  config.ini')
        bflb_utils.printf('-r -t flash --start=00000000 --end=0000FFFF --file=flash.bin -c  config.ini')

    def efuse_flash_loader(self, options, eflash_loader_cfg, eflash_loader_bin, callback=None, create_simple_callback=None, create_img_callback=None):
        ret = None
        bflb_utils.printf('Version: ', bflb_version.eflash_loader_version_text)
        start_time = time.time() * 1000
        try:
            retry = -1
            update_cutoff_time = True
            while 1:
                if self._bflb_com_if != None:
                    self._bflb_com_if.if_close()
                else:
                    bflb_utils.printf('Program Start')
                    ret, flash_burn_retry = self.efuse_flash_loader_do(options, eflash_loader_cfg, eflash_loader_bin, callback, update_cutoff_time, False, create_simple_callback, create_img_callback)
                    if retry == -1:
                        retry = flash_burn_retry
                    if ret == True:
                        bflb_utils.printf('All time cost(ms): ', time.time() * 1000 - start_time)
                        time.sleep(0.1)
                        if '-n' not in options:
                            if self._bflb_com_if != None:
                                self._bflb_com_if.if_close()
                        bflb_utils.printf('[All Success]')
                        return True
                    retry -= 1
                    bflb_utils.printf('Burn Retry')
                    bflb_utils.printf(retry)
                if retry <= 0:
                    break

            bflb_utils.printf('Burn return with retry fail')
            if self._bflb_com_if != None:
                self._bflb_com_if.if_close()
            return bflb_utils.errorcode_msg()
        except Exception as err:
            try:
                bflb_utils.printf('efuse_flash_loader fail')
                bflb_utils.printf(err)
                if self._bflb_com_if != None:
                    self._bflb_com_if.if_close()
                return bflb_utils.errorcode_msg()
            finally:
                err = None
                del err

    def efuse_flash_loader2(self, options, eflash_loader_cfg, eflash_loader_bin, callback=None, port=''):
        if port != None and port != '':
            import socket
            BUFSIZE = 1024
            bflb_utils.printf('Listen on Port: ', port)
            ip_port = ('127.0.0.1', int(port))
            server = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
            server.bind(ip_port)
            while True:
                data, client_addr = server.recvfrom(1024)

            server.close()
        else:
            self.efuse_flash_loader(options, eflash_loader_cfg, eflash_loader_bin, callback)

    def efuse_flash_loader_do(self, options, eflash_loader_cfg, eflash_loader_bin, callback=None, update_cutoff_time=True, cpu_reset=False, create_simple_callback=None, create_img_callback=None):
        bflb_utils.printf('option is ', options)
        load_help_bin = True
        config_file = None
        eflash_loader_file = None
        try:
            type = []
            start = ''
            end = ''
            opt = ''
            file = ''
            massbin = ''
            fwbin = ''
            address = ''
            load_str = ''
            load_data = ''
            interface = ''
            device = ''
            load_speed = ''
            aeskey = ''
            chip_type = ''
            xtal_type = ''
            load_file = ''
            macaddr = ''
            opts, args = getopt.getopt(options, 'eprnbvt:c:i:d:Hh', [
             'type=', 'config=', 'load_str=', 'start=', 'end=', 'file=', 'mass=', 'userarea=', 'mac=', 'data=',
             'addr=', 'interface=', 'device=', 'speed=', 'key=', 'chip=', 'xtal=', 'loadfile=', 'auto=', 'help'])
            for option, value in opts:
                if option in ('-h', '-H'):
                    self.usage()
                else:
                    if option in ('-e', '-r', '-p', '-n', '-b', '-v'):
                        opt = option
                    if option in ('-t', '--type'):
                        type.append(value)
                    if option in ('-c', '--config'):
                        if config_file == None:
                            config_file = value
                    if option in ('-i', '--interface'):
                        interface = value
                    if option in ('-d', '--device'):
                        device = value
                    if option in ('--speed', ):
                        load_speed = value
                    if option in ('--mass', ):
                        massbin = value
                    if option in ('--userarea', ):
                        fwbin = value
                    if option in ('--load_str', ):
                        load_str = value
                    if option in ('--start', ):
                        start = value
                    if option in ('--end', ):
                        end = value
                    if option in ('--file', ):
                        file = value
                    if option in ('--data', ):
                        load_data = value
                    if option in ('--addr', ):
                        address = value
                    if option in ('--key', ):
                        aeskey = value
                    if option in ('--chip', ):
                        chip_type = value
                    if option in ('--xtal', ):
                        xtal_type = value.replace('m', 'M').replace('rc', 'RC').replace('none', 'None')
                    if option in ('--loadfile', ):
                        load_file = value
                    if option in ('--mac', ):
                        macaddr = value
                if option in ('--auto', ):
                    if value == 'true' or value == 'True' or value == 'TRUE':
                        self._bflb_auto_download = True
                    else:
                        self._bflb_auto_download = False

        except getopt.GetoptError as err:
            try:
                bflb_utils.printf(err)
                self.usage()
                self.error_code_print('0002')
                return (False, 0)
            finally:
                err = None
                del err

        if chip_type != '':
            if xtal_type != '':
                eflash_loader_file = chip_type.lower() + '/eflash_loader/eflash_loader_' + xtal_type.replace('.', 'p').lower() + '.bin'
        if load_file != '':
            if eflash_loader_file == '':
                eflash_loader_file = load_file
        if config_file == None:
            if chip_type != '':
                config_file = chip_type.lower() + '/eflash_loader/eflash_loader_cfg.ini'
            else:
                config_file = 'eflash_loader_cfg.ini'
        if opt == '-v':
            if conf_sign:
                pass
            else:
                bflb_utils.printf('Version: ', bflb_version.eflash_loader_version_text)
            return (True, 0)
        load_str = load_str.replace('*', '\n').replace('%', ' ')
        if config_file == None:
            if load_str == '':
                if eflash_loader_cfg == None:
                    self.usage()
                    return (False, 0)
        if load_str == '':
            if eflash_loader_cfg != None:
                config_file = eflash_loader_cfg
            else:
                config_file = os.path.join(app_path, config_file)
            if isinstance(config_file, bflb_utils.BFConfigParser):
                cfg = config_file
            else:
                bflb_utils.printf('Config file: ', config_file)
                if os.path.exists(config_file):
                    cfg = bflb_utils.BFConfigParser()
                    cfg.read(config_file)
                else:
                    bflb_utils.printf('Config file not found')
                    self.error_code_print('000B')
                    return (False, 0)
        else:
            cfg = bflb_utils.BFConfigParser()
            bflb_utils.printf('Config str: ', load_str)
        if interface == '':
            interface = cfg.get('LOAD_CFG', 'interface')
        if device == '':
            self._bflb_com_device = cfg.get('LOAD_CFG', 'device')
        else:
            self._bflb_com_device = device
            bflb_utils.printf('com device: ', self._bflb_com_device)
        verify = int(cfg.get('LOAD_CFG', 'verify'))
        erase = int(cfg.get('LOAD_CFG', 'erase'))
        self._bflb_com_tx_size = int(cfg.get('LOAD_CFG', 'tx_size'))
        do_reset = False
        reset_hold_time = 100
        shake_hand_delay = 100
        reset_revert = True
        cutoff_time = 0
        shake_hand_retry = 2
        flash_burn_retry = 1
        if cfg.has_option('LOAD_CFG', 'erase_time_out'):
            self._erase_time_out = int(cfg.get('LOAD_CFG', 'erase_time_out'))
        if cfg.has_option('LOAD_CFG', 'shake_hand_retry'):
            shake_hand_retry = int(cfg.get('LOAD_CFG', 'shake_hand_retry'))
        if cfg.has_option('LOAD_CFG', 'flash_burn_retry'):
            flash_burn_retry = int(cfg.get('LOAD_CFG', 'flash_burn_retry'))
        if cfg.has_option('LOAD_CFG', 'checksum_err_retry'):
            self._checksum_err_retry_limit = int(cfg.get('LOAD_CFG', 'checksum_err_retry'))
        if cfg.has_option('LOAD_CFG', 'chiptype'):
            self._chip_type = cfg.get('LOAD_CFG', 'chiptype')
        if cfg.has_option('LOAD_CFG', 'eflash_loader_file'):
            if eflash_loader_file == None:
                eflash_loader_file = cfg.get('LOAD_CFG', 'eflash_loader_file')
        if cfg.has_option('LOAD_CFG', 'auto_burn'):
            if 'true' == cfg.get('LOAD_CFG', 'auto_burn'):
                self._bflb_auto_download = True
            else:
                self._bflb_auto_download = False
        if chip_type != '':
            self._chip_type = chip_type
        if eflash_loader_bin != None:
            eflash_loader_file = eflash_loader_bin
        else:
            eflash_loader_file = os.path.join(app_path, eflash_loader_file)
        bflb_utils.printf('chiptype: ', self._chip_type)
        if interface == 'uart':
            bflb_utils.printf('========= Interface is Uart =========')
            self._bflb_com_img_loader = bflb_img_loader.BFLB_Img_Loader(self._chip_type)
            self._bflb_com_if = self._bflb_com_img_loader.bflb_boot_if
            if load_speed != '':
                self._bflb_com_speed = int(load_speed, 10)
                bflb_utils.printf('com speed: ', self._bflb_com_speed)
            else:
                self._bflb_com_speed = int(cfg.get('LOAD_CFG', 'speed_uart_load'))
            self._bflb_boot_speed = int(cfg.get('LOAD_CFG', 'speed_uart_boot'))
            if cfg.has_option('LOAD_CFG', 'reset_hold_time'):
                reset_hold_time = int(cfg.get('LOAD_CFG', 'reset_hold_time'))
            if cfg.has_option('LOAD_CFG', 'shake_hand_delay'):
                shake_hand_delay = int(cfg.get('LOAD_CFG', 'shake_hand_delay'))
            if cfg.has_option('LOAD_CFG', 'do_reset'):
                do_reset = cfg.get('LOAD_CFG', 'do_reset') == 'true'
            if cfg.has_option('LOAD_CFG', 'reset_revert'):
                reset_revert = cfg.get('LOAD_CFG', 'reset_revert') == 'true'
            if not update_cutoff_time or cfg.has_option('LOAD_CFG', 'cutoff_time'):
                cutoff_time = int(cfg.get('LOAD_CFG', 'cutoff_time'))
        elif interface == 'jlink':
            bflb_utils.printf('========= Interface is JLink =========')
            self._bflb_com_if = bflb_com_if_jlink.BFLB_JLink_Port()
            if load_speed != '':
                self._bflb_com_speed = int(load_speed, 10) // 1000
                bflb_utils.printf('com speed: %dk' % self._bflb_com_speed)
            else:
                self._bflb_com_speed = int(cfg.get('LOAD_CFG', 'speed_jlink'))
            self._bflb_boot_speed = self._bflb_com_speed
        elif interface == 'openocd':
            bflb_utils.printf('========= Interface is Openocd =========')
            self._bflb_com_if = bflb_com_if_openocd.BFLB_Openocd_Port()
            if load_speed != '':
                self._bflb_com_speed = int(load_speed, 10) // 1000
                bflb_utils.printf('com speed: %dk' % self._bflb_com_speed)
            else:
                self._bflb_com_speed = int(cfg.get('LOAD_CFG', 'speed_jlink'))
            self._bflb_boot_speed = self._bflb_com_speed
        else:
            bflb_utils.printf(interface + ' is NOT supported ')
            return (
             False, flash_burn_retry)
        if load_help_bin == True:
            bflb_utils.printf('Eflash load helper file: ', eflash_loader_file)
            try:
                if opt == '-b':
                    if self.get_boot_info(interface, eflash_loader_file, do_reset, reset_hold_time, shake_hand_delay, reset_revert, cutoff_time, shake_hand_retry) == False:
                        self.error_code_print('0003')
                        return (
                         False, flash_burn_retry)
                elif cfg.has_option('LOAD_CFG', 'load_bin') and cfg.get('LOAD_CFG', 'load_bin') == 'false':
                    bflb_utils.printf('Not load eflash_loader.bin')
                elif self.load_helper_bin(interface, eflash_loader_file, do_reset, reset_hold_time, shake_hand_delay, reset_revert, cutoff_time, shake_hand_retry)[0] == False:
                    self.error_code_print('0003')
                    return (
                     False, flash_burn_retry)
            except Exception as err:
                try:
                    bflb_utils.printf(err)
                    self.error_code_print('0003')
                    return (
                     False, flash_burn_retry)
                finally:
                    err = None
                    del err

            time.sleep(0.1)
            self._need_shake_hand = True
            macaddr_check = False
            mac_addr = bytearray(0)
            if cfg.has_option('LOAD_CFG', 'check_mac'):
                macaddr_check = cfg.get('LOAD_CFG', 'check_mac') == 'true'
            if macaddr_check:
                ret, mac_addr = self.efuse_read_mac_addr_process(self._need_shake_hand)
                if ret == False:
                    bflb_utils.printf('read mac addr fail!!')
                    return (
                     False, flash_burn_retry)
                if mac_addr == self._macaddr_check:
                    self.error_code_print('000A')
                    return (
                     False, flash_burn_retry)
                self._need_shake_hand = False
            if 'flash' in type:
                flash_pin = 0
                flash_clock_div = 0
                flash_io_mode = 0
                flash_para_file = cfg.get('FLASH_CFG', 'flash_para')
                if cfg.get('FLASH_CFG', 'flash_pin') != '':
                    flash_pin = int(cfg.get('FLASH_CFG', 'flash_pin'))
                if self._chip_type == 'bl602' or (self._chip_type == 'bl702'):
                    if cfg.has_option('FLASH_CFG', 'flash_clock_div'):
                        flash_clock_div = int(cfg.get('FLASH_CFG', 'flash_clock_div'))
                    if cfg.has_option('FLASH_CFG', 'flash_io_mode'):
                        flash_io_mode = int(cfg.get('FLASH_CFG', 'flash_io_mode'))
                flash_set = flash_pin + (flash_clock_div << 8) + (flash_io_mode << 16)
                if flash_para_file != '':
                    fp = open_file(flash_para_file, 'rb')
                    flash_para = bytearray(fp.read())
                    fp.close()
                    ret = self.flash_set_para_main_process(flash_set, flash_para, self._need_shake_hand)
                    self._need_shake_hand = False
                    if ret == False:
                        return (
                         False, flash_burn_retry)
                else:
                    if flash_set != 262144 and not self._chip_type != 'bl60x':
                        if not flash_pin != 0 or self._chip_type == 'bl60x':
                            bflb_utils.printf('set flash cfg: %X' % flash_set)
                            ret = self.flash_set_para_main_process(flash_set, bytearray(0), self._need_shake_hand)
                            self._need_shake_hand = False
                            if ret == False:
                                return (
                                 False, flash_burn_retry)
                if opt == '-n':
                    return (
                     True, flash_burn_retry)
                if opt == '-p':
                    if len(type) == 0:
                        bflb_utils.printf('No target select')
                        return (
                         False, flash_burn_retry)
                    bflb_utils.printf('Program operation')
                    if 'flash' in type:
                        ret, data = self.flash_read_jedec_id_process(self._need_shake_hand)
                        if ret:
                            self._need_shake_hand = False
                            data = binascii.hexlify(data).decode('utf-8')
                            flash_id = cfg.get('FLASH_CFG', 'flash_id')
                            if data != flash_id:
                                if self.is_conf_exist(data) == True:
                                    bflb_utils.Update_Cfg(cfg, 'FLASH_CFG', 'flash_id', data)
                                    cfg.write(config_file, 'w+')
                                    if create_img_callback != None:
                                        create_img_callback()
                                    elif create_simple_callback != None:
                                        create_simple_callback()
                                else:
                                    self.error_code_print('003D')
                                    return (
                                     False, flash_burn_retry)
                        else:
                            self.error_code_print('0030')
                            return (
                             False, flash_burn_retry)
                        if fwbin != '':
                            bflb_utils.printf('load firmware bin ', fwbin)
                            ret = self.load_firmware_bin(fwbin, verify, self._need_shake_hand, callback)
                            if False == ret:
                                self.error_code_print('003C')
                                return (
                                 False, flash_burn_retry)
                            self._need_shake_hand = False
                            bflb_utils.printf('Program fwbin Finished')
                        elif massbin != '':
                            bflb_utils.printf('load mass bin ', massbin)
                            bflb_utils.printf('========= programming mass ', massbin, ' to ', hex(0))
                            ret = self.flash_load_specified(massbin, 0, 1, verify, self._need_shake_hand, callback)
                            if False == ret:
                                return (False, flash_burn_retry)
                            self._need_shake_hand = False
                            bflb_utils.printf('Program massbin Finished')
                        else:
                            if file != '':
                                flash_file = file.split(',')
                                address = address.split(',')
                                erase = 1
                            else:
                                flash_file = re.compile('\\s+').split(cfg.get('FLASH_CFG', 'file'))
                                address = re.compile('\\s+').split(cfg.get('FLASH_CFG', 'address'))
                            if erase == 2:
                                ret = self.flash_chiperase_main_process(self._need_shake_hand)
                                if ret == False:
                                    return (
                                     False, flash_burn_retry)
                                self._need_shake_hand = False
                                erase = 0
                            if len(flash_file) > 0:
                                i = 0
                                try:
                                    ret = False
                                    while i < len(flash_file):
                                        bflb_utils.printf('Dealing Index ', i)
                                        bflb_utils.printf('========= programming ', flash_file[i].replace('\\', '/'), ' to 0x', address[i])
                                        ret = self.flash_load_specified(flash_file[i].replace('\\', '/'), int(address[i], 16), erase, verify, self._need_shake_hand, callback)
                                        if False == ret:
                                            return (False, flash_burn_retry)
                                        else:
                                            i += 1
                                            if callback:
                                                callback(i, len(flash_file), 'program')
                                            self._need_shake_hand = False

                                    bflb_utils.printf('Program Finished')
                                except Exception as err:
                                    try:
                                        bflb_utils.printf(err)
                                        traceback.print_exc(limit=5, file=(sys.stdout))
                                        return (
                                         False, flash_burn_retry)
                                    finally:
                                        err = None
                                        del err

                            else:
                                bflb_utils.printf('No input file to program to flash')
                    if 'efuse' in type:
                        if macaddr != '':
                            bflb_utils.printf('write efuse macaddr ', macaddr)
                            ret = self.efuse_load_macaddr(macaddr, verify=1, shakehand=(self._need_shake_hand))
                            if ret == False:
                                bflb_utils.printf('load macaddr fail')
                                return False
                        elif aeskey != '':
                            bflb_utils.printf('write efuse aes key ', aeskey)
                            ret = self.efuse_load_aes_key('flash_aes_key', [aeskey, ''], verify=1, shakehand=(self._need_shake_hand))
                            if ret == False:
                                bflb_utils.printf('load aes key fail')
                                return False
                        elif load_data != '' and address != '':
                            bflb_utils.printf('write efuse data ', load_data, ' to ', address)
                            security_write = cfg.get('EFUSE_CFG', 'security_write') == 'true'
                            ret = self.efuse_load_data_process(load_data, address, verify, self._need_shake_hand, security_write)
                            if ret == False:
                                bflb_utils.printf('write efuse data fail')
                                return False
                        else:
                            if file != '':
                                efuse_file = file.split(',')
                            else:
                                efuse_file = cfg.get('EFUSE_CFG', 'file')
                            maskfile = cfg.get('EFUSE_CFG', 'maskfile')
                            security_write = cfg.get('EFUSE_CFG', 'security_write') == 'true'
                            ret = self.efuse_load_specified(efuse_file, maskfile, verify, self._need_shake_hand, security_write)
                            if ret == False:
                                return (False, flash_burn_retry)
                        self._need_shake_hand = False
                if opt == '-e':
                    bflb_utils.printf('Erase flash operation\n')
                    if end == '0':
                        ret = self.flash_chiperase_main_process(self._need_shake_hand)
                        if ret == False:
                            return (False, flash_burn_retry)
                    else:
                        ret = self.flash_erase_main_process(int(start, 16), int(end, 16), 1)
                        if ret == False:
                            return (False, flash_burn_retry)
                    bflb_utils.printf('Erase flash OK')
                if opt == '-r':
                    bflb_utils.printf('Read operation')
                    if len(type) == 0:
                        bflb_utils.printf('No target select')
                        return (
                         False, flash_burn_retry)
                    if not 'flash' in type or start == '' or end == '':
                        self.flash_read_jedec_id_process(callback)
                    else:
                        start_addr = int(start, 16)
                        end_addr = int(end, 16)
                        self.flash_read_main_process(start_addr, end_addr - start_addr + 1, self._need_shake_hand, file, callback)
                    if 'efuse' in type:
                        start_addr = int(start, 16)
                        end_addr = int(end, 16)
                        if False == self.efuse_read_main_process(start_addr, end_addr - start_addr + 1, 1, file):
                            return (
                             False, flash_burn_retry)
                if cpu_reset:
                    self.reset_cpu()
            self._macaddr_check = mac_addr
            return (
             True, flash_burn_retry)


if __name__ == '__main__':
    eflash_loader_t = BFLB_Eflash_Loader('bl60x')
    try:
        ret = eflash_loader_t.efuse_flash_loader(sys.argv[1:], None, None)
        if ret != True:
            eflash_loader_t.error_code_print('0005')
        eflash_loader_t.close_if()
        time.sleep(2)
    except Exception as err:
        try:
            bflb_utils.printf(err)
        finally:
            err = None
            del err

    while eflash_loader_t._bflb_auto_download:
        try:
            ret = eflash_loader_t.efuse_flash_loader(sys.argv[1:], None, None)
            if ret != True:
                eflash_loader_t.error_code_print('0005')
            eflash_loader_t.close_if()
            time.sleep(2)
        except Exception as err:
            try:
                bflb_utils.printf(err)
            finally:
                err = None
                del err

        time.sleep(0.2)
# okay decompiling lib.bflb_eflash_loader.pyc
