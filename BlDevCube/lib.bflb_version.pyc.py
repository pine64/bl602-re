# decompyle3 version 3.3.2
# Python bytecode 3.7 (3394)
# Decompiled from: Python 3.8.5 (default, Jul 28 2020, 12:59:40) 
# [GCC 9.3.0]
# Embedded file name: lib\bflb_version.py
try:
    import changeconf as cgc
    conf_sign = True
except:
    conf_sign = False

version_text = '(V_0.2.0)'
if conf_sign:
    eflash_loader_version_text = 'eflash_loader_v1.7.2'
else:
    eflash_loader_version_text = 'bflb_eflash_loader_v1.7.2'
# okay decompiling lib.bflb_version.pyc
