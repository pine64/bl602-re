#!/usr/bin/env python3
from reglib import *

############ MDM

Peripheral(peripheral('mdm', 0x44c00000, 0x4000))

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

Reg('version', 0x44c00000)
FieldBit('vht', 31-9)
FieldBit('nss', 8, 4) # phy_get_nss (nss + 1)
FieldBit('rxndpnstsmax', 0xc, 4)
FieldBit('v18', 0x12)
FieldBit('v19', 0x13)
FieldBit('v30', 0x1e)
FieldBit('v31', 0x1f)
FieldBit('ldpctx', 0x1a)
FieldBit('ntx', 4, 4) # phy_get_ntx (ntx + 1)
FieldBit('txcbwmax', 0x18, 2)

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


open('../src/include/phy/mdm.h', 'w').write('\n'.join(GenHeader()))
print('\n'.join(GenSVD()))



############# AGC


Peripheral(peripheral('agc', 0x44c0b000, 0x2000))
Reg('r000', 0x44c0b000)
FieldBit('iqcomp', 31-10)

Reg('RWNXAGCCNTL', 0x44c0b390)
Field('set1', 0xfffffffc)
Field('agcfsmreset', 0xffffefff) # set 1 before agc mem, maybe

Reg('riu_rwnxagcaci20marg0', 0x44c0b340)
Reg('riu_rwnxagcaci20marg1', 0x44c0b344)
Reg('riu_rwnxagcaci20marg2', 0x44c0b348)

Reg('riu_iqestiterclr', 0x44c0b118)

Reg('r500', 0x44c0b500)
Field('set10', 0xffffcfff)
Reg('r110', 0x44c0b110)
Field('set0a', 0xfffffff7)
Field('set0b', 0xfffffffb)
Field('set0c', 0xfffffffd)
Field('set0d', 0xfffffffe)

Reg('activeant', 0x44c0b004)

Reg('RWNXAGCCCATIMEOUT', 0x44c0b3bc) # 4000000

Reg('irqmacccatimeouten', 0x44c0b414)
Field('set1', 0xFFFFFEFF)

Reg('rc020', 0x44c0c020)
Field('set20', 0xfc00ffff)

Reg('r41c', 0x44c0b41c)
FieldBit('rc_resetmdm', 8) # guess
Reg('r420', 0x44c0b420)


Reg('rc218', 0x44c0c218)
Field('set0', 0xffff0000)

open('../src/include/phy/agc.h', 'w').write('\n'.join(GenHeader()))
#print('\n'.join(GenHeader()))
print('\n'.join(GenSVD()))


Peripheral(peripheral('agcram', 0x54c0a000, 0x800))
Buf('agcram', 0x54c0a000, 0x54c0a800 - 4)

open('../src/include/phy/agcram.h', 'w').write('\n'.join(GenHeader()))
#print('\n'.join(GenHeader()))
print('\n'.join(GenSVD()))

MAC_IRQ = 0x46