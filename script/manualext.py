#!/usr/bin/env python3
from reglib import *
from typing import Mapping

peris :Mapping[str, peripheral] = {}

############ MDM

peris['mdm'] = Peripheral(peripheral('mdm', 0x44c00000, 0x4000))

Reg('txchan', 0x44c00824)
Field('txcbwmax', 0xfcffffff) # Channel bandwidth
Field('txnssmax', 0xffffff8f) # number of spatial streams
Field('ntxmax', 0xff8fffff) # tx chan?
Field('v18', 0xfffffeff) # some switch? DAT_44c00000>>18
Field('vht', 0xfffffffd) # very high throughput
Field('v31', 0xfffeffff) # some switch? DAT_44c00000>>31

Reg('rxchan', 0x44c00820)
Field('rxcbwmax', 0xfcffffff) # Channel bandwidth
Field('rxnssmax', 0xffffff8f) # number of spatial streams
# Field('nrxmax', 0xff8fffff) # not exists
Field('v19', 0xfffffeff) # some switch? DAT_44c00000>>19
Field('vht', 0xfffffffd) # very high throughput
Field('v30', 0xfffeffff) # some switch? DAT_44c00000>>30
Field('_v30', 0xffefffff) # some switch? DAT_44c00000>>30
FieldBit('reset', 0) # set 1 in phy_hw_set_channel for.. reset?
Field('rxndpnstsmax', 0xffff8fff)

Reg('version', 0x44c00000)
FieldBit('vht', 31-9)
FieldBit('nss', 8, 4) # phy_get_nss (nss + 1)
FieldBit('rxndpnstsmax', 0xc, 4)
FieldBit('v18', 0x12)
FieldBit('v19', 0x13)
FieldBit('mu_mimo_rx', 0x1e)
FieldBit('mu_mimo_tx', 0x1f)
FieldBit('ldpctx', 0x1a)
FieldBit('ldpcrx', 0x1b)
FieldBit('ntx', 4, 4) # phy_get_ntx (ntx + 1)
FieldBit('txcbwmax', 0x18, 2)
FieldBit('bfmee_supported', 0x1c)
FieldBit('bfmer_supported', 0x1d)

Reg('mdmconf', 0x44c00800)

Reg('swreset', 0x44c00888)
FieldBit('AGCSWRESET', 12)
FieldBit('DSPSWRESET', 8)
FieldBit('FSMSWRESET', 4)
FieldBit('MDMSWRESET', 0)

Reg('TXCTRL0', 0x44c00838)
Reg('TXCTRL1', 0x44c0088c)
Reg('TXCTRL3', 0x44c00898)

Reg('TBECTRL0', 0x44c00858)
Field('tbe_count_adjust_20', 0xffffff00)

Reg('DCESTIMCTRL', 0x44c0081c)
Field('delaynormalgi', 0xFFFFC0FF)
Field('WAITHTSTF', 0xffffff80)

Reg('r834', 0x44c00834)
Field('set60h', 0x00ffffff)
FieldBit('set1', 0)

Reg('SMOOTHCTRL', 0x44c00818)
FieldBit('TDCYCROTVAL20', 0, 8)
FieldBit('TDCYCROTVAL40', 8, 8)
FieldBit('CFGSMOOTH', 16, 2)
FieldBit('CFGSMOOTHFORCE', 18, 1) # set to 0 in init
FieldBit('SMOOTHEN', 19, 1) 
FieldBit('TDCYCROTVAL80', 20, 8)

Reg('tbectrl2', 0x44c00860)


Reg('r3024', 0x44c03024)
Field('precomp', 0xffc0ffff)

Reg('r3030', 0x44c03030)
Reg('r3034', 0x44c03034)
Reg('r3038', 0x44c03038)
Reg('r303c', 0x44c0303c)
Reg('r3040', 0x44c03040)

Reg('rxframeviolationmask', 0x44c0089c)

Reg('SMOOTHSNRTHR', 0x44c00830)
Field('smoothsnrthrhigh', 0xffff00ff)
Field('smoothsnrthrmid', 0xffffff00)
Reg('rxctrl1', 0x44c0083c) # reset to 0x4920492

Reg('r874', 0x44c00874)
Field('resetto1', 0xf7ffffff)
Field('set1beforewriteagcmem', 0xdfffffff)
#print('\n'.join(GenSVD()))



############# AGC

peris['agc'] = Peripheral(peripheral('agc', 0x44c0b000, 0x2000))
Reg('r000', 0x44c0b000)
FieldBit('iqcomp', 31-10)

Reg('RWNXAGCCNTL', 0x44c0b390)
Field('set1', 0xfffffffc)
Field('agcfsmreset', 0xffffefff) # set 1 before agc mem, maybe

Reg('riu_rwnxagcaci20marg0', 0x44c0b340)
Reg('riu_rwnxagcaci20marg1', 0x44c0b344)
Reg('riu_rwnxagcaci20marg2', 0x44c0b348)

Reg('riu_iqestiterclr', 0x44c0b118)

Reg('activeant', 0x44c0b004)

Reg('RWNXAGCCCATIMEOUT', 0x44c0b3bc) # 4000000

Reg('irqmacccatimeouten', 0x44c0b414)
Field('set1', 0xFFFFFEFF)

Reg('r41c', 0x44c0b41c)
FieldBit('needreset', 8) # guess
Reg('r420_copy41c', 0x44c0b420)


Reg('rc218', 0x44c0c218)
Field('set0', 0xffff0000)

Buf('rxgain_offset_vs_temperature', 0x44c0c080, 0x44c0c088, 1)


gid = 0
def scan_write(code):
    global gid
    write_pattern = r'write_volatile_4\(DAT_([0-9a-f]+),uVar\d( & 0x([0-9a-f]+))*( \| 0x([0-9a-f]+))*\);'
    for l in code:
        import re
        g = re.search(write_pattern, l)
        if not g:
            continue
        value = 0
        addr = int(g.group(1), 16)
        if g.group(3) == None: # mask
            value = int(g.group(5), 16)
            mask = (~value) & 0xffffffff
            value = value >> ((value & (-value)).bit_length() - 1)
        else:
            mask = int(g.group(3), 16)
            if g.group(5): # value
                lsb = ((~mask) & 0xffffffff)
                lsb = lsb & (-lsb)
                lsb = lsb.bit_length() - 1
                value = int(g.group(5), 16)
                value = value >> lsb
        name_f = f'set_{hex(value)}_{gid}'
        name_r = f'r{hex(addr&0xffff)}'
        gid = gid + 1
        r = Reg(name_r, addr)
        f = Field(name_f, mask)
        yield r.name, f.name, value

print("agc_config")
for rn, fn, val in scan_write(open('../blobs/agc_config.c').readlines()):
    print(f"AGC->{rn}.{fn} = {hex(val)}")
print("ex")
for rn, fn, val in scan_write([
    "write_volatile_4(DAT_44c0c020,uVar4 & 0xfc00ffff | 0x140000);",
    "write_volatile_4(DAT_44c0b390,uVar1 & 0xfffffeff);",
    "write_volatile_4(DAT_44c0b500,uVar4 & 0xffffcfff | 0x2000);",
    "write_volatile_4(DAT_44c0b110,uVar4 & 0xfffffff7);",
    "write_volatile_4(DAT_44c0b110,uVar4 & 0xfffffffb);",
    "write_volatile_4(DAT_44c0b110,uVar4 & 0xfffffffd);",
    "write_volatile_4(DAT_44c0b110,uVar4 & 0xfffffffe);",
]):
    print(f"AGC->{rn}.{fn} = {hex(val)}")
#open('../src/include/phy/agc.h', 'w').write('\n'.join(GenHeader()))
#print('\n'.join(GenHeader()))
#print('\n'.join(GenSVD()))


peris['agcram'] = Peripheral(peripheral('agcram', 0x54c0a000, 0x800))
Buf('agcram', 0x54c0a000, 0x54c0a800 - 4)

#open('../src/include/phy/agcram.h', 'w').write('\n'.join(GenHeader()))
#print('\n'.join(GenHeader()))
#print('\n'.join(GenSVD()))
#


############# MAC

MAC_IRQ = 0x46

def getregs(fname, pattern='name'):
    import re
    state = "idle"
    regs = []
    if pattern == 'name':
        name_pattern = r'\* @(name) ([^\s]+)'
    else:
        name_pattern = r'\* @(brief) ([^\s]+)'
    addr_pattern = r'#define .*_ADDR\s+0x([0-9A-F]+)'
    for i in open(fname).readlines():
        if state == "idle":
            if re.search(name_pattern, i):
                regs.append(i)
                state = "find_reg"
        elif state == "find_reg":
            g = re.search(addr_pattern, i)
            if g:
                yield "".join(regs), int(g.group(1), 16) & 0xFFFFF
                regs.clear()
                state = "idle"
            else:
                regs.append(i)



peris['mac_core'] = Peripheral(peripheral('mac_core', 0x44b00000, 0x1000))

for code, offset in getregs("../components/bl602/bl602_wifidrv/bl60x_wifi_driver/reg_mac_core.h", pattern='brief'):
    RegFromComment(offset + 0x44b00000, code)

#open('../src/include/phy/mac_core.h', 'w').write('\n'.join(GenHeader()))
#print('\n'.join(GenHeader()))
#print('\n'.join(GenSVD()))


peris['mac_pl'] = Peripheral(peripheral('mac_pl', 0x44b08000, 0x1000))

for code, offset in getregs("../alios/mac_pl.h"):
    RegFromComment(offset + 0x44b00000, code)


#open('../src/include/phy/mac_pl.h', 'w').write('\n'.join(GenHeader()))
#print('\n'.join(GenHeader()))
#print('\n'.join(GenSVD()))


############# DMA, addres is in mac pl TX_***_PTR/RX_***_PTR
## it's  mroe like a status, and the DMA master seems to be 
## the mac co-processor???
## look txl_payload_handle_backup for more info
####

peris['dma'] = Peripheral(peripheral('dma', 0x44a00000, 0x1000))

Reg('status', 0x44a00024)
Field("TX", 0x1f)
FieldBit("RXHeader", 5) ## guess
FieldBit("RXPayload", 6) ## guess
FieldBit("b8", 8)

Reg('tx_reset', 0x44a00020) # my guess, setting of r20 should reset 0x24??
# kind like response...
FieldBit("b8", 8) # set at txl_cfm_dma_int_handler
FieldBit("b7", 7) # set at ipc_emb_dbg_dma_int_handler
FieldBit("RXHeader", 5) ## guess
FieldBit("RXPayload", 6) ## guess
Field("TX", 0x1f)

Reg("dma_status", 0x44a00010)
Field("busyatffff", 0xffff)

# my guess!!
Reg('TX_BCN', 0x44a00080)
FieldBit('bridgedmacnt', 0, 16)
Reg('TX_AC_0', 0x44a00084)
FieldBit('bridgedmacnt', 0, 16)
Reg('TX_AC_1', 0x44a00088)
FieldBit('bridgedmacnt', 0, 16)
Reg('TX_AC_2', 0x44a0008c)
FieldBit('bridgedmacnt', 0, 16)
Reg('TX_AC_3', 0x44a00090)
FieldBit('bridgedmacnt', 0, 16)

Reg('LinkListItem0', 0x44a000a4)
FieldBit("lli", 0, 16)
Reg('LinkListItem1', 0x44a000ac)
FieldBit("lli", 0, 16)

#open('../src/include/phy/dma.h', 'w').write('\n'.join(GenHeader()))
#print('\n'.join(GenHeader()))
#print('\n'.join(GenSVD()))

############# sysctrl

peris['sysctrl'] = Peripheral(peripheral('sysctrl', 0x44900000, 0x1000))
Reg('time', 0x44900084)
FieldBit('time_greater_on_bit12', 0)
Reg("sysctrl_r68", 0x44900068) # set to 0x8000000c for init
Reg("sysctrl_re0", 0x449000e0) # or with 0x1ff00
Field("set1", (~0x1ff00) & 0xffffffff)


## two regs for helper_record_all_states
Reg("r068", 0x44900068)
Field("set14", 0xffff0000)

Reg("r074", 0x44900068) # set to b09

#open('../src/include/phy/sysctrl.h', 'w').write('\n'.join(GenHeader()))
#print('\n'.join(GenHeader()))
#print('\n'.join(GenSVD()))


############# Wifi Regs 92
## wtf is this???

peris['sysctrl92'] = Peripheral(peripheral('sysctrl92', 0x44920000, 0x1000))
Reg("set5010001f", 0x44920004)

#open('../src/include/phy/sysctrl92.h', 'w').write('\n'.join(GenHeader()))
#print('\n'.join(GenHeader()))
#print('\n'.join(GenSVD()))


############# Wifi IPC (EMB/Core)
peris['ipc'] = Peripheral(peripheral('ipc', 0x44800000, 0x1000))

for code, offset in getregs("../components/bl602/bl602_wifidrv/bl60x_wifi_driver/reg_ipc_app.h", pattern='brief'):
    RegFromComment(offset + 0x44800000, code)

#open('../src/include/phy/ipc.h', 'w').write('\n'.join(GenHeader()))
#print('\n'.join(GenHeader()))
#print('\n'.join(GenSVD()))

if __name__ == '__main__':
    import sys
    if len(sys.argv) == 1:
        for p_name, p in peris.items():
            open(f"../src/include/phy/{p_name}.h", "w").write("\n".join(p.genHeader()))
    else:
        if len(sys.argv) >= 2:
            addr = int(sys.argv[1], 16)
            mask = 0
            if len(sys.argv) == 3:
                mask = int(sys.argv[2], 16)
            print(CAccess(peris, addr, mask))