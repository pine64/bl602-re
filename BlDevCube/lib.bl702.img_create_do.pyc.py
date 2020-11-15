# decompyle3 version 3.3.2
# Python bytecode 3.7 (3394)
# Decompiled from: Python 3.8.5 (default, Jul 28 2020, 12:59:40) 
# [GCC 9.3.0]
# Embedded file name: lib\bl702\img_create_do.py
import sys, hashlib, binascii, getopt
from lib import bflb_utils
from lib import bflb_aes
import ecdsa
cfg = bflb_utils.BFConfigParser()
keyslot0 = 28
keyslot1 = keyslot0 + 16
keyslot2 = keyslot1 + 16
keyslot3 = keyslot2 + 16
keyslot4 = keyslot3 + 16
keyslot5 = keyslot4 + 16
keyslot6 = keyslot5 + 16
wr_lock_key_slot_4_l = 13
wr_lock_key_slot_5_l = 14
wr_lock_boot_mode = 15
wr_lock_dbg_pwd = 16
wr_lock_sw_usage_0 = 17
wr_lock_wifi_mac = 18
wr_lock_key_slot_0 = 19
wr_lock_key_slot_1 = 20
wr_lock_key_slot_2 = 21
wr_lock_key_slot_3 = 22
wr_lock_key_slot_4_h = 23
wr_lock_key_slot_5_h = 24
rd_lock_dbg_pwd = 25
rd_lock_key_slot_0 = 26
rd_lock_key_slot_1 = 27
rd_lock_key_slot_2 = 28
rd_lock_key_slot_3 = 29
rd_lock_key_slot_4 = 30
rd_lock_key_slot_5 = 31

def img_update_efuse(sign, pk_hash, flash_encryp_type, flash_key, sec_eng_key_sel, sec_eng_key):
    global cfg
    fp = open(cfg.get('Img_Cfg', 'efuse_file'), 'rb')
    efuse_data = bytearray(fp.read()) + bytearray(0)
    fp.close()
    fp = open(cfg.get('Img_Cfg', 'efuse_mask_file'), 'rb')
    efuse_mask_data = bytearray(fp.read()) + bytearray(0)
    fp.close()
    mask_4bytes = bytearray.fromhex('FFFFFFFF')
    efuse_data[0] |= flash_encryp_type
    efuse_data[0] |= sign << 2
    if flash_encryp_type > 0:
        efuse_data[0] |= 128
    efuse_mask_data[0] |= 255
    rw_lock = 0
    if pk_hash != None:
        efuse_data[keyslot0:keyslot2] = pk_hash
        efuse_mask_data[keyslot0:keyslot2] = mask_4bytes * 8
        rw_lock |= 1 << wr_lock_key_slot_0
        rw_lock |= 1 << wr_lock_key_slot_1
    if flash_key != None:
        if flash_encryp_type == 1:
            efuse_data[keyslot2:keyslot4] = flash_key
            efuse_mask_data[keyslot2:keyslot4] = mask_4bytes * 8
        elif flash_encryp_type == 2:
            efuse_data[keyslot2:keyslot4] = flash_key
            efuse_mask_data[keyslot2:keyslot4] = mask_4bytes * 8
        elif flash_encryp_type == 3:
            efuse_data[keyslot2:keyslot4] = flash_key
            efuse_mask_data[keyslot2:keyslot4] = mask_4bytes * 8
        rw_lock |= 1 << wr_lock_key_slot_2
        rw_lock |= 1 << wr_lock_key_slot_3
        rw_lock |= 1 << rd_lock_key_slot_2
        rw_lock |= 1 << rd_lock_key_slot_3
    if sec_eng_key != None:
        if flash_encryp_type == 0:
            if sec_eng_key_sel == 0:
                efuse_data[keyslot2:keyslot3] = sec_eng_key[16:32]
                efuse_data[keyslot3:keyslot4] = sec_eng_key[0:16]
                efuse_mask_data[keyslot2:keyslot4] = mask_4bytes * 8
                rw_lock |= 1 << wr_lock_key_slot_2
                rw_lock |= 1 << wr_lock_key_slot_3
                rw_lock |= 1 << rd_lock_key_slot_2
                rw_lock |= 1 << rd_lock_key_slot_3
            if sec_eng_key_sel == 1:
                efuse_data[keyslot3:keyslot4] = sec_eng_key[16:32]
                efuse_data[keyslot2:keyslot3] = sec_eng_key[0:16]
                efuse_mask_data[keyslot2:keyslot4] = mask_4bytes * 8
                rw_lock |= 1 << wr_lock_key_slot_2
                rw_lock |= 1 << wr_lock_key_slot_3
                rw_lock |= 1 << rd_lock_key_slot_2
                rw_lock |= 1 << rd_lock_key_slot_3
        if flash_encryp_type == 1:
            if sec_eng_key_sel == 0:
                efuse_data[keyslot4:keyslot5] = sec_eng_key[0:16]
                efuse_mask_data[keyslot4:keyslot5] = mask_4bytes * 4
                rw_lock |= 1 << wr_lock_key_slot_4_l
                rw_lock |= 1 << wr_lock_key_slot_4_h
                rw_lock |= 1 << rd_lock_key_slot_4
            if sec_eng_key_sel == 1:
                efuse_data[keyslot4:keyslot5] = sec_eng_key[0:16]
                efuse_mask_data[keyslot4:keyslot5] = mask_4bytes * 4
                rw_lock |= 1 << wr_lock_key_slot_4_l
                rw_lock |= 1 << wr_lock_key_slot_4_h
                rw_lock |= 1 << rd_lock_key_slot_4
    efuse_data[124:128] = bflb_utils.int_to_4bytearray_l(rw_lock)
    efuse_mask_data[124:128] = bflb_utils.int_to_4bytearray_l(rw_lock)
    fp = open(cfg.get('Img_Cfg', 'efuse_file'), 'wb+')
    fp.write(efuse_data)
    fp.close()
    fp = open(cfg.get('Img_Cfg', 'efuse_mask_file'), 'wb+')
    fp.write(efuse_mask_data)
    fp.close()


def img_create_get_sign_encrypt_info(bootheader_data):
    sign = bootheader_data[116] & 3
    encrypt = bootheader_data[116] >> 2 & 3
    key_sel = bootheader_data[116] >> 4 & 3
    return (
     sign, encrypt, key_sel)


def img_create_get_hash_ignore(bootheader_data):
    return bootheader_data[118] >> 1 & 1


def img_create_get_crc_ignore(bootheader_data):
    return bootheader_data[118] & 1


def img_create_update_bootheader(bootheader_data, hash, seg_cnt):
    bootheader_data[120:124] = bflb_utils.int_to_4bytearray_l(seg_cnt)
    sign, encrypt, key_sel = img_create_get_sign_encrypt_info(bootheader_data)
    if img_create_get_hash_ignore(bootheader_data) == 1 and sign == 0:
        bflb_utils.printf('Hash ignored')
    else:
        bootheader_data[132:164] = hash
    if img_create_get_crc_ignore(bootheader_data) == 1:
        bflb_utils.printf('Header crc ignored')
    else:
        hd_crcarray = bflb_utils.get_crc32_bytearray(bootheader_data[0:172])
        bootheader_data[172:176] = hd_crcarray
        bflb_utils.printf('Header crc: ', binascii.hexlify(hd_crcarray))
    return bootheader_data[0:176]


def img_create_update_segheader(segheader, segdatalen, segdatacrc):
    segheader[4:8] = segdatalen
    segheader[8:12] = segdatacrc
    return segheader


def img_create_sha256_data(data_bytearray):
    hashfun = hashlib.sha256()
    hashfun.update(data_bytearray)
    return bflb_utils.hexstr_to_bytearray(hashfun.hexdigest())


def img_create_encrypt_data(data_bytearray, key_bytearray, iv_bytearray, flash_img):
    if flash_img == 0:
        cryptor = bflb_aes.AESModeOfOperationCBC(key_bytearray, iv=iv_bytearray)
        ciphertext = cryptor.encrypt(data_bytearray)
    else:
        iv = bflb_aes.Counter(initial_value=(int(binascii.hexlify(iv_bytearray), 16)))
        cryptor = bflb_aes.AESModeOfOperationCTR(key_bytearray, counter=iv)
        ciphertext = cryptor.encrypt(data_bytearray)
    return ciphertext


def img_create_sign_data(data_bytearray, privatekey_file_uecc, publickey_file):
    sk = ecdsa.SigningKey.from_pem(open(privatekey_file_uecc).read())
    vk = ecdsa.VerifyingKey.from_pem(open(publickey_file).read())
    pk_data = vk.to_string()
    bflb_utils.printf('Private key: ', binascii.hexlify(sk.to_string()))
    bflb_utils.printf('Public key: ', binascii.hexlify(pk_data))
    pk_hash = img_create_sha256_data(pk_data)
    bflb_utils.printf('Public key hash=', binascii.hexlify(pk_hash))
    signature = sk.sign(data_bytearray, hashfunc=(hashlib.sha256), sigencode=(ecdsa.util.sigencode_string))
    bflb_utils.printf('Signature=', binascii.hexlify(signature))
    len_array = bflb_utils.int_to_4bytearray_l(len(signature))
    sig_field = len_array + signature
    crcarray = bflb_utils.get_crc32_bytearray(sig_field)
    return (
     pk_data, pk_hash, sig_field + crcarray)


def img_create_read_file_append_crc(file, crc):
    fp = open(file, 'rb')
    read_data = bytearray(fp.read())
    crcarray = bytearray(0)
    if crc:
        crcarray = bflb_utils.get_crc32_bytearray(read_data)
    fp.close()
    return read_data + crcarray


def img_creat_process(flash_img):
    global encrypt_key
    encrypt_blk_size = 16
    padding = bytearray(encrypt_blk_size)
    data_tohash = bytearray(0)
    ret = 'OK'
    cfg_section = 'Img_Cfg'
    segheader_file = []
    if flash_img == 0:
        for files in cfg.get(cfg_section, 'segheader_file').split(' '):
            segheader_file.append(str(files))

    segdata_file = []
    for files in cfg.get(cfg_section, 'segdata_file').split(' '):
        segdata_file.append(str(files))
        if flash_img == 1:
            break

    boot_header_file = cfg.get(cfg_section, 'boot_header_file')
    bootheader_data = img_create_read_file_append_crc(boot_header_file, 0)
    encrypt = 0
    sign, encrypt, key_sel = img_create_get_sign_encrypt_info(bootheader_data)
    aesiv_data = bytearray(0)
    pk_data = bytearray(0)
    if sign != 0:
        bflb_utils.printf('Image need sign')
        publickey_file = cfg.get(cfg_section, 'publickey_file')
        privatekey_file_uecc = cfg.get(cfg_section, 'privatekey_file_uecc')
    if encrypt != 0:
        bflb_utils.printf('Image need encrypt ', encrypt)
        encrypt_key_org = bflb_utils.hexstr_to_bytearray(cfg.get(cfg_section, 'aes_key_org'))
        if encrypt == 1:
            encrypt_key = encrypt_key_org[0:16]
        elif encrypt == 2:
            encrypt_key = encrypt_key_org[0:32]
        elif encrypt == 3:
            encrypt_key = encrypt_key_org[0:24]
        bflb_utils.printf('Key= ', binascii.hexlify(encrypt_key))
        encrypt_iv = bflb_utils.hexstr_to_bytearray(cfg.get(cfg_section, 'aes_iv'))
        iv_crcarray = bflb_utils.get_crc32_bytearray(encrypt_iv)
        aesiv_data = encrypt_iv + iv_crcarray
        data_tohash = data_tohash + aesiv_data
    seg_cnt = len(segheader_file)
    if flash_img == 0:
        if seg_cnt != len(segdata_file):
            bflb_utils.printf('Segheader count and segdata count not match')
            return (
             'FAIL', data_tohash)
    data_toencrypt = bytearray(0)
    if flash_img == 0:
        i = 0
        seg_header_list = []
        seg_data_list = []
        while i < seg_cnt:
            seg_data = img_create_read_file_append_crc(segdata_file[i], 0)
            padding_size = 0
            if len(seg_data) % encrypt_blk_size != 0:
                padding_size = encrypt_blk_size - len(seg_data) % encrypt_blk_size
                seg_data += padding[0:padding_size]
            else:
                segdata_crcarray = bflb_utils.get_crc32_bytearray(seg_data)
                seg_data_list.append(seg_data)
                seg_header = img_create_read_file_append_crc(segheader_file[i], 0)
                seg_header = img_create_update_segheader(seg_header, bflb_utils.int_to_4bytearray_l(len(seg_data)), segdata_crcarray)
                segheader_crcarray = bflb_utils.get_crc32_bytearray(seg_header)
                seg_header = seg_header + segheader_crcarray
                seg_header_list.append(seg_header)
                i = i + 1

        i = 0
        while i < seg_cnt:
            data_toencrypt += seg_header_list[i]
            data_toencrypt += seg_data_list[i]
            i += 1

    else:
        seg_data = img_create_read_file_append_crc(segdata_file[0], 0)
        padding_size = 0
        if len(seg_data) % encrypt_blk_size != 0:
            padding_size = encrypt_blk_size - len(seg_data) % encrypt_blk_size
            seg_data += padding[0:padding_size]
        data_toencrypt += seg_data
        seg_cnt = len(data_toencrypt)
    if encrypt != 0:
        data_toencrypt = img_create_encrypt_data(data_toencrypt, encrypt_key, encrypt_iv, flash_img)
    fw_data = bytearray(0)
    data_tohash += data_toencrypt
    fw_data = data_toencrypt
    hash = img_create_sha256_data(data_tohash)
    bflb_utils.printf('Image hash is ', binascii.hexlify(hash))
    bootheader_data = img_create_update_bootheader(bootheader_data, hash, seg_cnt)
    signature = bytearray(0)
    pk_hash = None
    if sign == 1:
        pk_data, pk_hash, signature = img_create_sign_data(data_tohash, privatekey_file_uecc, publickey_file)
        pk_data = pk_data + bflb_utils.get_crc32_bytearray(pk_data)
    if flash_img == 1:
        bflb_utils.printf('Write flash img')
        bootinfo_file_name = cfg.get(cfg_section, 'bootinfo_file')
        fp = open(bootinfo_file_name, 'wb+')
        bootinfo = bootheader_data + pk_data + signature + aesiv_data
        fp.write(bootinfo)
        fp.close()
        fw_file_name = cfg.get(cfg_section, 'img_file')
        fp = open(fw_file_name, 'wb+')
        fp.write(fw_data)
        fp.close()
        if encrypt != 0:
            if encrypt == 1:
                img_update_efuse(sign, pk_hash, 1, encrypt_key + bytearray(32 - len(encrypt_key)), key_sel, None)
            if encrypt == 2:
                img_update_efuse(sign, pk_hash, 3, encrypt_key + bytearray(32 - len(encrypt_key)), key_sel, None)
            if encrypt == 3:
                img_update_efuse(sign, pk_hash, 2, encrypt_key + bytearray(32 - len(encrypt_key)), key_sel, None)
        else:
            img_update_efuse(sign, pk_hash, encrypt, None, key_sel, None)
    else:
        bflb_utils.printf('Write if img')
        whole_img_file_name = cfg.get(cfg_section, 'whole_img_file')
        fp = open(whole_img_file_name, 'wb+')
        img_data = bootheader_data + pk_data + signature + aesiv_data + fw_data
        fp.write(img_data)
        fp.close()
        if encrypt != 0:
            if encrypt == 1:
                img_update_efuse(sign, pk_hash, 1, None, key_sel, encrypt_key + bytearray(32 - len(encrypt_key)))
            if encrypt == 2:
                img_update_efuse(sign, pk_hash, 3, None, key_sel, encrypt_key + bytearray(32 - len(encrypt_key)))
            if encrypt == 3:
                img_update_efuse(sign, pk_hash, 2, None, key_sel, encrypt_key + bytearray(32 - len(encrypt_key)))
        else:
            img_update_efuse(sign, pk_hash, 0, None, key_sel, bytearray(32))
    return (
     'OK', data_tohash)


def usage():
    bflb_utils.printf(sys.argv[0], '\n')
    bflb_utils.printf('-i/--img_type=  :image type:media or if')
    bflb_utils.printf('-h/--help       :helper')


def img_create_do(options, img_dir_path=None, config_file=None):
    bflb_utils.printf('Image create path: ', img_dir_path)
    if config_file == None:
        config_file = img_dir_path + '/img_create_cfg.ini'
    cfg.read(config_file)
    bflb_utils.printf('Config file: ', config_file)
    img_type = 'media'
    signer = 'none'
    ret = 'OK'
    data_tohash = bytearray(0)
    try:
        opts, args = getopt.getopt(options, 'i:s:Hh', ['img_type=', 'signer=', 'help'])
        for option, value in opts:
            if option in ('-h', '-H'):
                usage()
            elif option in ('-i', '--img_type'):
                img_type = value
            if option in ('-s', '--signer'):
                signer = value

    except getopt.GetoptError as err:
        try:
            bflb_utils.printf(err)
            usage()
        finally:
            err = None
            del err

    if img_type == 'media':
        flash_img = 1
    else:
        flash_img = 0
    ret, data_tohash = img_creat_process(flash_img)
    if ret != 'OK':
        bflb_utils.printf('Fail to create images!')
        return


def create_sp_media_image(config, cpu_type=None):
    global cfg
    bflb_utils.printf('========= sp image create =========')
    cfg = bflb_utils.BFConfigParser()
    cfg.read(config)
    img_creat_process(1)
# okay decompiling lib.bl702.img_create_do.pyc
