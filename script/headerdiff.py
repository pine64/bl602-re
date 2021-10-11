#!/usr/bin/env python3
from argparse import ArgumentParser
from pathlib import Path
from tempfile import TemporaryDirectory
from typing import Optional, List, Dict

from elftools.dwarf.die import DIE
from elftools.elf.elffile import ELFFile

from odiff.c import HeaderFile, CVariable
from odiff.dwarf2c import die_get_name, die_get_at_type, die_to_ctype_or_func, is_static, Context
from odiff.html import HTML_HEADER, HTML_FOOTER, make_diff_table
from odiff.lib import LIBRARIES
from odiff.paths import VENDOR_PATH_PREFIX, REPO_ROOT
from odiff.utils import get_or_create, remove_prefixes

CFLAGS = [
    '-march=rv32imfc',
    '-mabi=ilp32f',
    '-gdwarf',
    '-Os',
    '-std=gnu99',
    '-ffunction-sections',
    '-fdata-sections',
    '-fstrict-volatile-bitfields',
    '-fshort-enums',
    '-ffreestanding',
    '-fno-strict-aliasing',

    # Silence please
    '-Wno-deprecated-declarations',

    # BL602 headers want this
    '-DARCH_RISCV'
]


def process_file(filename: Path, header_files: Dict[str, HeaderFile], ctx: Context):
    with open(filename, 'rb') as f:
        elf = ELFFile(f)
        symtab = elf.get_section_by_name('.symtab')
        dwarf = elf.get_dwarf_info()
        try:
            cu = next(dwarf.iter_CUs())
        except StopIteration:
            return
        lp = dwarf.line_program_for_CU(cu)
        include_directories: List[str] = [x.decode() for x in lp.header.include_directory]
        file_entries: List[HeaderFile] = [
            get_or_create(
                header_files,
                remove_prefixes(
                    f'{include_directories[x.dir_index - 1]}/{x.name.decode()}',
                    [VENDOR_PATH_PREFIX, f'{REPO_ROOT}/'])
                if x.dir_index != 0 else x.name.decode(),
                lambda path: HeaderFile(path)
            )
            for x in lp['file_entry']
        ]
        cu_die: DIE = cu.get_top_DIE()
        for die in cu_die.iter_children():
            die: DIE
            if not 'DW_AT_decl_file' in die.attributes:
                continue
            decl_file = file_entries[die.attributes['DW_AT_decl_file'].value - 1]
            decl_line = die.attributes['DW_AT_decl_line'].value
            name: Optional[str] = die_get_name(die)
            if die.tag == 'DW_TAG_variable':
                if 'DW_AT_specification' in die.attributes:
                    var_spec_die = cu.get_DIE_from_refaddr(die.attributes['DW_AT_specification'].value)
                    name = die_get_name(var_spec_die)
                    assert name is not None
                    entry = CVariable(
                        die=die, type=die_get_at_type(var_spec_die), name=name,
                        extern='DW_AT_external' in die.attributes, static=False)
                else:
                    _, static = is_static(symtab, name)
                    entry = CVariable(
                        die=die, type=die_get_at_type(die), name=name,
                        extern='DW_AT_external' in die.attributes, static=static)
            else:
                if name is None:
                    continue
                entry = die_to_ctype_or_func(ctx, die, symtab)
            decl_file.defs[name] = entry
            decl_file.def_lines[name] = decl_line


def main():
    parser = ArgumentParser(description="Generate HTML diffs between symbols in header files")
    parser.add_argument('-o', '--output', type=str, default='report.html', help="Output file name")
    parser.add_argument(dest='patterns', type=str, nargs='*', help="Glob-like pattern(s) of files to build")
    args = parser.parse_args()
    html = open(args.output, 'w')
    html.write(HTML_HEADER)
    from odiff.riscvreloc import patch_elftools_relocs
    patch_elftools_relocs()
    patterns: List[str] = args.patterns
    vendor_header_files: Dict[str, HeaderFile] = {}
    for lib in LIBRARIES:
        vendor_lib_ctx = Context('vendor_' + lib.name)
        for vendorobj_path in lib.get_vendorobj_paths(patterns):
            print(f"Collecting vendor {lib.name}/{vendorobj_path.name}")
            process_file(vendorobj_path, vendor_header_files, vendor_lib_ctx)
    # print("\n".join(f"=========== {k}\n{v}" for k, v in vendor_header_files.items()))
    re_header_files: Dict[str, HeaderFile] = {}
    with TemporaryDirectory(prefix='headerdiff') as tmpdir:
        for lib in LIBRARIES:
            re_lib_ctx = Context('re_' + lib.name)
            for vendorobj_path in lib.get_vendorobj_paths(patterns):
                _, result, reobj_path = lib.build_obj(Path(tmpdir), vendorobj_path, CFLAGS)
                if result.returncode != 0:
                    print(f"{vendorobj_path.name} failed to build: {result.stderr.decode()}")
                    continue
                print(f"Collecting reverse-engineered {lib.name}/{vendorobj_path.name}")
                process_file(reobj_path, re_header_files, re_lib_ctx)
    for vhdr_name, vhdr in sorted(vendor_header_files.items(), key=lambda x: x[0]):
        if not vhdr_name.startswith('components/'):
            continue
        rehdr = re_header_files.get(vhdr_name, None)
        html.write(f'<article class="hdr"><h1>{vhdr_name}</h1>')
        if rehdr is None:
            html.write('Not there!')
            html.write(f'<pre><code>{vhdr.to_source()}</code></pre>')
        else:
            html.write(f'<pre><code>{vhdr.to_source()}</code></pre>')
            original_a = [(vhdr.def_lines[k], k, v) for k, v in vhdr.sorted_defs]
            original_b = [(rehdr.def_lines[k], k, v) for k, v in rehdr.sorted_defs]
            content, similarity = make_diff_table(
                original_a,
                original_b,
                [x[1] for x in original_a],
                [x[1] for x in original_b],
                get_offset=lambda x: str(x[0]),
                get_text=lambda x: f'{x[1]}: {x[2]}'
            )
            html.write(content)
        html.write('</article>')
    html.write(HTML_FOOTER)


if __name__ == '__main__':
    main()
