# decompyle3 version 3.3.2
# Python bytecode 3.7 (3394)
# Decompiled from: Python 3.8.5 (default, Jul 28 2020, 12:59:40) 
# [GCC 9.3.0]
# Embedded file name: site-packages\fdt\header.py
from struct import unpack_from, pack
DTB_BEGIN_NODE = 1
DTB_END_NODE = 2
DTB_PROP = 3
DTB_NOP = 4
DTB_END = 9

class Header:
    MIN_SIZE = 28
    MAX_SIZE = 40
    MAX_VERSION = 17
    MAGIC_NUMBER = 3490578157

    @property
    def version(self):
        return self._version

    @version.setter
    def version(self, value):
        if value > self.MAX_VERSION:
            raise ValueError(f"Invalid Version {value}, use: 0 - 17 !")
        self._size = self.MIN_SIZE
        if value >= 2:
            self._size += 4
        if value >= 3:
            self._size += 4
        if value >= 17:
            self._size += 4
        self._padding = 8 - self._size % 8 if self._size % 8 != 0 else 0
        self._version = value
        self.last_comp_version = value - 1

    @property
    def size(self):
        return self._size + self._padding

    @property
    def padding(self):
        return self._padding

    def __init__(self):
        self._version = None
        self._size = 0
        self._padding = 0
        self.total_size = 0
        self.off_dt_struct = 0
        self.off_dt_strings = 0
        self.off_mem_rsvmap = 0
        self.last_comp_version = 0
        self.boot_cpuid_phys = 0
        self.size_dt_strings = None
        self.size_dt_struct = None

    def __str__(self):
        return '<FDT-v{}, size: {}>'.format(self.version, self.size)

    def info(self):
        nfo = 'FDT Header:'
        nfo += '- Version: {}'.format(self.version)
        nfo += '- Size:    {}'.format(self.size)
        return nfo

    def export(self) -> bytes:
        """

        :return:
        """
        if self.version is None:
            raise Exception('Header Version must be specified !')
        blob = pack('>7I', self.MAGIC_NUMBER, self.total_size, self.off_dt_struct, self.off_dt_strings, self.off_mem_rsvmap, self.version, self.last_comp_version)
        if self.version >= 2:
            blob += pack('>I', self.boot_cpuid_phys)
        if self.version >= 3:
            blob += pack('>I', self.size_dt_strings)
        if self.version >= 17:
            blob += pack('>I', self.size_dt_struct)
        if self.padding:
            blob += bytes([0] * self.padding)
        return blob

    @classmethod
    def parse(cls, data: bytes, offset: int=0):
        """

        :param data:
        :param offset:
        """
        if len(data) < offset + cls.MIN_SIZE:
            raise ValueError('Data size too small !')
        header = cls()
        magic_number, header.total_size, header.off_dt_struct, header.off_dt_strings, header.off_mem_rsvmap, header.version, header.last_comp_version = unpack_from('>7I', data, offset)
        offset += cls.MIN_SIZE
        if magic_number != cls.MAGIC_NUMBER:
            raise Exception('Invalid Magic Number')
        if header.last_comp_version > cls.MAX_VERSION - 1:
            raise Exception(f"Invalid last compatible Version {header.last_comp_version}")
        if header.version >= 2:
            header.boot_cpuid_phys = unpack_from('>I', data, offset)[0]
            offset += 4
        if header.version >= 3:
            header.size_dt_strings = unpack_from('>I', data, offset)[0]
            offset += 4
        if header.version >= 17:
            header.size_dt_struct = unpack_from('>I', data, offset)[0]
            offset += 4
        return header
# okay decompiling fdt.header.pyc
