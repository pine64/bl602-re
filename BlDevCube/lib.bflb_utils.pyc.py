# decompyle3 version 3.3.2
# Python bytecode 3.7 (3394)
# Decompiled from: Python 3.8.5 (default, Jul 28 2020, 12:59:40) 
# [GCC 9.3.0]
# Embedded file name: lib\bflb_utils.py
import os, sys, shutil, binascii, struct, random, socket, threading, datetime
from glob import glob
if getattr(sys, 'frozen', False):
    app_path = os.path.dirname(sys.executable)
else:
    app_path = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
try:
    import changeconf as cgc
    conf_sign = True
except:
    conf_sign = False

import pylink
from serial import Serial
from lib.bflb_configobj import ConfigObj
udp_clinet_dict = {}
udp_send_log = False
upd_log_local_echo = False
udp_socket_server = None
error_code_num = 'FFFF'
if conf_sign:
    bflb_error_code = {'0000':'SUCCESS',  '0001':'FLASH_INIT_ERROR', 
     '0002':'FLASH_ERASE_PARA_ERROR', 
     '0003':'FLASH_ERASE_ERROR', 
     '0004':'FLASH_WRITE_PARA_ERROR', 
     '0005':'FLASH_WRITE_ADDR_ERROR', 
     '0006':'FLASH_WRITE_ERROR', 
     '0007':'FLASH_BOOT_PARA_ERROR', 
     '0008':'FLASH_SET_PARA_ERROR', 
     '0009':'FLASH_READ_STATUS_REG_ERROR', 
     '000A':'FLASH_WRITE_STATUS_REG_ERROR', 
     '0101':'CMD_ID_ERROR', 
     '0102':'CMD_LEN_ERROR', 
     '0103':'CMD_CRC_ERROR', 
     '0104':'CMD_SEQ_ERROR', 
     '0201':'IMG_BOOTHEADER_LEN_ERROR', 
     '0202':'IMG_BOOTHEADER_NOT_LOAD_ERROR', 
     '0203':'IMG_BOOTHEADER_MAGIC_ERROR', 
     '0204':'IMG_BOOTHEADER_CRC_ERROR', 
     '0205':'IMG_BOOTHEADER_ENCRYPT_NOTFIT', 
     '0206':'IMG_BOOTHEADER_SIGN_NOTFIT', 
     '0207':'IMG_SEGMENT_CNT_ERROR', 
     '0208':'IMG_AES_IV_LEN_ERROR', 
     '0209':'IMG_AES_IV_CRC_ERROR', 
     '020a':'IMG_PK_LEN_ERROR', 
     '020b':'IMG_PK_CRC_ERROR', 
     '020c':'IMG_PK_HASH_ERROR', 
     '020d':'IMG_SIGNATURE_LEN_ERROR', 
     '020e':'IMG_SIGNATURE_CRC_ERROR', 
     '020f':'IMG_SECTIONHEADER_LEN_ERROR', 
     '0210':'IMG_SECTIONHEADER_CRC_ERROR', 
     '0211':'IMG_SECTIONHEADER_DST_ERROR', 
     '0212':'IMG_SECTIONDATA_LEN_ERROR', 
     '0213':'IMG_SECTIONDATA_DEC_ERROR', 
     '0214':'IMG_SECTIONDATA_TLEN_ERROR', 
     '0215':'IMG_SECTIONDATA_CRC_ERROR', 
     '0216':'IMG_HALFBAKED_ERROR', 
     '0217':'IMG_HASH_ERROR', 
     '0218':'IMG_SIGN_PARSE_ERROR', 
     '0219':'IMG_SIGN_ERROR', 
     '021a':'IMG_DEC_ERROR', 
     '021b':'IMG_ALL_INVALID_ERROR', 
     '0301':'IF_RATE_LEN_ERROR', 
     '0302':'IF_RATE_PARA_ERROR', 
     '0303':'IF_PASSWORDERROR', 
     '0304':'IF_PASSWORDCLOSE', 
     '0401':'EFUSE_WRITE_PARA_ERROR', 
     '0402':'EFUSE_WRITE_ADDR_ERROR', 
     '0403':'EFUSE_WRITE_ERROR', 
     '0404':'EFUSE_READ_PARA_ERROR', 
     '0405':'EFUSE_READ_ADDR_ERROR', 
     '0406':'EFUSE_READ_ERROR', 
     '0407':'EFUSE_READ_MAC_ERROR', 
     '0408':'EFUSE_WRITE_MAC_ERROR', 
     'fffc':'PLL_ERROR', 
     'fffd':'INVASION_ERROR', 
     'fffe':'POLLING', 
     'ffff':'FAIL'}
    eflash_loader_error_code = {'0000':'SUCCESS', 
     '0001':'EFLASH LOADER SHAKEHAND FAIL', 
     '0002':'OPTION SET UNSUPPORTED', 
     '0003':'LOAD HELP BIN FAIL', 
     '0004':'RESET CPU FAIL', 
     '0005':'BURN RETRY FAIL', 
     '0006':'LOG READ FAIL', 
     '0009':'CONNECT OPENOCD SERVER FAIL', 
     '000A':'REPEAT BURN', 
     '000B':'CONFIG FILE NOT FOUND', 
     '0020':'EFUSE READ FAIL', 
     '0021':'EFUSE WRITE FAIL', 
     '0022':'EFUSE COMPARE FAIL', 
     '0023':'EFUSE READ MAC ADDR FAIL', 
     '0024':'EFUSE WRITE MAC ADDR FAIL', 
     '0025':'EFUSE MAC ADDR CRC FAIL', 
     '0030':'READ FLASH JEDEC ID FAIL', 
     '0031':'READ FLASH STATUS REGISTER FAIL', 
     '0032':'WRITE FLASH STATUS REGISTER FAIL', 
     '0033':'FLASH CHIP ERASE FAIL', 
     '0034':'FLASH ERASE FAIL', 
     '0035':'FLASH READ FAIL', 
     '0036':'FLASH WRITE FAIL', 
     '0037':'FLASH WRITE CHECK FAIL', 
     '0038':'FLASH READ SHA FAIL', 
     '0039':'FLASH XIP MODE ENTER FAIL', 
     '003A':'FLASH XIP MODE EXIT FAIL', 
     '003B':'FLASH SET PARA FAIL', 
     '003C':'FLASH LOAD FIRMWARE BIN FAIL', 
     '003D':'FLASH MATCH TYPE FAIL', 
     '003E':'FLASH LOAD VERIFY FAIL', 
     '0050':'IMG LOAD SHAKEHAND FAIL', 
     '0051':'IMG LOAD BOOT CHECK FAIL', 
     '0060':'IMG CREATE FAIL', 
     '0061':'IMG FILE DO NOT SET', 
     '0062':'IMG ADDR DO NOT SET', 
     '0063':'BOOTINFO ADDR DO NOT SET', 
     '0064':'AES KEY DO NOT SET', 
     '0065':'AES IV DO NOT SET', 
     '0066':'PUBLIC KEY DO NOT SET', 
     '0067':'PRIVATE KEY DO NOT SET', 
     '0068':'RAW DATA DO NOT NEED CREATE', 
     '0069':'FLASH ID NOT SUPPORT', 
     '0070':'FLASH ID NOT FOUND', 
     '0071':'ENCRYPT KEY LEN ERROR', 
     '0072':'AES IV LEN ERROR', 
     '0073':'AES IV SHOULD END WITH 00000000', 
     '0074':'IMG TYPE NOT FIT', 
     '0075':'IMG CREATE ENTER EXCEPT', 
     '0076':'PT NOT SET', 
     '0077':'AES KEY DATA OR LEN ERROR', 
     '0078':'AES IV DATA OR LEN ERROR', 
     '0079':'FACTORY IMG NOT FOUND', 
     '007A':'GENERATE ROMFS FAIL', 
     '007B':'PT PARCEL IS NULL', 
     '007C':'PT TABLE DO NOT SET', 
     '007D':'BOOT2 BIN DO NOT SET', 
     '007E':'FW BIN DO NOT SET', 
     '007F':'MEDIA DO NOT SET', 
     '0080':'ROMFS DO NOT SET', 
     '0081':'MFG BIN DO NOT SET', 
     '0082':'PT CHECK FAIL', 
     'FFFF':'BURN RETRY FAIL'}
else:
    bflb_error_code = {'0000':'BFLB_SUCCESS',  '0001':'BFLB_FLASH_INIT_ERROR', 
     '0002':'BFLB_FLASH_ERASE_PARA_ERROR', 
     '0003':'BFLB_FLASH_ERASE_ERROR', 
     '0004':'BFLB_FLASH_WRITE_PARA_ERROR', 
     '0005':'BFLB_FLASH_WRITE_ADDR_ERROR', 
     '0006':'BFLB_FLASH_WRITE_ERROR', 
     '0007':'BFLB_FLASH_BOOT_PARA_ERROR', 
     '0008':'BFLB_FLASH_SET_PARA_ERROR', 
     '0009':'BFLB_FLASH_READ_STATUS_REG_ERROR', 
     '000A':'BFLB_FLASH_WRITE_STATUS_REG_ERROR', 
     '0101':'BFLB_CMD_ID_ERROR', 
     '0102':'BFLB_CMD_LEN_ERROR', 
     '0103':'BFLB_CMD_CRC_ERROR', 
     '0104':'BFLB_CMD_SEQ_ERROR', 
     '0201':'BFLB_IMG_BOOTHEADER_LEN_ERROR', 
     '0202':'BFLB_IMG_BOOTHEADER_NOT_LOAD_ERROR', 
     '0203':'BFLB_IMG_BOOTHEADER_MAGIC_ERROR', 
     '0204':'BFLB_IMG_BOOTHEADER_CRC_ERROR', 
     '0205':'BFLB_IMG_BOOTHEADER_ENCRYPT_NOTFIT', 
     '0206':'BFLB_IMG_BOOTHEADER_SIGN_NOTFIT', 
     '0207':'BFLB_IMG_SEGMENT_CNT_ERROR', 
     '0208':'BFLB_IMG_AES_IV_LEN_ERROR', 
     '0209':'BFLB_IMG_AES_IV_CRC_ERROR', 
     '020a':'BFLB_IMG_PK_LEN_ERROR', 
     '020b':'BFLB_IMG_PK_CRC_ERROR', 
     '020c':'BFLB_IMG_PK_HASH_ERROR', 
     '020d':'BFLB_IMG_SIGNATURE_LEN_ERROR', 
     '020e':'BFLB_IMG_SIGNATURE_CRC_ERROR', 
     '020f':'BFLB_IMG_SECTIONHEADER_LEN_ERROR', 
     '0210':'BFLB_IMG_SECTIONHEADER_CRC_ERROR', 
     '0211':'BFLB_IMG_SECTIONHEADER_DST_ERROR', 
     '0212':'BFLB_IMG_SECTIONDATA_LEN_ERROR', 
     '0213':'BFLB_IMG_SECTIONDATA_DEC_ERROR', 
     '0214':'BFLB_IMG_SECTIONDATA_TLEN_ERROR', 
     '0215':'BFLB_IMG_SECTIONDATA_CRC_ERROR', 
     '0216':'BFLB_IMG_HALFBAKED_ERROR', 
     '0217':'BFLB_IMG_HASH_ERROR', 
     '0218':'BFLB_IMG_SIGN_PARSE_ERROR', 
     '0219':'BFLB_IMG_SIGN_ERROR', 
     '021a':'BFLB_IMG_DEC_ERROR', 
     '021b':'BFLB_IMG_ALL_INVALID_ERROR', 
     '0301':'BFLB_IF_RATE_LEN_ERROR', 
     '0302':'BFLB_IF_RATE_PARA_ERROR', 
     '0303':'BFLB_IF_PASSWORDERROR', 
     '0304':'BFLB_IF_PASSWORDCLOSE', 
     '0401':'BFLB_EFUSE_WRITE_PARA_ERROR', 
     '0402':'BFLB_EFUSE_WRITE_ADDR_ERROR', 
     '0403':'BFLB_EFUSE_WRITE_ERROR', 
     '0404':'BFLB_EFUSE_READ_PARA_ERROR', 
     '0405':'BFLB_EFUSE_READ_ADDR_ERROR', 
     '0406':'BFLB_EFUSE_READ_ERROR', 
     '0407':'BFLB_EFUSE_READ_MAC_ERROR', 
     '0408':'BFLB_EFUSE_WRITE_MAC_ERROR', 
     'fffc':'BFLB_PLL_ERROR', 
     'fffd':'BFLB_INVASION_ERROR', 
     'fffe':'BFLB_POLLING', 
     'ffff':'BFLB_FAIL'}
    eflash_loader_error_code = {'0000':'BFLB SUCCESS', 
     '0001':'BFLB EFLASH LOADER SHAKEHAND FAIL', 
     '0002':'BFLB OPTION SET UNSUPPORTED', 
     '0003':'BFLB LOAD HELP BIN FAIL', 
     '0004':'BFLB RESET CPU FAIL', 
     '0005':'BFLB BURN RETRY FAIL', 
     '0006':'BFLB LOG READ FAIL', 
     '0009':'BFLB CONNECT OPENOCD SERVER FAIL', 
     '000A':'BFLB REPEAT BURN', 
     '000B':'BFLB CONFIG FILE NOT FOUND', 
     '0020':'BFLB EFUSE READ FAIL', 
     '0021':'BFLB EFUSE WRITE FAIL', 
     '0022':'BFLB EFUSE COMPARE FAIL', 
     '0023':'BFLB EFUSE READ MAC ADDR FAIL', 
     '0024':'BFLB EFUSE WRITE MAC ADDR FAIL', 
     '0025':'BFLB EFUSE MAC ADDR CRC FAIL', 
     '0030':'BFLB READ FLASH JEDEC ID FAIL', 
     '0031':'BFLB READ FLASH STATUS REGISTER FAIL', 
     '0032':'BFLB WRITE FLASH STATUS REGISTER FAIL', 
     '0033':'BFLB FLASH CHIP ERASE FAIL', 
     '0034':'BFLB FLASH ERASE FAIL', 
     '0035':'BFLB FLASH READ FAIL', 
     '0036':'BFLB FLASH WRITE FAIL', 
     '0037':'BFLB FLASH WRITE CHECK FAIL', 
     '0038':'BFLB FLASH READ SHA FAIL', 
     '0039':'BFLB FLASH XIP MODE ENTER FAIL', 
     '003A':'BFLB FLASH XIP MODE EXIT FAIL', 
     '003B':'BFLB FLASH SET PARA FAIL', 
     '003C':'BFLB FLASH LOAD FIRMWARE BIN FAIL', 
     '003D':'BFLB FLASH MATCH TYPE FAIL', 
     '003E':'BFLB FLASH LOAD VERIFY FAIL', 
     '0050':'BFLB IMG LOAD SHAKEHAND FAIL', 
     '0051':'BFLB IMG LOAD BOOT CHECK FAIL', 
     '0060':'BFLB IMG CREATE FAIL', 
     '0061':'BFLB IMG FILE DO NOT SET', 
     '0062':'BFLB IMG ADDR DO NOT SET', 
     '0063':'BFLB BOOTINFO ADDR DO NOT SET', 
     '0064':'BFLB AES KEY DO NOT SET', 
     '0065':'BFLB AES IV DO NOT SET', 
     '0066':'BFLB PUBLIC KEY DO NOT SET', 
     '0067':'BFLB PRIVATE KEY DO NOT SET', 
     '0068':'BFLB RAW DATA DO NOT NEED CREATE', 
     '0069':'BFLB FLASH ID NOT SUPPORT', 
     '0070':'BFLB FLASH ID NOT FOUND', 
     '0071':'BFLB ENCRYPT KEY LEN ERROR', 
     '0072':'BFLB AES IV LEN ERROR', 
     '0073':'BFLB AES IV SHOULD END WITH 00000000', 
     '0074':'BFLB IMG TYPE NOT FIT', 
     '0075':'BFLB IMG CREATE ENTER EXCEPT', 
     '0076':'BFLB PT NOT SET', 
     '0077':'BFLB AES KEY DATA OR LEN ERROR', 
     '0078':'BFLB AES IV DATA OR LEN ERROR', 
     '0079':'BFLB FACTORY IMG NOT FOUND', 
     '007A':'BFLB GENERATE ROMFS FAIL', 
     '007B':'BFLB PT PARCEL IS NULL', 
     '007C':'BFLB PT TABLE DO NOT SET', 
     '007D':'BFLB BOOT2 BIN DO NOT SET', 
     '007E':'BFLB FW BIN DO NOT SET', 
     '007F':'BFLB MEDIA DO NOT SET', 
     '0080':'BFLB ROMFS DO NOT SET', 
     '0081':'BFLB MFG BIN DO NOT SET', 
     '0082':'BFLB PT CHECK FAIL', 
     'FFFF':'BFLB BURN RETRY FAIL'}

def printf(*args):
    global udp_send_log
    global udp_socket_server
    global upd_log_local_echo
    data = ''
    for arg in args:
        data += str(arg)

    if data:
        now_time = datetime.datetime.now().strftime('[%H:%M:%S.%f')[:-3] + '] - '
        data = now_time + data
        if udp_send_log:
            tid = str(threading.get_ident())
            if upd_log_local_echo:
                print('[' + tid + ':]' + data.strip())
            try:
                udp_socket_server.sendto((data.strip() + '\r\n').encode('utf-8'), udp_clinet_dict[tid])
            except Exception as e:
                try:
                    print(e)
                finally:
                    e = None
                    del e

        else:
            print(data.strip())
    sys.stdout.flush()


def get_bflb_error_code(code):
    global bflb_error_code
    return bflb_error_code[code]


def set_error_code(num_str):
    global error_code_num
    if error_code_num == 'FFFF':
        error_code_num = num_str
    if num_str == 'FFFF':
        error_code_num = num_str


def get_error_code():
    return error_code_num


def errorcode_msg():
    global eflash_loader_error_code
    return '{"ErrorCode": "' + error_code_num + '", "ErrorMsg":"' + eflash_loader_error_code[error_code_num] + '"}'


def open_file(file, mode='rb'):
    fp = open(os.path.join(app_path, file), mode)
    return fp


def serial_enumerate():
    ports = []
    if sys.platform == 'win32':
        import winreg
        try:
            key = winreg.OpenKey(winreg.HKEY_LOCAL_MACHINE, 'HARDWARE\\DEVICEMAP\\SERIALCOMM')
        except WindowsError:
            return []
        else:
            i = 0
            while 1:
                try:
                    ports.append(winreg.EnumValue(key, i)[1])
                    i = i + 1
                except WindowsError:
                    break

    elif sys.platform.startswith('linux'):
        if os.path.exists('/dev/serial/by-id'):
            entries = os.listdir('/dev/serial/by-id')
            dirs = [os.readlink(os.path.join('/dev/serial/by-id', x)) for x in entries]
            ports.extend([os.path.normpath(os.path.join('/dev/serial/by-id', x)) for x in dirs])
        if os.path.exists('/dev/serial/by-path'):
            entries = os.listdir('/dev/serial/by-path')
            dirs = [os.readlink(os.path.join('/dev/serial/by-path', x)) for x in entries]
            ports.extend([os.path.normpath(os.path.join('/dev/serial/by-path', x)) for x in dirs])
        for dev in glob('/dev/ttyS*'):
            try:
                port = Serial(dev)
            except:
                pass
            else:
                ports.append(dev)

    elif sys.platform.startswith('darwin'):
        for dev in glob('/dev/tty.usbserial-*'):
            ports.append(dev)

    else:
        return []
    return list(set(ports))


def pylink_enumerate():
    path_dll = os.path.join(app_path, 'JLinkARM_32.dll')
    obj_dll = pylink.Library(dllpath=path_dll)
    obj = pylink.JLink(lib=obj_dll)
    return obj.connected_emulators()


def hexstr_to_bytearray_b(hexstring):
    return bytearray.fromhex(hexstring)


def hexstr_to_bytearray(hexstring):
    return bytearray.fromhex(hexstring)


def hexstr_to_bytearray_l(hexstring):
    b = bytearray.fromhex(hexstring)
    b.reverse()
    return b


def int_to_2bytearray_l(intvalue):
    return struct.pack('<H', intvalue)


def int_to_2bytearray_b(intvalue):
    return struct.pack('>H', intvalue)


def int_to_4bytearray_l(intvalue):
    src = bytearray(4)
    src[3] = intvalue >> 24 & 255
    src[2] = intvalue >> 16 & 255
    src[1] = intvalue >> 8 & 255
    src[0] = intvalue >> 0 & 255
    return src


def int_to_4bytearray_b(intvalue):
    val = int_to_4bytearray_l(intvalue)
    val.reverse()
    return val


def bytearray_reverse(a):
    l = len(a)
    b = bytearray(l)
    i = 0
    while i < l:
        b[i] = a[(l - i - 1)]
        i = i + 1

    return b


def bytearray_to_int(b):
    return int(binascii.hexlify(b), 16)


def string_to_bytearray(string):
    return bytes(string, encoding='utf8')


def bytearray_to_str(bytesarray):
    return str(bytesarray)


def get_random_hexstr(n_bytes):
    hextring = ''
    i = 0
    while i < n_bytes:
        hextring = hextring + str(binascii.hexlify(random.randint(0, 255)))
        i = i + 1

    return hextring


def get_crc32_bytearray(data):
    crc = binascii.crc32(data)
    return int_to_4bytearray_l(crc)


def copyfile(srcfile, dstfile):
    if os.path.isfile(srcfile):
        fpath, fname = os.path.split(dstfile)
        if not os.path.exists(fpath):
            os.makedirs(fpath)
        shutil.copyfile(srcfile, dstfile)
    else:
        printf('Src file not exists')
        sys.exit()


def enable_udp_send_log(local_echo):
    global udp_send_log
    global udp_socket_server
    global upd_log_local_echo
    udp_send_log = True
    upd_log_local_echo = local_echo
    udp_socket_server = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)


def add_udp_client(tid, upd_client):
    udp_clinet_dict[tid] = upd_client


def remove_udp_client(tid):
    del udp_clinet_dict[tid]


def Update_Cfg(cfg, section, key, value):
    if cfg.has_option(section, key):
        cfg.set(section, key, str(value))
    else:
        cfg.set(section, key, str(value))


def get_byte_array(str):
    return str.encode('utf-8')


class BFConfigParser:
    cfg_infile = None
    cfg_obj = ConfigObj()

    def __init__(self, file=None):
        self.cfg_infile = file
        self.cfg_obj = ConfigObj(self.cfg_infile)

    def read(self, file=None):
        self.cfg_infile = file
        self.cfg_obj = ConfigObj((self.cfg_infile), encoding='UTF8')
        return self.cfg_obj

    def get(self, section, key):
        ret = self.cfg_obj[section][key]
        if ret == '""':
            return ''
        return ret

    def set(self, section, key, value):
        self.cfg_obj[section][key] = str(value)

    def sections(self):
        return self.cfg_obj.keys()

    def delete_section(self, section):
        del self.cfg_obj[section]

    def update_section_name(self, oldsection, newsection):
        _sections = self.cfg_obj.keys()
        for _section in _sections:
            printf(_section)
            if _section == oldsection:
                printf(self.cfg_obj[_section])
                self.cfg_obj[newsection] = self.cfg_obj[oldsection]

        self.delete_section(oldsection)

    def options(self, section):
        return self.cfg_obj[section]

    def has_option(self, section, key):
        _sections = self.cfg_obj.keys()
        for _section in _sections:
            if _section == section:
                for _key in self.cfg_obj[_section]:
                    if _key == key:
                        return True
                        continue

            continue

        return False

    def write(self, outfile=None, flag=None):
        if outfile == None:
            self.cfg_obj.filename = self.cfg_infile
        else:
            self.cfg_obj.filename = outfile
        self.cfg_obj.write()


if __name__ == '__main__':
    printf(binascii.hexlify(hexstr_to_bytearray_b('12345678')))
    printf(binascii.hexlify(int_to_2bytearray_l(65535)))
    printf(binascii.hexlify(int_to_2bytearray_b(65534)))
    printf(binascii.hexlify(int_to_4bytearray_l(-2147483648)))
    printf(binascii.hexlify(int_to_4bytearray_b(2147483647)))
# okay decompiling lib.bflb_utils.pyc
