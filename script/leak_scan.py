
def scan_leak_source(lines):
    import re
    function_pattern = r'(?<=\s)(\S+)_getf'
    regrd_pattern = r'REG_PL_RD\((.+)\);'
    mask_pattern = r'return \(\(localVal & \(\(uint32_t\)(.+)\)\)'
    state = 'wait_function'
    field_name = ''
    reg_addr = 0
    mask = 0
    for l in lines:
        if state == 'wait_function':
            g = re.search(function_pattern, l)
            if g:
                state = 'wait_regrd'
                field_name = g.group(1)
        elif state == 'wait_regrd':
            g = re.search(regrd_pattern, l)
            if g:
                state = "wait_mask"
                reg_addr = int(g.group(1), 16)
        elif state == "wait_mask":
            state = "wait_function"
            g = re.search(mask_pattern, l)
            if g:
                mask = (~int(g.group(1), 16)) & 0xffffffff
                yield reg_addr,field_name,mask
            else:
                print("error, cannot find mask after reg addr")