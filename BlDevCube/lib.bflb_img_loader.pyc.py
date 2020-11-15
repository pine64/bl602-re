# decompyle3 version 3.3.2
# Python bytecode 3.7 (3394)
# Decompiled from: Python 3.8.5 (default, Jul 28 2020, 12:59:40) 
# [GCC 9.3.0]
# Embedded file name: lib\bflb_img_loader.py
import sys, time, binascii
from lib import bflb_utils
from lib import bflb_com_if_uart

class BFLB_Img_Loader(object):

    def __init__(self, chiptype='bl60x'):
        self.bflb_boot_if = bflb_com_if_uart.BFLB_UART_Port()
        self._imge_fp = None
        self._segcnt = 0
        self._chip_type = chiptype
        self._bootrom_cmds = {'get_boot_info':{'cmd_id':'10', 
          'data_len':'0000', 
          'callback':None}, 
         'load_boot_header':{'cmd_id':'11', 
          'data_len':'00b0', 
          'callback':None}, 
         'load_publick_key':{'cmd_id':'12', 
          'data_len':'0044', 
          'callback':None}, 
         'load_publick_key2':{'cmd_id':'13', 
          'data_len':'0044', 
          'callback':None}, 
         'load_signature':{'cmd_id':'14', 
          'data_len':'0004', 
          'callback':None}, 
         'load_signature2':{'cmd_id':'15', 
          'data_len':'0004', 
          'callback':None}, 
         'load_aes_iv':{'cmd_id':'16', 
          'data_len':'0014', 
          'callback':None}, 
         'load_seg_header':{'cmd_id':'17', 
          'data_len':'0010', 
          'callback':None}, 
         'load_seg_data':{'cmd_id':'18', 
          'data_len':'0100', 
          'callback':None}, 
         'check_image':{'cmd_id':'19', 
          'data_len':'0000', 
          'callback':None}, 
         'run_image':{'cmd_id':'1a', 
          'data_len':'0000', 
          'callback':None}, 
         'change_rate':{'cmd_id':'20', 
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
         'flash_boot':{'cmd_id':'33', 
          'data_len':'0000', 
          'callback':None}, 
         'efuse_write':{'cmd_id':'40', 
          'data_len':'0080', 
          'callback':None}, 
         'efuse_read':{'cmd_id':'41', 
          'data_len':'0000', 
          'callback':None}}

    def close_if(self):
        if self.bflb_boot_if != None:
            self.bflb_boot_if.if_close()

    def boot_process_load_cmd(self, section, read_len):
        read_data = bytearray(0)
        if read_len != 0:
            read_data = bytearray(self._imge_fp.read(read_len))
            if len(read_data) != read_len:
                bflb_utils.printf('read error,expected len=', read_len, 'read len=', len(read_data))
                return bytearray(0)
            if section == 'load_boot_header':
                tmp = bflb_utils.bytearray_reverse(read_data[120:124])
                self._segcnt = bflb_utils.bytearray_to_int(tmp)
                bflb_utils.printf('segcnt is ', self._segcnt)
            if section == 'load_signature' or (section == 'load_signature2'):
                tmp = bflb_utils.bytearray_reverse(read_data[0:4])
                sig_len = bflb_utils.bytearray_to_int(tmp)
                read_data = read_data + bytearray(self._imge_fp.read(sig_len + 4))
                if len(read_data) != sig_len + 8:
                    bflb_utils.printf('read signature error,expected len=', sig_len + 4, 'read len=', len(read_data))
            return read_data

    def boot_process_one_cmd(self, section, cmd_id, cmd_len):
        read_len = bflb_utils.bytearray_to_int(cmd_len)
        read_data = self._bootrom_cmds.get(section)['callback'](section, read_len)
        tmp = bytearray(2)
        tmp[0] = cmd_len[1]
        tmp[1] = cmd_len[0]
        data_read = bytearray(0)
        tmp = bflb_utils.int_to_2bytearray_l(len(read_data))
        data = cmd_id + bytearray(1) + tmp + read_data
        self.bflb_boot_if.if_write(data)
        if section == 'get_boot_info' or section == 'load_seg_header':
            res, data_read = self.bflb_boot_if.if_deal_response()
        else:
            res = self.bflb_boot_if.if_deal_ack(dmy_data=False)
        if res.startswith('OK') == True:
            pass
        else:
            try:
                bflb_utils.printf('result: ', res)
            except IOError:
                bflb_utils.printf('python IO error')

            return (res, data_read)

    def boot_process_one_section(self, section, data_len):
        cmd_id = bflb_utils.hexstr_to_bytearray(self._bootrom_cmds.get(section)['cmd_id'])
        if data_len == 0:
            length = bflb_utils.hexstr_to_bytearray(self._bootrom_cmds.get(section)['data_len'])
        else:
            length = bflb_utils.int_to_2bytearray_b(data_len)
        return self.boot_process_one_cmd(section, cmd_id, length)

    def boot_inf_change_rate(self, comnum, section, newrate):
        cmd_id = bflb_utils.hexstr_to_bytearray(self._bootrom_cmds.get(section)['cmd_id'])
        cmd_len = bflb_utils.hexstr_to_bytearray(self._bootrom_cmds.get(section)['data_len'])
        bflb_utils.printf('process', section, ',cmd=', binascii.hexlify(cmd_id), ',data len=', binascii.hexlify(cmd_len))
        baudrate = self.bflb_boot_if.if_get_rate()
        oldv = bflb_utils.int_to_4bytearray_l(baudrate)
        newv = bflb_utils.int_to_4bytearray_l(newrate)
        tmp = bytearray(3)
        tmp[1] = cmd_len[1]
        tmp[2] = cmd_len[0]
        data = cmd_id + tmp + oldv + newv
        self.bflb_boot_if.if_write(data)
        bflb_utils.printf()
        stime = 110 / float(baudrate) * 2
        if stime < 0.003:
            stime = 0.003
        time.sleep(stime)
        self.bflb_boot_if.if_close()
        self.bflb_boot_if.if_init(comnum, newrate)
        return self.bflb_boot_if.if_deal_ack(dmy_data=False)

    def boot_install_cmds_callback(self):
        self._bootrom_cmds.get('get_boot_info')['callback'] = self.boot_process_load_cmd
        self._bootrom_cmds.get('load_boot_header')['callback'] = self.boot_process_load_cmd
        self._bootrom_cmds.get('load_publick_key')['callback'] = self.boot_process_load_cmd
        self._bootrom_cmds.get('load_publick_key2')['callback'] = self.boot_process_load_cmd
        self._bootrom_cmds.get('load_signature')['callback'] = self.boot_process_load_cmd
        self._bootrom_cmds.get('load_signature2')['callback'] = self.boot_process_load_cmd
        self._bootrom_cmds.get('load_aes_iv')['callback'] = self.boot_process_load_cmd
        self._bootrom_cmds.get('load_seg_header')['callback'] = self.boot_process_load_cmd
        self._bootrom_cmds.get('load_seg_data')['callback'] = self.boot_process_load_cmd
        self._bootrom_cmds.get('check_image')['callback'] = self.boot_process_load_cmd
        self._bootrom_cmds.get('run_image')['callback'] = self.boot_process_load_cmd

    def boot_check_encrpt_sign(self, security):
        read_data = bytearray(self._imge_fp.read(8))
        self._imge_fp.seek(0, 0)
        if len(read_data) != 8:
            bflb_utils.printf('get image file boot header info fail')
            bflb_utils.set_error_code('0051')
            return 'FL'
        if read_data[4] != security:
            bflb_utils.printf("imge file encrypt information doesn't match device")
            bflb_utils.printf('imge file: ', binascii.hexlify(read_data[4]), 'device:', binascii.hexlify(security))
            bflb_utils.set_error_code('0051')
            return 'FL'
        return 'OK'

    def img_load_shake_hand(self, comnum, sh_baudrate, wk_baudrate, do_reset=False, reset_hold_time=100, shake_hand_delay=100, reset_revert=True, cutoff_time=0, shake_hand_retry=2):
        self.bflb_boot_if.if_init(comnum, sh_baudrate)
        self.boot_install_cmds_callback()
        if self._chip_type == 'bl602':
            self.bflb_boot_if.if_set_602a0_download_fix(False)
        ret = self.bflb_boot_if.if_shakehand(do_reset, reset_hold_time, shake_hand_delay, reset_revert, cutoff_time, shake_hand_retry)
        if self._chip_type == 'bl602':
            self.bflb_boot_if.if_set_602a0_download_fix(False)
        if ret != 'OK':
            bflb_utils.printf('shake hand fail')
            bflb_utils.set_error_code('0050')
            return 'shake hand fail'
        if sh_baudrate != wk_baudrate:
            if self.boot_inf_change_rate(comnum, 'change_rate', wk_baudrate) != 'OK':
                bflb_utils.printf('change rate fail')
                return 'change rate fail'
        bflb_utils.printf('shake hand success')

    def img_load_main_process(self, file, callback=None):
        encrypt_blk_size = 16
        self._imge_fp = open(file, 'rb')
        bflb_utils.printf('get_boot_info')
        ret, data_read = self.boot_process_one_section('get_boot_info', 0)
        if ret.startswith('OK') == False:
            bflb_utils.printf('fail')
            return ret
        data_read = binascii.hexlify(data_read)
        bflb_utils.printf('data read is ', data_read)
        if self._chip_type == 'bl60x':
            sign = int(data_read[8:10], 16) & 3
            encrypt = (int(data_read[8:10], 16) & 12) >> 2
        else:
            if self._chip_type == 'bl602' or (self._chip_type == 'bl702'):
                sign = int(data_read[8:10], 16)
                encrypt = int(data_read[10:12], 16)
        bflb_utils.printf('sign is ', sign, ' encrypt is ', encrypt)
        ret, dmy = self.boot_process_one_section('load_boot_header', 0)
        if ret.startswith('OK') == False:
            return ret
        if sign != 0:
            ret, dmy = self.boot_process_one_section('load_publick_key', 0)
            if ret.startswith('OK') == False:
                return ret
            if self._chip_type == 'bl60x':
                ret, dmy = self.boot_process_one_section('load_publick_key2', 0)
                if ret.startswith('OK') == False:
                    return ret
            ret, dmy = self.boot_process_one_section('load_signature', 0)
            if ret.startswith('OK') == False:
                return ret
            if self._chip_type == 'bl60x':
                ret, dmy = self.boot_process_one_section('load_signature2', 0)
                if ret.startswith('OK') == False:
                    return ret
        if encrypt != 0:
            ret, dmy = self.boot_process_one_section('load_aes_iv', 0)
            if ret.startswith('OK') == False:
                return ret
        segs = 0
        while segs < self._segcnt:
            send_len = 0
            segdata_len = 0
            ret, data_read = self.boot_process_one_section('load_seg_header', 0)
            if ret.startswith('OK') == False:
                return ret
            else:
                tmp = bflb_utils.bytearray_reverse(data_read[4:8])
                segdata_len = bflb_utils.bytearray_to_int(tmp)
                bflb_utils.printf('segdata_len is ', segdata_len)
                if encrypt == 1:
                    if segdata_len % encrypt_blk_size != 0:
                        segdata_len = segdata_len + encrypt_blk_size - segdata_len % encrypt_blk_size
                while send_len < segdata_len:
                    left = segdata_len - send_len
                    if left > 4080:
                        left = 4080
                    ret, dmy = self.boot_process_one_section('load_seg_data', left)
                    if ret.startswith('OK') == False:
                        return ret
                    send_len = send_len + left
                    bflb_utils.printf(send_len, '/', segdata_len)
                    if callback != None:
                        callback(send_len, segdata_len, sys._getframe().f_code.co_name)

                segs = segs + 1

        ret, dmy = self.boot_process_one_section('check_image', 0)
        return ret

    def efuse_read_process(self, comnum, sh_baudrate, wk_baudrate, callback=None, do_reset=False, reset_hold_time=100, shake_hand_delay=100, reset_revert=True, cutoff_time=0, shake_hand_retry=2):
        success = True
        bflb_utils.printf('efuse_read_process')
        ret = self.img_load_shake_hand(comnum, sh_baudrate, wk_baudrate, do_reset, reset_hold_time, shake_hand_delay, reset_revert, cutoff_time, shake_hand_retry)
        if ret == 'shake hand fail' or (ret == 'change rate fail'):
            bflb_utils.printf('shake hand fail')
            return False
        time.sleep(0.5)
        bflb_utils.printf('efuse_read: ')
        tmp = bflb_utils.int_to_2bytearray_l(8)
        start_addr = bflb_utils.int_to_4bytearray_l(0)
        read_len = bflb_utils.int_to_4bytearray_l(256)
        cmd_id = bflb_utils.hexstr_to_bytearray(self._bootrom_cmds.get('efuse_read')['cmd_id'])
        data = cmd_id + bytearray(1) + tmp + start_addr + read_len
        self.bflb_boot_if.if_write(data)
        ret, data_read = self.bflb_boot_if.if_deal_response()
        bflb_utils.printf('data_read: ')
        bflb_utils.printf(binascii.hexlify(data_read))
        bflb_utils.printf('Finished')
        if ret.startswith('OK') == False:
            bflb_utils.printf('fail')
            success = False
        return success

    def img_get_bootinfo(self, comnum, sh_baudrate, wk_baudrate, file1, file2, callback=None, do_reset=False, reset_hold_time=100, shake_hand_delay=100, reset_revert=True, cutoff_time=0, shake_hand_retry=2):
        bflb_utils.printf('========= image get bootinfo =========')
        success = True
        ret = self.img_load_shake_hand(comnum, sh_baudrate, wk_baudrate, do_reset, reset_hold_time, shake_hand_delay, reset_revert, cutoff_time, shake_hand_retry)
        if ret == 'shake hand fail' or (ret == 'change rate fail'):
            bflb_utils.printf('shake hand fail')
            self.bflb_boot_if.if_close()
            return False
        time.sleep(0.5)
        ret, data_read = self.boot_process_one_section('get_boot_info', 0)
        if ret.startswith('OK') == False:
            bflb_utils.printf('fail')
            return ret
        data_read = binascii.hexlify(data_read)
        bflb_utils.printf('data read is ', data_read)
        return (
         True, data_read)

    def img_load_process(self, comnum, sh_baudrate, wk_baudrate, file1, file2, callback=None, do_reset=False, reset_hold_time=100, shake_hand_delay=100, reset_revert=True, cutoff_time=0, shake_hand_retry=2):
        bflb_utils.printf('========= image load =========')
        success = True
        ret = self.img_load_shake_hand(comnum, sh_baudrate, wk_baudrate, do_reset, reset_hold_time, shake_hand_delay, reset_revert, cutoff_time, shake_hand_retry)
        if ret == 'shake hand fail' or (ret == 'change rate fail'):
            bflb_utils.printf('shake hand fail')
            self.bflb_boot_if.if_close()
            return False
        time.sleep(0.5)
        if file1 != None:
            if file1 != '':
                res = self.img_load_main_process(file1, callback)
                if res.startswith('OK') == False:
                    bflb_utils.printf('Img load fail')
                    self.bflb_boot_if.if_close()
                    return False
        if file2 != None:
            if file2 != '':
                res = self.img_load_main_process(file2, callback)
                if res.startswith('OK') == False:
                    bflb_utils.printf('Img load fail')
                    self.bflb_boot_if.if_close()
                    return False
        bflb_utils.printf('Run img')
        self._imge_fp.close()
        res, dmy = self.boot_process_one_section('run_image', 0)
        if res.startswith('OK') == False:
            bflb_utils.printf('Img run fail')
            success = False
        time.sleep(0.1)
        return success


if __name__ == '__main__':
    img_load_t = BFLB_Img_Loader()
    if len(sys.argv) == 3:
        img_load_t.img_load_process(sys.argv[1], 115200, 115200, sys.argv[2], '')
    elif len(sys.argv) == 4:
        img_load_t.img_load_process(sys.argv[1], 115200, 115200, sys.argv[2], sys.argv[3])
# okay decompiling lib.bflb_img_loader.pyc
