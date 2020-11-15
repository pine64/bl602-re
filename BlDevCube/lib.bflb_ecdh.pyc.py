# decompyle3 version 3.3.2
# Python bytecode 3.7 (3394)
# Decompiled from: Python 3.8.5 (default, Jul 28 2020, 12:59:40) 
# [GCC 9.3.0]
# Embedded file name: lib\bflb_ecdh.py
import binascii
from ecdsa import ECDH, NIST256p
from lib import bflb_utils

class BLECDH:

    def __init__(self, curve=NIST256p):
        self.ecdh = ECDH(curve)
        self.local_public_key = None
        self.sharedsecret = ''

    def create_public_key(self):
        self.ecdh.generate_private_key()
        self.local_public_key = self.ecdh.get_public_key()
        ret = binascii.hexlify(self.local_public_key.to_string()).decode('utf-8')
        bflb_utils.printf('local public key:')
        bflb_utils.printf(ret)
        return ret

    def create_shared_key(self, peer_pk):
        self.ecdh.load_received_public_key_bytes(binascii.unhexlify(peer_pk))
        self.sharedsecret = self.ecdh.generate_sharedsecret_bytes()
        ret = binascii.hexlify(self.sharedsecret).decode('utf-8')
        bflb_utils.printf('secret key:')
        bflb_utils.printf(ret)
        return ret
# okay decompiling lib.bflb_ecdh.pyc
