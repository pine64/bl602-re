#!/usr/bin/env python3
from reglib import *
from typing import Mapping

import leak_scan

peris :Mapping[str, peripheral] = {}

############ MDM

peris['mdm'] = Peripheral(peripheral('mdm', 0x44c00000, 0x4000))

Reg('txchan', 0x44c00824)
Field('txcbwmax', 0xfcffffff) # Channel bandwidth
Field('txnssmax', 0xffffff8f) # number of spatial streams
Field('ntxmax', 0xff8fffff) # tx chan?
Field('txldpcen', 0xfffffeff) # some switch? DAT_44c00000>>18
Field('vht', 0xfffffffd) # very high throughput
Field('txmumimoen', 0xfffeffff) # some switch? DAT_44c00000>>31

Reg('rxchan', 0x44c00820)
Field('rxcbwmax', 0xfcffffff) # Channel bandwidth
Field('rxnssmax', 0xffffff8f) # number of spatial streams
# Field('nrxmax', 0xff8fffff) # not exists
Field('rxldpcen', 0xfffffeff) # some switch? DAT_44c00000>>19
Field('rxvhten', 0xfffffffd) # very high throughput
Field('rxmumimoen', 0xfffeffff) # some switch? DAT_44c00000>>30
Field('rxmumimoapeplenen', 0xffefffff) # some switch? DAT_44c00000>>30
FieldBit('rxdsssen', 0) # set 1 in phy_hw_set_channel for.. reset?
Field('rxndpnstsmax', 0xffff8fff)

Reg('version', 0x44c00000)
FieldBit('vht', 31-9)
FieldBit('nss', 8, 4) # phy_get_nss (nss + 1)
FieldBit('nsts', 0xc, 4)
FieldBit('ldpcenc', 0x12)
FieldBit('ldpcdec', 0x13)
FieldBit('mu_mimo_rx', 0x1e)
FieldBit('mu_mimo_tx', 0x1f)
FieldBit('ldpctx', 0x1a)
FieldBit('ldpcrx', 0x1b)
FieldBit('ntx', 4, 4) # phy_get_ntx (ntx + 1)
FieldBit('chbw', 0x18, 2)
FieldBit('bfmee_supported', 0x1c)
FieldBit('bfmer_supported', 0x1d)

Reg('mdmconf', 0x44c00800)

Reg('swreset', 0x44c00888)
FieldBit('AGCSWRESET', 12)
FieldBit('DSPSWRESET', 8)
FieldBit('FSMSWRESET', 4)
FieldBit('MDMSWRESET', 0)

Reg('txstartdelay', 0x44c00838)
Reg('txctrl1', 0x44c0088c)
Reg('txctrl3', 0x44c00898)

Reg('TBECTRL0', 0x44c00858)
Field('tbe_count_adjust_20', 0xffffff00)

Reg('DCESTIMCTRL', 0x44c0081c)
Field('delaynormalgi', 0xFFFFC0FF)
Field('WAITHTSTF', 0xffffff80)

Reg('r834', 0x44c00834)
Field('tddchtstfmargin', 0x00ffffff)
FieldBit('rxtdctrl1', 0)

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

Reg('r0x874', 0x44c00874)
Field('rcclkforce', 0xf7ffffff)
Field('mdm_agcmemclkforce', 0xdfffffff)
#print('\n'.join(GenSVD()))



############# AGC

peris['agc'] = Peripheral(peripheral('agc', 0x44c0b000, 0x2000))
Reg('r000', 0x44c0b000)
FieldBit('iqcomp', 31-10)

### guess
Reg('RWNXAGCRAMP', 0x44c0b36c)
FieldBit('RAMPDNNDLINDEX', 24, 3) # 0x05
FieldBit('RAMPDNGAPQDB', 16, 8) # 0x20
FieldBit('RAMPUPNDLINDEX', 8, 3) # 0x7
FieldBit('RAMPUPGAPQDB', 0, 8) # 0x20

###


Reg('RWNXAGCCNTL', 0x44c0b390)
Field('combpathsel', 0xfffffffc)
Field('agcfsmreset', 0xffffefff) # set 1 before agc mem, maybe
#Field('rifsdeten', 0xfffffbff)
#Field('riu_ofdmonly_setf', 0xfffffeff)

Reg('riu_rwnxagcaci20marg0', 0x44c0b340)
Reg('riu_rwnxagcaci20marg1', 0x44c0b344)
Reg('riu_rwnxagcaci20marg2', 0x44c0b348)

Reg('riu_iqestiterclr', 0x44c0b118)

Reg('activeant', 0x44c0b004)

Reg('RWNXAGCCCATIMEOUT', 0x44c0b3bc) # 4000000

Reg('irqmacccatimeouten', 0x44c0b414)
Field('irqmacccatimeouten', 0xFFFFFEFF)

Reg('rwnxmacintstatmasked', 0x44c0b41c)
FieldBit('needreset', 8) # guess

Reg('rwnxmacintack', 0x44c0b420)


Reg('rc218', 0x44c0c218)
Field('txhbf20coeffsel', 0xffff0000)

Buf('rxgain_offset_vs_temperature', 0x44c0c080, 0x44c0c088, 1)


gid = 0
def scan_write(code, dat="dat"):
    global gid
    if dat == 'dat':
        write_pattern = r'write_volatile_4\(DAT_([0-9a-f]+),uVar\d( & 0x([0-9a-f]+))*( \| ([0-9a-z]+))*\);'
    else:
        write_pattern = r'write_volatile_4\(0x([0-9a-f]+),uVar\d( & 0x([0-9a-f]+))*( \| ([0-9a-z]+))*\);'
    for l in code:
        import re
        g = re.search(write_pattern, l)
        if not g:
            continue
        value = 0
        addr = int(g.group(1), 16)
        lsb = 0
        if g.group(3) == None: # mask
            value = int(g.group(5), 16)
            mask = (~value) & 0xffffffff
            lsb = ((value & (-value)).bit_length() - 1)
            value = value >> lsb
        else:
            mask = int(g.group(3), 16)
            if g.group(5): # value
                lsb = ((~mask) & 0xffffffff)
                lsb = lsb & (-lsb)
                lsb = lsb.bit_length() - 1
                value = int(g.group(5), 16)
                value = value >> lsb
            else:
                lsb = 0
        name_f = f'set_{hex(value)}_{lsb}'
        name_r = f'r{hex(addr&0xffff)}'
        gid = gid + 1
        r = Reg(name_r, addr)
        yield r, Field(name_f, mask), value


agc_attr = [
    (0x44c0b390, "riu_htstfgainen"),
    (0x44c0b390, "riu_rifsdeten"),
    (0x44c0b3a4, "riu_fe20gain"),
    (0x44c0b3a4, "riu_fe40gain"),
    (0x44c0b394, "riu_vpeakadcqdbv"),
    (0x44c0b398, "riu_adcpowmindbm"),
    (0x44c0b3c4, "riu_adcpowsupthrdbm"),
    (0x44c0b364, "riu_satdelay50ns"),
    (0x44c0b364, "riu_sathighthrdbv"),
    (0x44c0b364, "riu_satlowthrdbv"),
    (0x44c0b364, "riu_satthrdbv"),
    (0x44c0b368, "riu_crossdnthrqdbm"),
    (0x44c0b368, "riu_crossupthrqdbm"),
    (0x44c0b36c, "riu_rampupgapqdb"),
    (0x44c0b36c, "riu_rampupndlindex"),
    (0x44c0b36c, "riu_rampdngapqdb"),
    (0x44c0b36c, "riu_rampdnndlindex"),
    (0x44c0b370, "riu_adcpowdisthrdbv"),
    (0x44c0b3c0, "riu_idinbdpowgapdnqdbm"),
    (0x44c0b380, "riu_evt0op3"),
    (0x44c0b380, "riu_evt0op2"),
    (0x44c0b380, "riu_evt0op1"),
    (0x44c0b380, "riu_evt0pathcomb"),
    (0x44c0b380, "riu_evt0opcomb"),
    (0x44c0b384, "riu_evt1op1"),
    (0x44c0b384, "riu_evt1op2"),
    (0x44c0b384, "riu_evt1op3"),
    (0x44c0b384, "riu_evt1pathcomb"),
    (0x44c0b384, "riu_evt1opcomb"),
    (0x44c0b388, "riu_evt2op1"),
    (0x44c0b388, "riu_evt2op2"),
    (0x44c0b388, "riu_evt2op3"),
    (0x44c0b388, "riu_evt2pathcomb"),
    (0x44c0b388, "riu_evt2opcomb"),
    (0x44c0b38c, "riu_evt3op1"),
    (0x44c0b38c, "riu_evt3op2"),
    (0x44c0b38c, "riu_evt3op3"),
    (0x44c0b38c, "riu_evt3opcomb"),
    (0x44c0c830, "rc2_evt4op1"),
    (0x44c0c830, "rc2_evt4op2"),
    (0x44c0c830, "rc2_evt4op3"),
    (0x44c0c830, "rc2_evt4opcomb"),
    (0x44c0c814, "rc2_pkdet_mode"),
    (0x44c0c814, "rc2_pkdet_cnt_thr"),
    (0x44c0c814, "rc2_pkdet_cnt_thr"),
    (0x44c0c040, "rc2_rx0_vga_idx_max"),
    (0x44c0c040, "rc2_rx0_vga_idx_min"),
    (0x44c0c044, "rc2_rx0_lna_idx_max"),
    (0x44c0c044, "rc2_rx0_lna_idx_min"),
    (0x44c0b3a0, "riu_inbdpowmindbm"),
    (0x44c0b3c0, "riu_inbdpowsupthrdbm"),
    (0x44c0b3c0, "riu_inbdpowinfthrdbm"),
    (0x44c0c82c, "rc2_inbdpow_adj_thr_dbm"),
    (0x44c0c82c, "rc2_inbdpowsupthr_adj_en"),
    (0x44c0c82c, "rc2_inbdpowinfthr_adj_en"),
    (0x44c0c838, "rc2_reflevofdmthd_en"),
    (0x44c0c838, "rc2_reflevofdmthd"),
    (0x44c0c83c, "rc2_reflevdsssthd_en"),
    (0x44c0c83c, "rc2_reflevdsssthd"),
    (0x44c0c840, "rc2_reflevdssscontthd_en"),
    (0x44c0c840, "rc2_reflevdssscontthd"),
    (0x44c0c82c, "rc2_inbdpowfastvalid_cnt"),
]

i = 0
for r, f, val in scan_write(open('../blobs/agc_config.c').readlines()):
    if r.offset == agc_attr[i][0] - 0x44c0b000:
        f.name = agc_attr[i][1]
    else:
        print(f"mismatched {i} {agc_attr[i][1]} {hex(r.offset + 0x44c0b000)} {hex(agc_attr[i][0])}")
    i = i + 1
    #print(f"AGC->{r.name}.{f.name} = {hex(val)};")

extra_regs = [
    "rc_paoff_delay",
    "riu_ofdmonly",
    "riu_txshift4044",
    "riu_rxiqphaseesten",
    "riu_rxiqgainesten",
    "riu_rxiqphasecompen",
    "riu_rxiqgaincompen"
]

i = 0
for _, f, _ in scan_write([
    "write_volatile_4(DAT_44c0c020,uVar4 & 0xfc00ffff | 0x140000);",
    "write_volatile_4(DAT_44c0b390,uVar1 & 0xfffffeff);",
    "write_volatile_4(DAT_44c0b500,uVar4 & 0xffffcfff | 0x2000);",
    "write_volatile_4(DAT_44c0b110,uVar4 & 0xfffffff7);",
    "write_volatile_4(DAT_44c0b110,uVar4 & 0xfffffffb);",
    "write_volatile_4(DAT_44c0b110,uVar4 & 0xfffffffd);",
    "write_volatile_4(DAT_44c0b110,uVar4 & 0xfffffffe);",
]):
    f.name = extra_regs[i]
    i = i + 1
#open('../src/include/phy/agc.h', 'w').write('\n'.join(GenHeader()))
#print('\n'.join(GenHeader()))
#print('\n'.join(GenSVD()))

for reg_addr,field_name,mask in leak_scan.scan_leak_source(open('../blobs/reg/reg_bl_rc2.h').readlines()):
    if reg_addr >= 0x44c0c080 and reg_addr <= 0x44c0c088:
        continue # skip buf
    r = Reg(f'r{hex(reg_addr & 0xffff)}', reg_addr)
    f = Field(field_name, mask)
    pass

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

Buf('ABS_TIMER', 0x44b00128, 0x44b00128 + 4 * 9)

for code, offset in getregs("../components/bl602/bl602_wifidrv/bl60x_wifi_driver/reg_mac_core.h", pattern='brief'):
    RegFromComment(offset + 0x44b00000, code)
Reg('coex_stat', 0x44b00408)
Goto(0x44b00400)
Field('coexForceEnable', 0xffffffef)
Field('coexForceWlanPti', 0x0FFFFFFF)
Field('coexForceWlanChanBw', 0xfbffffff)
Field('coexAutoPTIAdjEnable', 0xffffffdf)
FieldBit('coexForceWlanPtiToggle', 31 - 4)


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

Reg('int_status', 0x44a00024)
Field("TX", 0x1f)
FieldBit("RXHeader", 5) ## guess
FieldBit("RXPayload", 6) ## guess
FieldBit("b8", 8)

Reg('int_ack', 0x44a00020) # my guess, setting of r20 should reset 0x24??
# kind like response...
FieldBit("b8", 8) # set at txl_cfm_dma_int_handler
FieldBit("b7", 7) # set at ipc_emb_dbg_dma_int_handler
FieldBit("RXHeader", 5) ## guess
FieldBit("RXPayload", 6) ## guess
Field("TX", 0x1f)

Reg("dma_status", 0x44a00010)
Field("dma_status_oft_free", 0xffff)

# my guess!!
# access with dma_lli_counter_get(reg_idx)
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
FieldBit("counter", 0, 16)
Reg('LinkListItem1', 0x44a000ac)
FieldBit("counter", 0, 16)

#open('../src/include/phy/dma.h', 'w').write('\n'.join(GenHeader()))
#print('\n'.join(GenHeader()))
#print('\n'.join(GenSVD()))

############# sysctrl

peris['sysctrl'] = Peripheral(peripheral('sysctrl', 0x44900000, 0x1000))
Reg('time', 0x44900084)
FieldBit('time_greater_on_bit12', 0)
Reg("diag_conf", 0x44900068) # set to 0x8000000c for init
Field("diag_sel", 0xffff0000)
Reg("diag_trigger", 0x44900070) # used in force_trigger

Reg("misc_cntl", 0x449000e0) # or with 0x1ff00
Field("set1", (~0x1ff00) & 0xffffffff)


Reg("r074", 0x44900074) # set to b09

#open('../src/include/phy/sysctrl.h', 'w').write('\n'.join(GenHeader()))
#print('\n'.join(GenHeader()))
#print('\n'.join(GenSVD()))


############# Wifi Regs 92
## wtf is this???

peris['sysctrl92'] = Peripheral(peripheral('sysctrl92', 0x44920000, 0x1000))
Reg("ptr_config", 0x44920004)

#open('../src/include/phy/sysctrl92.h', 'w').write('\n'.join(GenHeader()))
#print('\n'.join(GenHeader()))
#print('\n'.join(GenSVD()))


############# Wifi IPC (EMB/Core)
peris['ipc'] = Peripheral(peripheral('ipc', 0x44800000, 0x1000))

for code, offset in getregs("../components/bl602/bl602_wifidrv/bl60x_wifi_driver/reg_ipc_app.h", pattern='brief'):
    RegFromComment(offset + 0x44800000, code.lower())
Reg('emb2app_line_sel_low', 0x44800000 + 0x14)
for i in range(0,16):
    FieldBit(f'emb2app{i}_sel', i*2, 2)
Reg('emb2app_line_sel_high', 0x44800000 + 0x18)
ipc_names = []
def flipname(name):
    name = name.replace('app', 'XXXXX')
    name = name.replace('emb', 'YYYYY')
    name = name.replace('XXXXX', 'emb')
    name = name.replace('YYYYY', 'app')
    return name
for reg in peris['ipc'].regs:
    if (len(reg.fields) == 1):
        reg.fields = []
    ipc_names.append((flipname(reg.name), reg.offset + 0x100, reg.fields))
for name, offset, f in ipc_names:
    Reg(name, offset + 0x44800000)
    for i in f:
        FieldBit(flipname(i.name), i.lsb, i.len)

#open('../src/include/phy/ipc.h', 'w').write('\n'.join(GenHeader()))
#print('\n'.join(GenHeader()))
#print('\n'.join(GenSVD()))

            
bz_phy_base = 0x40002800
peris['bz_phy'] = Peripheral(peripheral('bz_phy', bz_phy_base, 0x300))

extra_bz_phy = [
(0x40002808,"bz_phy_tx_rampup_fm_on"),
(0x40002808,"bz_phy_tx_rampup_time_us"),
(0x4000280c,"bz_phy_tx_rampdn_fm_on"),
(0x4000280c,"bz_phy_tx_rampdn_time_us"),
(0x4000280c,"bz_phy_tx_rampdn_pad0_time_us"),
(0x40002854,"bz_phy_rx_proc_time_mlsd_us"),
(0x40002854,"bz_phy_rx_proc_time_direct_us"),
(0x40002854,"bz_phy_rx_proc_time_eq_us"),
(0x40002854,"bz_phy_rx_proc_time_viterbi_us"),
(0x40002810,"bz_phy_rx_dfe_notch_en"),
(0x40002810,"bz_phy_rx_dfe_toc_en"),
(0x40002caa,"bz_agc_rbb_ind_min"),
]

i = 0
for r, f, _ in scan_write(open('../blobs/bz_phy.c').readlines(), '0x'):
    if r.offset == extra_bz_phy[i][0] - bz_phy_base:
        f.name = extra_bz_phy[i][1]
    else:
        print(f"mismatched {i} {extra_bz_phy[i][1]} {hex(r.offset + bz_phy_base)} {hex(extra_bz_phy[i][0])}")
    i = i + 1


for reg_addr,field_name,mask in leak_scan.scan_leak_source(open('../blobs/reg/reg_bz_phy.h').readlines()):
    r = Reg(f'r{hex(reg_addr & 0xffff)}', reg_addr)
    f = Field(field_name, mask)
    pass

bz_phy_agc_base = 0x40002c00
peris['bz_phy_agc'] = Peripheral(peripheral('bz_phy_agc', bz_phy_agc_base, 0x100))

for reg_addr,field_name,mask in leak_scan.scan_leak_source(open('../blobs/reg/reg_bz_phy_agc.h').readlines()):
    r = Reg(f'r{hex(reg_addr & 0xffff)}', reg_addr)
    f = Field(field_name, mask)
    pass

intc_base = 0x44910000
peris['intc'] = Peripheral(peripheral('intc', intc_base, 0x1000))
def intc_handle(name, addr):
    if name != 'irq_index':
        Buf(name, addr, addr + 4)
    else:
        Reg(name, addr)
for code, offset in getregs("../alios/reg_intc.h"):
    RegFromComment(offset + intc_base - 0x10000, code.lower(), intc_handle)

if __name__ == '__main__':
    import sys
    if len(sys.argv) == 1:
        for p_name, p in peris.items():
            open(f"../src/include/phy/{p_name}.h", "w").write("\n".join(p.genHeader()))
    else:
        if len(sys.argv) >= 2:
            if sys.argv[1] == '--svd':
                for p_name, p in peris.items():
                    open(f"../src/svd/{p_name}.svd", "w").write("\n".join(p.genSVD()))
                sys.exit(0)
            addr = int(sys.argv[1], 16)
            mask = 0
            if len(sys.argv) == 3:
                mask = int(sys.argv[2], 16)
            print(CAccess(peris, addr, mask))