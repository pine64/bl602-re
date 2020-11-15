# decompyle3 version 3.3.2
# Python bytecode 3.7 (3394)
# Decompiled from: Python 3.8.5 (default, Jul 28 2020, 12:59:40) 
# [GCC 9.3.0]
# Embedded file name: site-packages\fdt\misc.py
import re
from string import printable

def is_string(data):
    """ Check property string validity """
    if not len(data):
        return
    if data[(-1)] != 0:
        return
    pos = 0
    while pos < len(data):
        posi = pos
        while pos < len(data):
            if data[pos] != 0:
                if data[pos] in printable.encode():
                    if data[pos] not in (ord('\r'), ord('\n')):
                        pos += 1

        if data[pos] != 0 or pos == posi:
            return
        else:
            pos += 1

    return True


def extract_string(data, offset=0):
    """ Extract string """
    str_end = offset
    while data[str_end] != 0:
        str_end += 1

    return data[offset:str_end].decode('ascii')


def line_offset(tabsize, offset, string):
    offset = ' ' * (tabsize * offset)
    return offset + string


def get_version_info(text):
    ret = dict()
    for line in text.split('\n'):
        line = line.rstrip('\x00')
        if line:
            if line.startswith('/ {'):
                break
        if line:
            if line.startswith('//'):
                line = line.replace('//', '').replace(':', '')
                line = line.split()
                if line[0] in ('version', 'last_comp_version', 'boot_cpuid_phys'):
                    ret[line[0]] = int(line[1], 0)

    return ret


def strip_comments(text):
    text = re.sub('//.*?(\r\n?|\n)|/\\*.*?\\*/', '\n', text, flags=(re.S))
    return text


def split_to_lines(text):
    lines = []
    mline = str()
    for line in text.split('\n'):
        line = line.replace('\t', ' ')
        line = line.rstrip('\x00')
        line = line.rstrip(' ')
        line = line.lstrip(' ')
        if line:
            if line.startswith('/dts-'):
                continue
            if not line.endswith('{') or line.endswith(';'):
                line = line.replace(';', '')
                lines.append(mline + line)
                mline = str()
            else:
                mline += line

    return lines
# okay decompiling fdt.misc.pyc
