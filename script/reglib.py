#!/usr/bin/env python3

from typing import List, Union, Optional

def ident(l, n=1, ch="    "):
    si = ch * n
    return [si + i for i in l]

class gen:
    def genSVD(self) -> List[str]:
        return []
    def genHeader(self) -> List[str]:
        return []

class field(gen):
    def __init__(self, name, msb, lsb):
        self.name = name
        self.msb = msb
        self.lsb = lsb
        self.len = msb - lsb + 1
    def __str__(self):
        return f"('{self.name}', {self.msb}, {self.lsb}, {self.len})"
    def __gt__(self, f2):
        return self.msb > f2.msb
    def genSVD(self):
        return [
            '<field>',
            f'    <name>{self.name}</name>',
            f'    <msb>{self.msb}</msb>',
            f'    <lsb>{self.lsb}</lsb>',
            '</field>'
        ]
    def genHeader(self):
        return [f'uint32_t {self.name} : {self.len}; // @ {hex(self.msb)} -- {hex(self.lsb)} ']

class reg(gen):
    def __init__(self, name, offset):
        self.name = name
        self.offset = offset
        self.fields: List[field] = []
    def addField(self, name, mask):
        lsb = 0
        while mask % 2 == 1:
            lsb = lsb + 1
            mask >>= 1
        msb = lsb
        while (mask % 2 == 0) and not (msb == 32):
            msb = msb + 1
            mask >>= 1
        msb = msb - 1
        f = field(name, msb, lsb)
        self.fields.append(f)
        return f
    def __gt__(self, reg2):
        return self.offset > reg2.offset
    def __str__(self):
        return f"('{self.name}', {self.offset})"
    def genSVD(self):
        self.fields.sort(reverse=True)
        s = ['<register>', 
            f'    <name>{self.name}</name>', 
            f'    <description>{self.name}.</description>', 
            f'    <addressOffset>{hex(self.offset)}</addressOffset>'
        ]
        if len(self.fields):
            s.append('    <fields>')
            for i in self.fields:
                s.extend(ident(i.genSVD(), 2))
            s.append('    </fields>')
        s.append('</register>')
        return s
    def genHeader(self):
        self.fields.sort(reverse=False)
        if len(self.fields):
            s = [
                'union {',
                '\tuint32_t value;',
                '\tstruct {'
            ]
            currentBit = 0
            padId = 0
            for i in self.fields:
                if (i.lsb > currentBit):
                    s.append(f'\t\tuint32_t pad{padId} : {i.lsb - currentBit};')
                    padId = padId + 1
                s.extend(ident(i.genHeader(), 2, '\t'))
                currentBit = i.msb + 1

            s.extend([
                "\t};",
                "}" + f' {self.name}; // @ {hex(self.offset)}'
            ])
            return s
        else:
            return [f'uint32_t {self.name}; // @ {hex(self.offset)}']

TPNAME = {
    1:'uint8_t',
    2:'uint16_t',
    4:'uint32_t',
    8:'uint64_t'
}

class buf(gen):
    def __init__(self, name, offset, dim, nbytes=4):
        self.name = name
        self.offset = offset
        self.dim = dim
        self.nbytes = nbytes
        self.typename = TPNAME[nbytes]
    def __gt__(self, reg2):
        return self.offset > reg2.offset
    def __str__(self):
        return f"('{self.name}', {self.offset})"
    def genSVD(self):
        s = ['<register>', 
            f'    <name>{self.name}%s</name>', 
            f'    <description>{self.name}.</description>', 
            f'    <addressOffset>{hex(self.offset)}</addressOffset>',
            f'    <size>{self.nbytes * 4}</size>',
            f'    <dim>{self.dim}</dim>',
            f'    <dimIncrement>{self.nbytes}</dimIncrement>',
            f'    <dimIndex>0-{self.dim - 1}</dimIndex>',
             '</register>'
        ]
        return s
    def genHeader(self):
        return [f'{self.typename} {self.name}[{hex(self.dim)}]; // @ {hex(self.offset)}']


class peripheral(gen):
    def __init__(self, name, base, size):
        self.name = name
        self.base = base
        self.size = size
        self.regs:List[Union[buf, reg]] = []
    def addReg(self, name, addr):
        r = self.findReg(addr)
        if r:
            return r
        r = reg(name, addr - self.base)
        self.regs.append(r)
        return r
    def addBuf(self, name, addr, size, nBytes=4):
        r = self.findReg(addr)
        if r:
            return r
        r = buf(name, addr - self.base, size, nBytes)
        self.regs.append(r)
    def findReg(self, addr):
        offset = addr - self.base 
        for i in self.regs:
            if i.offset == offset:
                return i
    def genSVD(self):
        self.regs.sort()
        s = [
             '<peripheral>',
            f'    <name>{self.name}</name>',
            f'    <description>{self.name}.</description>',
            f'    <baseAddress>{hex(self.base)}</baseAddress>',
            f'    <groupName>{self.name}</groupName>',
             '    <size>32</size>',
             '    <access>read-write</access>',
             '    <addressBlock>',
             '        <offset>0</offset>',
            f'        <size>{hex(self.size)}</size>',
             '        <usage>registers</usage>',
             '    </addressBlock>',
             '    <registers>'
        ]
        for i in self.regs:
            s.extend(ident(i.genSVD(), 2))
        s.append('    </registers>')
        s.append('</peripheral>')
        return s
    def genHeader(self):
        self.regs.sort()
        s = [
            f'typedef union ' + "{",
            f'\tuint32_t regs[{hex(self.size//4)}];',
            f'\tuint8_t pad[{hex(self.size)}];',
             '\tstruct {']

        currentOffset = 0
        padId = 0
        for i in self.regs:
            if currentOffset < i.offset:
                distance = i.offset - currentOffset
                s.append(f'\t\tuint8_t pad{padId}[{hex(distance)}];')
                padId = padId + 1
            s.extend(ident(i.genHeader(), 2, '\t'))
            currentOffset = i.offset + 4
        s.extend([
            '\t};',
            "}" + f' {self.name}_regs;',
            f'#define {self.name.upper()}_BASE {hex(self.base)}',
            f'#define {self.name.upper()} (({self.name}_regs* volatile)({self.name.upper()}_BASE))'
        ])
        
        return s

class Context:
    def __init__(self):
        self.p:Optional[peripheral] = None
        self.r:Optional[reg] = None

context = Context()

def Peripheral(p):
    context.p = p
    return p

def Reg(name, addr):
    if context.p:
        r = context.p.addReg(name, addr)
        context.r = r
        return r
    else:
        print("You are not in any peripheral")

def Buf(name, addrBegin, addrEnd, nBytes = 4):
    n = (addrEnd - addrBegin) // nBytes + 1
    if context.p:
        r = context.p.addBuf(name, addrBegin, n, nBytes)
        return r
    else:
        print("You are not in any peripheral")


def GenSVD():
    if context.p:
        return context.p.genSVD()
    else:
        print("You are not in any peripheral")

def GenHeader():
    if context.p:
        return context.p.genHeader()
    else:
        print("You are not in any peripheral")

def Goto(addr):
    context.r = context.p.findReg(addr)

def Field(name, mask):
    if context.r:
        context.r.addField(name, mask)
    else:
        print("You are not in any register")

def FieldBit(name, bit, len=1):
    if context.r:
        context.r.addField(name, (~(((2**len)-1)<<bit) & 0xFFFFFFFF))
    else:
        print("You are not in any register")

def RegFromComment(addr, comment:str):
    name = ""
    import re
    name_pattern = r'\* @name ([^\s]+)'
    field_pattern = r'\*\s+(\d\d)(:(\d\d))*\s*([^\s]+)'
    name_match = re.search(name_pattern, comment)
    if name_match:
        name = name_match.group(1)
        print(name)
    else:
        print("Cannot find group.")
        return
    r = Reg(name, addr)
    field_matches = re.finditer(field_pattern, comment)

    for g in field_matches:
        msb = int(g.group(1))
        lsb = g.group(3)
        if not lsb:
            lsb = msb
        else:
            lsb = int(lsb)
        FieldBit(g.group(4), lsb, msb-lsb+1)


if __name__ == '__main__':
    Peripheral(peripheral('TestP', 0x40000000, 0x10000))
    Reg('MyReg', 0x40000010)
    Field('xxx', 0xfffff000)
    Reg('AnotherREG', 0x40000100)
    Field('yyy', 0xfffffff0)
    Field('zzz', 0xffffff0f)
    Field('qqq', 0xFFF383FF)
    Reg('MyReg', 0x40000010)
    Field('yyy', 0x8fffffff)
    Goto(0x40000100)
    Field('aaa', 0x80ffffff)
    print('\n'.join(GenSVD()))

    def testField():
        testReg = reg("test", 0)
        f0 = testReg.addField("field0", 0xfffffff0)
        print(f0)
        f1 = testReg.addField("field1", 0x0fffffff)
        print(f1)
        f2 = testReg.addField("field2", 0x00000000)
        print(f2)
        f3 = testReg.addField("field3", 0xfff80000)
        print(f3)
        f4 = testReg.addField("field4", 0xfff8003F)
        print(f4)