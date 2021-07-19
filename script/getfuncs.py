#!/usr/bin/env python3
import sys
src = open('../blobs/bl602_demo_wifi.ghidra.c').readlines()

feature = 'DAT_44c0'
if len(sys.argv) == 2:
    feature = sys.argv[1]

outs = []
for i in sys.stdin.readlines():
    fname, begin, end = i.strip().split(' ')
    begin = int(begin) - 1
    end = int(end)
    slocal = src[begin:end]
    found = False
    for i in slocal:
        if i.find(feature) != -1:
            found = True
            break
    if found:
        outs.extend(slocal)

print(''.join(outs))