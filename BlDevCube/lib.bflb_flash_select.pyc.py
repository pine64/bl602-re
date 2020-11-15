# decompyle3 version 3.3.2
# Python bytecode 3.7 (3394)
# Decompiled from: Python 3.8.5 (default, Jul 28 2020, 12:59:40) 
# [GCC 9.3.0]
# Embedded file name: lib\bflb_flash_select.py


def update_flash_cfg(chipname, chiptype, flash_id, file=None, create=False, section=None):
    sub_module = __import__(('lib.' + chiptype), fromlist=[chiptype])
    if sub_module.flash_select_do.update_flash_cfg_do(chipname, chiptype, flash_id, file, create, section) == False:
        return False
    return True


def get_supported_flash(chiptype):
    sub_module = __import__(('lib.' + chiptype), fromlist=[chiptype])
    return sub_module.flash_select_do.get_supported_flash_do()


if __name__ == '__main__':
    pass
# okay decompiling lib.bflb_flash_select.pyc
