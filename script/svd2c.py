#!/usr/bin/env python3
import xml.etree.ElementTree as ET
from reglib import *
from typing import Mapping

peris :Mapping[str, peripheral] = {}

import pickle, os
if os.path.exists("./peris.cache"):
    peris = pickle.load(open("./peris.cache", "rb"))
else:
    tree = ET.parse('../components/bl602/bl602_std/bl602_std/Device/Bouffalo/BL602/Peripherals/soc602_reg.svd')

    root = tree.getroot()

    for p in root.iter('peripheral'):
        p_name = p.find('name').text
        baseAddress = int(p.find('baseAddress').text, 16)
        addressSize = int(p.find('./addressBlock/size').text, 16)
        
        pp = Peripheral(peripheral(p_name, baseAddress, addressSize))
        for r in p.iter('register'):
            r_name = r.find('name').text
            r_offset = int(r.find('addressOffset').text, 16)
            Reg(r_name, r_offset + baseAddress)
            for f in r.iter('field'):
                f_name = f.find('name').text
                lsb = int(f.find('lsb').text)
                msb = int(f.find('msb').text)
                FieldBit(f_name, lsb, msb - lsb + 1)
        peris[p_name] = pp
    pickle.dump(peris, open("./peris.cache", "wb"))

if __name__ == '__main__':
    import sys
    if len(sys.argv) == 1:
        for p_name, p in peris.items():
            open(f"../src/include/soc/{p_name}.h", "w").write("\n".join(p.genHeader()))
    else:
        if len(sys.argv) >= 2:
            addr = int(sys.argv[1], 16)
            mask = 0
            if len(sys.argv) == 3:
                mask = int(sys.argv[2], 16)
            print(CAccess(peris, addr, mask))