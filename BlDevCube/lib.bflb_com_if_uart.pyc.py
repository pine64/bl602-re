# decompyle3 version 3.3.2
# Python bytecode 3.7 (3394)
# Decompiled from: Python 3.8.5 (default, Jul 28 2020, 12:59:40) 
# [GCC 9.3.0]
# Embedded file name: lib\bflb_com_if_uart.py
import time, binascii, serial, threading
from queue import Queue
from queue import Empty
from lib import bflb_utils
import globalvar as gol

class BFLB_UART_Port(object):

    def __init__(self):
        self._baudrate = 115200
        self._ser = None

    def if_init(self, device, rate, chiptype='bl60x'):
        if self._ser == None:
            self._baudrate = rate
            self._ser = serial.Serial(device, rate, timeout=2.0, xonxoff=False, rtscts=False, write_timeout=None, dsrdtr=False)
        else:
            self._ser.baudrate = rate
            self._baudrate = rate
        self._602a0_dln_fix = False

    def if_set_rx_timeout(self, val):
        self._ser.timeout = val

    def if_set_dtr(self, val):
        self._ser.setDTR(val)

    def if_set_rts(self, val):
        self._ser.setRTS(val)

    def if_get_rate(self):
        return self._baudrate

    def if_write(self, data_send):
        self._ser.write(data_send)

    def if_raw_read(self):
        return self._ser.read(self._ser.in_waiting or 1)

    def if_read(self, data_len):
        data = bytearray(0)
        received = 0
        while received < data_len:
            tmp = self._ser.read(data_len - received)
            if len(tmp) == 0:
                break
            else:
                data += tmp
                received += len(tmp)

        if len(data) != data_len:
            return (0, data)
        return (1, data)

    def _if_get_sync_bytes(self, length):
        data = bytearray(length)
        i = 0
        while i < length:
            data[i] = 85
            i += 1

        return data

    def if_set_602a0_download_fix(self, val):
        self._602a0_dln_fix = val

    def if_shakehand(self, do_reset=False, reset_hold_time=100, shake_hand_delay=100, reset_revert=True, cutoff_time=0, shake_hand_retry=2):
        timeout = self._ser.timeout
        while shake_hand_retry > 0:
            if cutoff_time != 0:
                cutoff_revert = False
                if cutoff_time > 1000:
                    cutoff_revert = True
                    cutoff_time = cutoff_time - 1000
                self._ser.setRTS(1)
                time.sleep(0.2)
                self._ser.setRTS(0)
                time.sleep(0.05)
                self._ser.setRTS(1)
                if cutoff_revert:
                    self._ser.setDTR(0)
                else:
                    self._ser.setDTR(1)
                bflb_utils.printf('tx rx and power off, press the machine!')
                bflb_utils.printf('cutoff time is ', cutoff_time / 1000.0)
                time.sleep(cutoff_time / 1000.0)
                if cutoff_revert:
                    self._ser.setDTR(1)
                else:
                    self._ser.setDTR(0)
                bflb_utils.printf('power on tx and rx ')
                time.sleep(0.1)
            else:
                if do_reset == True:
                    self._ser.setRTS(0)
                    time.sleep(0.2)
                    if reset_revert:
                        self._ser.setRTS(1)
                        time.sleep(0.001)
                    reset_cnt = 2
                    if reset_hold_time > 1000:
                        reset_cnt = int(reset_hold_time // 1000)
                        reset_hold_time = reset_hold_time % 1000
                    while reset_cnt > 0:
                        if reset_revert:
                            self._ser.setRTS(0)
                        else:
                            self._ser.setRTS(1)
                        time.sleep(reset_hold_time / 1000.0)
                        if reset_revert:
                            self._ser.setRTS(1)
                        else:
                            self._ser.setRTS(0)
                        if shake_hand_delay > 0:
                            time.sleep(shake_hand_delay / 1000.0)
                        else:
                            time.sleep(0.005)
                        if reset_revert:
                            self._ser.setRTS(0)
                        else:
                            self._ser.setRTS(1)
                        time.sleep(reset_hold_time / 1000.0)
                        if reset_revert:
                            self._ser.setRTS(1)
                        else:
                            self._ser.setRTS(0)
                        if shake_hand_delay > 0:
                            time.sleep(shake_hand_delay / 1000.0)
                        else:
                            time.sleep(0.005)
                        reset_cnt -= 1

                    bflb_utils.printf('reset cnt: ' + str(reset_cnt) + ', reset hold: ' + str(reset_hold_time / 1000.0) + ', shake hand delay: ' + str(shake_hand_delay / 1000.0))
                bflb_utils.printf('clean buf')
                self._ser.timeout = 0.1
                success, ack = self.if_read(10000)
                if self._602a0_dln_fix:
                    self._ser.timeout = 0.5
                else:
                    self._ser.timeout = 0.1
                bflb_utils.printf('send sync')
                chip_type = gol.GlobalVar.type_chip[1]
                if chip_type == 'bl702':
                    self._ser.write(self._if_get_sync_bytes(int(0.003 * self._baudrate / 10)))
                else:
                    self._ser.write(self._if_get_sync_bytes(int(0.006 * self._baudrate / 10)))
                if self._602a0_dln_fix:
                    time.sleep(4)
                success, ack = self.if_read(6)
                bflb_utils.printf('ack is ', binascii.hexlify(ack))
                if ack.find(b'O') != -1 or (ack.find(b'K') != -1):
                    self._ser.timeout = timeout
                    if self._602a0_dln_fix:
                        self._ser.write(bytearray(2))
                    time.sleep(0.03)
                    return 'OK'
                if len(ack) != 0:
                    bflb_utils.printf('reshake')
                    if do_reset == False:
                        bflb_utils.printf('sleep')
                        time.sleep(3)
                else:
                    bflb_utils.printf('retry')
                shake_hand_retry -= 1

        self._ser.timeout = timeout
        return 'FL'

    def if_close(self):
        if self._ser != None:
            self._ser.close()
            self._ser = None

    def if_deal_ack(self, dmy_data=True):
        success, ack = self.if_read(2)
        if success == 0:
            bflb_utils.printf('ack is ', str(binascii.hexlify(ack)))
            return ack.decode('utf-8')
        if ack.find(b'O') != -1 or (ack.find(b'K') != -1):
            return 'OK'
        success, err_code = self.if_read(2)
        if success == 0:
            bflb_utils.printf('err code is ', str(binascii.hexlify(err_code)))
            return 'FL'
        err_code_str = str(binascii.hexlify(err_code[1:2] + err_code[0:1]).decode('utf-8'))
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
            success, len_bytes = self.if_read(2)
            if success == 0:
                bflb_utils.printf('Get length error')
                bflb_utils.printf('len error is ', binascii.hexlify(len_bytes))
                return (
                 'Get length error', len_bytes)
            tmp = bflb_utils.bytearray_reverse(len_bytes)
            data_len = bflb_utils.bytearray_to_int(tmp)
            success, data_bytes = self.if_read(data_len)
            if success == 0 or (len(data_bytes) != data_len):
                bflb_utils.printf('Read data error,maybe not get excepted length')
                return (
                 'Read data error,maybe not get excepted length', data_bytes)
            return (
             ack, data_bytes)
        bflb_utils.printf('Not ack OK')
        bflb_utils.printf(ack)
        return (
         ack, None)


class CliInfUart(object):

    def __init__(self, recv_cb_objs=None):
        self._baudrate = 115200
        self._ser = None
        self._rx_thread = None
        self._rx_thread_running = False
        self._tx_thread = None
        self._tx_thread = None
        self._tx_queue = None
        if recv_cb_objs != None:
            self._recv_cb_objs = recv_cb_objs
        else:
            self._recv_cb_objs = []
        self._boot = 0
        self.uart = ''

    def add_observer(self, recv_cb_obj):
        if recv_cb_obj != None:
            self._recv_cb_objs.append(recv_cb_obj)
            return True
        return False

    def is_open(self):
        if self._ser == None:
            return False
        if self._ser.isOpen():
            return True
        return False

    def open(self, dev_com):
        if not dev_com:
            bflb_utils.printf('No Serial Port Found')
            return False
        if self._ser == None:
            try:
                self._ser = serial.Serial(dev_com, (self._baudrate), timeout=5.0, xonxoff=False, rtscts=False, write_timeout=None, dsrdtr=False)
                self._ser.setDTR(1)
                self._ser.setRTS(1)
                time.sleep(0.01)
                self._ser.setRTS(0)
                time.sleep(0.01)
                self._ser.setDTR(0)
                self._tx_queue = Queue()
                self._rx_thread = threading.Thread(target=(self._read))
                self._rx_thread_running = True
                self._rx_thread.setDaemon(True)
                self._rx_thread.start()
                self._tx_thread = threading.Thread(target=(self._write))
                self._tx_thread_running = True
                self._tx_thread.setDaemon(True)
                self._tx_thread.start()
            except serial.SerialException as e:
                try:
                    bflb_utils.printf('Open %s Fail' % dev_com)
                    return False
                finally:
                    e = None
                    del e

            except TypeError as e:
                try:
                    if self._ser != None:
                        self._ser.close()
                    return False
                finally:
                    e = None
                    del e

            else:
                bflb_utils.printf('Open %s Success' % dev_com)
                return True

    def close(self):
        if self._ser != None:
            self._ser.close()
            self._ser = None
            self._rx_thread_running = False
            self._rx_thread.join()
            self._tx_thread_running = False
            self._tx_thread.join()
            self._tx_queue = None
            self._boot = 0

    def write(self, data_send):
        if self._ser != None:
            self._tx_queue.put(data_send)
        else:
            return 0

    def _write(self):
        while self._tx_thread_running:
            try:
                data = self._tx_queue.get(timeout=1)
            except Empty:
                pass
            else:
                self._ser.write(data)

    def _check_boot_cond(self, data):

        def bl60x_is_active(data):
            if len(data) > 10:
                return True

        def bl60x_bootup_filter(data):
            if data.find('Compile Date Time') == 0:
                return True
            if data.find('rf init') == 0:
                return True
            return False

        if bl60x_bootup_filter(data) == True:
            return False
        if data.find('[RX] Statitics') == 0:
            self._boot = 1
            return True
        if self._boot == 0:
            if bl60x_is_active(data):
                self._boot = 1
                return True
        return False

    def _read(self):
        data = ''
        while self._rx_thread_running:
            try:
                byte_msg = self._ser.read(1)
            except serial.SerialException:
                try:
                    self._ser.close()
                except:
                    pass

                self._ser = None
                self._rx_thread_running = False
                self._tx_thread_running = False
                self._tx_thread.join()
                self._tx_queue = None
            except Exception:
                pass
            else:
                try:
                    str_msg = bytes.decode(byte_msg)
                except Exception as err:
                    try:
                        continue
                    finally:
                        err = None
                        del err

                if str(str_msg) == '\r':
                    if data != '':
                        bflb_utils.printf(data)
                        if self._check_boot_cond(data) == True:
                            if self._recv_cb_objs != None:
                                if len(self._recv_cb_objs) != 0:
                                    for cb in self._recv_cb_objs:
                                        time.sleep(1)
                                        cb.on_boot(self.uart)

                        if self._recv_cb_objs != None:
                            if len(self._recv_cb_objs) != 0:
                                for cb in self._recv_cb_objs:
                                    cb.obs_handle(data)

                    data = ''
                else:
                    if str(str_msg) != '\n':
                        data += str_msg

    def open_listen(self, dev_com, baudrate):
        if not dev_com:
            bflb_utils.printf('No Serial Port Found')
            return False
        if self._ser == None:
            try:
                self._ser = serial.Serial(dev_com, baudrate, timeout=5.0, xonxoff=False, rtscts=False, write_timeout=None, dsrdtr=False)
                self._ser.setDTR(1)
                self._ser.setRTS(1)
                time.sleep(0.01)
                self._ser.setRTS(0)
                time.sleep(0.01)
                self._ser.setDTR(0)
                self._rx_thread = threading.Thread(target=(self._read_listen))
                self._rx_thread_running = True
                self._rx_thread.setDaemon(True)
                self._rx_thread.start()
            except serial.SerialException as e:
                try:
                    bflb_utils.printf('Open %s Listen Fail' % dev_com)
                    return False
                finally:
                    e = None
                    del e

            except TypeError as e:
                try:
                    if self._ser != None:
                        self._ser.close()
                    return False
                finally:
                    e = None
                    del e

            else:
                bflb_utils.printf('Open %s Listen Success' % dev_com)
                return True

    def close_listen(self):
        if self._ser != None:
            self._ser.close()
            self._ser = None
            self._rx_thread_running = False
            self._rx_thread.join()

    def _read_listen(self):
        data = ''
        self._ser.timeout = 0.1
        while self._rx_thread_running:
            try:
                byte_msg = self._ser.read(50000)
            except serial.SerialException as e:
                try:
                    try:
                        self._ser.close()
                    except:
                        pass

                    self._ser = None
                    self._rx_thread_running = False
                finally:
                    e = None
                    del e

            except Exception as e:
                try:
                    pass
                finally:
                    e = None
                    del e

            else:
                try:
                    if byte_msg:
                        new_mess = str(bytes.decode(byte_msg))
                        bflb_utils.printf(new_mess)
                        byte_msg = ''
                except:
                    byte_msg = byte_msg.replace(b'\x00', b' ')
                    bflb_utils.printf(byte_msg.decode('GB18030', 'replace'))
                    byte_msg = ''
# okay decompiling lib.bflb_com_if_uart.pyc
