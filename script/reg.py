#!/usr/bin/env python3
def RegFromComment2(comment:str):
    import re
    field_pattern = r'\*\s+(\d\d)(:(\d\d))*\s*([^\s]+)\s+(.*)'
    
    field_matches = re.finditer(field_pattern, comment)

    for g in field_matches:
        fname = g.group(4)
        msb = int(g.group(1))
        lsb = g.group(3)
        val = g.group(5)
        if val.startswith("0x"):
            val = int(val, 16)
        else:
            val = int(val)
        if not lsb:
            lsb = msb
        else:
            lsb = int(lsb)
        yield fname, msb, lsb, val
        

def getregs(fname, pattern='name'):
    import re
    state = "idle"
    regs = []
    if pattern == 'name':
        name_pattern = r'\* @(name) ([^\s]+)'
    else:
        name_pattern = r'\* @(brief) ([^\s]+)'
    addr_pattern = r'#define .*_OFFSET\s+0x([0-9A-F]+)'
    name = ''
    for i in open(fname).readlines():
        if state == "idle":
            g = re.search(name_pattern, i)
            if g:
                name = g.group(2)
                regs.append(i)
                state = "find_reg"
        elif state == "find_reg":
            g = re.search(addr_pattern, i)
            if g:
                yield name, "".join(regs), int(g.group(1), 16) & 0xFFFFF
                regs.clear()
                state = "idle"
            else:
                regs.append(i)


binfile = open("../blobs/regdump_44C0B000-44C0CFFF.bin", "rb").read(0x2000)


import struct
for rname, r, offset in getregs('../blobs/reg_riu.h', pattern='brief'):
    regdefault = binfile[offset:offset+4]
    print(regdefault)
    regdefault = int.from_bytes(regdefault, byteorder='little')
    matched = True
    print(f"Reg {rname}, val {regdefault} offset {hex(offset)}")
    for name, msb, lsb, val in RegFromComment2(r):
        vreset = (regdefault >> lsb) & ((2**(msb - lsb+1) - 1))
        print(f"\t{name}, expected {hex(val)}, get {hex(vreset)}")
        if vreset != val:
            matched = False
