import sys
from collections import namedtuple

from elftools.elf.elffile import ELFFile
from elftools.dwarf.descriptions import describe_form_class

Subroutine = namedtuple("Subroutine", "name inlines")
InlinedFunction = namedtuple("InlinedFunction", "name ranges")

def any_inlined(die):
    for child in die.iter_children():
        if child.tag == 'DW_TAG_inlined_subroutine':
            return True
    return False

def process_inlined(locs, die, inlines, depth):
    inlinefn = die.get_DIE_from_attribute('DW_AT_abstract_origin')
    name = inlinefn.attributes["DW_AT_name"].value.decode('ascii')
    #print(('  '*depth) + name)

    ranges = []
    if 'DW_AT_ranges' in die.attributes:
        rs = locs.get_range_list_at_offset(die.attributes['DW_AT_ranges'].value)
        for re in rs:
            lowpc = re.begin_offset
            highpc = re.end_offset
            ranges.append((lowpc, highpc))
            #print(('  '*(depth+1)) + f' {hex(lowpc)} - {hex(highpc)}')
    elif 'DW_AT_high_pc' in die.attributes:
        lowpc = die.attributes['DW_AT_low_pc'].value
        highpc = die.attributes['DW_AT_high_pc'].value + lowpc
        ranges.append((lowpc, highpc))
        #print(('  '*(depth+1)) + f' {hex(lowpc)} - {hex(highpc)}')
    inlines.append(InlinedFunction(name, ranges))

def process_children(locs, die, inlines, depth):
    for child in die.iter_children():
        if child.tag == 'DW_TAG_inlined_subroutine':
            process_inlined(locs, child, inlines, depth+1)
        process_children(locs, child, inlines, depth+1)

def peek_line(f):
    pos = f.tell()
    line = f.readline()
    f.seek(pos)
    return line

if __name__ == '__main__':
    #path = 'bl602_demo_wifi.elf'
    path = 'sdk_app_ble_sync.elf'
    f = open(path, 'rb')
    elffile = ELFFile(f)
    dwarfinfo = elffile.get_dwarf_info()

    proprietary = []
    for CU in dwarfinfo.iter_CUs():
        root = CU.get_top_DIE()
        is_ble = 'components/network/ble/blecontroller' in root.get_full_path()
        is_wifi = 'bl602/bl602_wifi/' in root.get_full_path()
        if ('ble' in path and not is_ble) or ('wifi' in path and not is_wifi):
            continue
        proprietary.append(root)
    
    subroutines = []
    locs = dwarfinfo.range_lists()
    for root in proprietary:
        for DIE in root.iter_children():
            if not DIE.tag == 'DW_TAG_subprogram':
                continue
            if not 'DW_AT_name' in DIE.attributes:
                continue
            if 'DW_AT_inline' in DIE.attributes:
                continue
            inlines = []
            name = DIE.attributes["DW_AT_name"].value.decode('ascii')
            #print(name)
            process_children(locs, DIE, inlines, 1)
            if len(inlines) > 0:
                subroutines.append(Subroutine(name, inlines))
    
    #print(f"{len(subroutines)} subroutines")
    f.close()
    f = open(path + '.txt', 'r')
    function_prefix = '                            ;'
    while True:
        line = f.readline()
        if not line:
            break
        if not line.startswith(function_prefix):
            continue
        function = line[len(function_prefix):].rstrip()
        sub = next((x for x in subroutines if (f'{x.name}(' in function)), None)
        if not sub:
            continue
        print(line, end='')
        while True:
            sline = f.readline()
            addr = sline.split(' ')[0]
            if len(addr) != 8:
                print(sline, end='')
                continue
            addr = int(addr, 16)
            matches = list(filter(lambda inl: any(addr >= r[0] and addr < r[1] for r in inl.ranges), sub.inlines))
            if len(matches) == 0:
                print(sline, end='')
            else:
                hint = ", ".join(map(lambda m: m.name, matches))
                sline = sline.rstrip()
                sline = sline.ljust(max(len(sline) + 10, 100))
                print(f'{sline};{hint}')

            sline = peek_line(f)
            if sline.startswith(function_prefix):
                print()
                break
