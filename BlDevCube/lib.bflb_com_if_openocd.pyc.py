# decompyle3 version 3.3.2
# Python bytecode 3.7 (3394)
# Decompiled from: Python 3.8.5 (default, Jul 28 2020, 12:59:40) 
# [GCC 9.3.0]
# Embedded file name: lib\bflb_com_if_openocd.py
import os, sys, time, binascii, pylink, subprocess, threading, telnetlib
from lib import bflb_utils
from lib.bflb_utils import app_path
path_dll = os.path.join(app_path, 'JLinkARM_32.dll')

class ThreadOpenocdServer(threading.Thread):

    def __init__(self, chiptype='bl60x'):
        threading.Thread.__init__(self)
        self.timeToQuit = threading.Event()
        self.timeToQuit.clear()
        self._chiptype = chiptype

    def stop(self):
        self.timeToQuit.set()

    def run(self):
        p = subprocess.Popen('openocd.exe -f openocd/openocd-usb-sipeed.cfg', shell=True,
          stdin=(subprocess.PIPE),
          stdout=(subprocess.PIPE),
          stderr=(subprocess.PIPE))
        out, err = p.communicate()
        bflb_utils.printf(out)


class BFLB_Openocd_Port(object):

    def __init__(self):
        self._speed = 5000
        self._rx_timeout = 10000
        self._openocd_shake_hand_addr = '20000000'
        self._openocd_data_addr = '20000004'
        self._inited = False
        self._chiptype = 'bl60x'
        self._openocd_run_addr = '22010000'
        self.tn = telnetlib.Telnet()

    def if_init(self, device, rate, chiptype='bl60x'):
        if self._inited == False:
            sub_module = __import__(('lib.' + chiptype), fromlist=[chiptype])
            self._openocd_shake_hand_addr = sub_module.openocd_load_cfg.openocd_shake_hand_addr
            self._openocd_data_addr = sub_module.openocd_load_cfg.openocd_data_addr
            self._openocd_run_addr = sub_module.openocd_load_cfg.openocd_run_addr
            self._speed = rate
            self._inited = True
            self._chiptype = chiptype
            self._openocd_th = ThreadOpenocdServer(chiptype)
            self._openocd_th.setDaemon(True)
            self._openocd_th.start()
            try:
                self.tn.open('127.0.0.1', port=4444, timeout=10)
                self.tn.write(('adapter_khz ' + str(rate)).encode('ascii') + b'\n')
                self.tn.write('WaitCmd\n'.encode('ascii'))
                self.tn.read_until(('"WaitCmd"'.encode('ascii')), timeout=10)
            except:
                bflb_utils.printf('Failed to connect openocd server')
                bflb_utils.set_error_code('0009')

            return False

    def if_set_rx_timeout(self, val):
        self._rx_timeout = val * 1000

    def if_get_rate(self):
        return self._speed

    def halt_cpu(self):
        self.tn.write('halt'.encode('ascii') + b'\n')
        return True

    def reset_cpu(self, ms=0, halt=True):
        if halt:
            self.halt_cpu()
        self.tn.write('reset'.encode('ascii') + b'\n')

    def set_pc_msp(self, pc, msp):
        self.halt_cpu()
        if self._chiptype == 'bl602':
            self.tn.write(('reg pc 0x' + self._openocd_run_addr).encode('ascii') + b'\n')
            self.tn.write('resume'.encode('ascii') + b'\n')

    def if_raw_write(self, addr, data_send):
        addr_int = int(addr, 16)
        if len(data_send) > 32:
            fp = open('openocd_load_data.bin', 'wb+')
            fp.write(data_send)
            fp.close()
            self.tn.write(('load_image openocd_load_data.bin ' + hex(addr_int)).encode('ascii') + b'\n')
        else:
            for data in data_send:
                self.tn.write(('mwb ' + hex(addr_int) + ' ' + hex(data)).encode('ascii') + b'\n')
                addr_int += 1

    def if_write(self, data_send):
        self.if_raw_write(self._openocd_data_addr, data_send)
        self.if_raw_write(self._openocd_shake_hand_addr, bytearray.fromhex('48524459'))

    def read_data_parse(self, buff, aligned):
        strdata = buff.decode().strip()
        data = bytearray(0)
        index = strdata.find(': ')
        if aligned == True:
            lstr = strdata[index + 2:strdata.find('WaitCmd') - 6].split('0x')
            for l in lstr:
                ldata = []
                if l.find(': ') != -1:
                    ldata = l[9:].split(' ')
                else:
                    ldata = l.split(' ')
                for d in ldata:
                    if len(d) != 8:
                        continue
                    else:
                        hexstr = d[6:8] + d[4:6] + d[2:4] + d[0:2]
                        data += bflb_utils.hexstr_to_bytearray(hexstr)

        else:
            data += bflb_utils.hexstr_to_bytearray(strdata[index + 2:strdata.find('WaitCmd') - 6].replace(' ', ''))
        return data

    def if_addr_unaligned_read(self, addr, data_len):
        addr_int = int(addr, 16)
        data = bytearray(0)
        dummy = self.tn.read_very_eager().decode('utf-8')
        self.tn.write(('mdb ' + hex(addr_int) + ' ' + hex(data_len) + '\n').encode('ascii'))
        self.tn.write('WaitCmd\n'.encode('ascii'))
        ret = self.tn.read_until(('"WaitCmd"'.encode('ascii')), timeout=10)
        data += self.read_data_parse(ret, False)
        return data

    def if_addr_aligned_read(self, addr, data_len):
        addr_int = int(addr, 16)
        leftlen = data_len
        data = bytearray(0)
        dummy = self.tn.read_very_eager().decode('utf-8')
        self.tn.write(('mdw ' + hex(addr_int) + ' ' + hex(data_len // 4) + '\n').encode('ascii'))
        self.tn.write('WaitCmd\n'.encode('ascii'))
        ret = self.tn.read_until(('"WaitCmd"'.encode('ascii')), timeout=10)
        data += self.read_data_parse(ret, True)
        addr_int = addr_int + data_len // 4 * 4
        leftlen = data_len - data_len // 4 * 4
        if leftlen != 0:
            data += self.if_addr_unaligned_read(hex(addr_int)[2:], leftlen)
        return data

    def if_raw_read(self, addr, data_len):
        data = bytearray(0)
        if data_len <= 4:
            return self.if_addr_unaligned_read(addr, data_len)
        addr_int = int(addr, 16)
        pre_read_len = 4 - addr_int % 4
        if pre_read_len != 0:
            data += self.if_addr_unaligned_read(addr, pre_read_len)
        data += self.if_addr_aligned_read(hex(addr_int + pre_read_len), data_len - pre_read_len)
        return data

    def if_read(self, data_len):
        start_time = time.time() * 1000
        while True:
            ready = self.if_raw_read(self._openocd_shake_hand_addr, 16)
            if ready[0:4] == bytearray([83, 65, 67, 75]):
                break
            else:
                elapsed = time.time() * 1000 - start_time
                if elapsed >= self._rx_timeout:
                    return (0, 'waiting response time out'.encode('utf-8'))
                time.sleep(0.001)

        data = self.if_raw_read(self._openocd_data_addr, data_len)
        if len(data) != data_len:
            return (0, data)
        return (1, data)

    def if_clear_buff(self):
        self.tn.write('WaitCmd\n'.encode('ascii'))
        self.tn.read_until(('"WaitCmd"'.encode('ascii')), timeout=10)

    def if_shakehand(self, do_reset=False, reset_hold_time=100, shake_hand_delay=100, reset_revert=True):
        self.if_clear_buff()
        self.if_write(bytearray(1))
        success, ack = self.if_read(2)
        bflb_utils.printf(binascii.hexlify(ack))
        if ack.find(b'O') != -1 or (ack.find(b'K') != -1):
            time.sleep(0.03)
            return 'OK'
        return 'FL'

    def if_close(self):
        self.tn.close()
        self._inited = False

    def if_deal_ack(self):
        success, ack = self.if_read(2)
        if success == 0:
            bflb_utils.printf('ack:' + str(binascii.hexlify(ack)))
            return ack.decode('utf-8')
        if ack.find(b'O') != -1 or (ack.find(b'K') != -1):
            return 'OK'
        success, err_code = self.if_read(4)
        if success == 0:
            bflb_utils.printf('err_code:' + str(binascii.hexlify(err_code)))
            return 'FL'
        err_code_str = str(binascii.hexlify(err_code[3:4] + err_code[2:3]).decode('utf-8'))
        ack = 'FL'
        try:
            ret = ack + err_code_str + '(' + bflb_utils.get_bflb_error_code[err_code_str] + ')'
        except:
            ret = ack + err_code_str + ' unknown'

        bflb_utils.printf(ret)
        return ret

    def if_deal_response(self):
        ack = self.if_deal_ack()
        if ack == 'OK':
            success, len_bytes = self.if_read(4)
            if success == 0:
                bflb_utils.printf('Get length error')
                bflb_utils.printf(binascii.hexlify(len_bytes))
                return (
                 'Get length error', len_bytes)
            tmp = bflb_utils.bytearray_reverse(len_bytes[2:4])
            data_len = bflb_utils.bytearray_to_int(tmp)
            success, data_bytes = self.if_read(data_len + 4)
            if success == 0:
                bflb_utils.printf('Read data error')
                return (
                 'Read data error', data_bytes)
            data_bytes = data_bytes[4:]
            if len(data_bytes) != data_len:
                bflb_utils.printf('Not get excepted length')
                return (
                 'Not get excepted length', data_bytes)
            return (ack, data_bytes)
        bflb_utils.printf('Not ack OK')
        bflb_utils.printf(ack)
        return (
         ack, None)


if __name__ == '__main__':
    eflash_loader_t = BFLB_Openocd_Port()
    eflash_loader_t.if_init('', 100, 'bl60x')
    bflb_utils.printf('read test')
    bflb_utils.printf(eflash_loader_t.if_raw_read('21000000', 2))
    bflb_utils.printf(eflash_loader_t.if_raw_read('21000000', 4))
    bflb_utils.printf(eflash_loader_t.if_raw_read('21000000', 10))
    bflb_utils.printf(eflash_loader_t.if_raw_read('21000000', 16))
    bflb_utils.printf(eflash_loader_t.if_raw_read('21000001', 2))
    bflb_utils.printf(eflash_loader_t.if_raw_read('21000001', 4))
    bflb_utils.printf(eflash_loader_t.if_raw_read('21000001', 10))
    bflb_utils.printf(eflash_loader_t.if_raw_read('21000001', 16))
    bflb_utils.printf(eflash_loader_t.if_raw_read('21000002', 2))
    bflb_utils.printf(eflash_loader_t.if_raw_read('21000002', 4))
    bflb_utils.printf(eflash_loader_t.if_raw_read('21000002', 10))
    bflb_utils.printf(eflash_loader_t.if_raw_read('21000002', 16))
    bflb_utils.printf('write test')
    data = bytearray([1, 2, 3, 4, 1, 2, 3, 4, 1, 2, 3, 4, 1, 2, 3, 4, 1, 2, 3, 4, 1,
     2, 3, 4, 1, 2, 3, 4, 1, 2, 3, 4, 1, 2, 3, 4, 1, 2, 3, 4, 1, 2, 3, 4, 1, 2, 3, 4])
    eflash_loader_t.if_raw_write('42020000', data)
    bflb_utils.printf(eflash_loader_t.if_raw_read('42020000', 62))
# okay decompiling lib.bflb_com_if_openocd.pyc
