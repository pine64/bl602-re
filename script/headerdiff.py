#!/usr/bin/env python3
from argparse import ArgumentParser
from fnmatch import fnmatch
from pathlib import Path
from tempfile import TemporaryDirectory
from typing import Optional, List, Dict, Tuple, Union

from elftools.dwarf.die import DIE
from elftools.elf.elffile import ELFFile

from odiff.c import HeaderFile, CType, CStruct, CUnion, CEnum, CVariable, CFunction, CPointer, CArray, CConst, \
    CVolatile, CFunctionPtr
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


def die_at_type_to_ctype_or_func(die: DIE) -> Union[CType, CFunction]:
    return die_to_ctype_or_func(die.cu.get_DIE_from_refaddr(die.attributes['DW_AT_type'].value)) \
            if 'DW_AT_type' in die.attributes else 'void'


def die_to_ctype_or_func(die: DIE) -> Union[CType, CFunction]:
    if die.tag == 'DW_TAG_pointer_type':
        if 'DW_AT_type' not in die.attributes:
            return CPointer('void')
        pointed_type_die: DIE = die.cu.get_DIE_from_refaddr(die.attributes['DW_AT_type'].value)
        if pointed_type_die.tag == 'DW_TAG_subroutine_type':
            return die_to_ctype_or_func(pointed_type_die)
        return CPointer(die_to_ctype_or_func(pointed_type_die))
    elif die.tag == 'DW_TAG_array_type':
        # TODO length (range is DIE child)
        return CArray(die_at_type_to_ctype_or_func(die))
    elif die.tag in ('DW_TAG_subroutine_type', 'DW_TAG_subprogram'):
        return_type = die_at_type_to_ctype_or_func(die)
        args: List[Tuple[CType, Optional[str]]] = []
        for arg_die in die.iter_children():
            arg_die: DIE
            if arg_die.tag == 'DW_TAG_formal_parameter':
                arg_name: Optional[str] = arg_die.attributes['DW_AT_name'].value.decode() \
                    if 'DW_AT_name' in die.attributes else None
                args.append((
                    die_to_ctype(die.cu.get_DIE_from_refaddr(arg_die.attributes['DW_AT_type'].value)), arg_name))
            elif arg_die.tag == 'DW_TAG_unspecified_parameters':
                args.append(('...', None))
            elif arg_die.tag in ('DW_TAG_variable', 'DW_TAG_inlined_subroutine', 'DW_TAG_lexical_block',
                                 'DW_TAG_subprogram', 'DW_TAG_label') \
                    or arg_die.tag.startswith('DW_TAG_GNU'):
                pass  # Skip
            else:
                raise TypeError(f"What is a {arg_die.tag} function DIE child?")
        if die.tag == 'DW_TAG_subroutine_type':
            return CFunctionPtr(CFunction(return_type, args))
        return CFunction(return_type, args)
    elif die.tag == 'DW_TAG_structure_type':
        # TODO named and anonymous
        return CStruct()
    elif die.tag == 'DW_TAG_union_type':
        # TODO named and anonymous
        return CUnion()
    elif die.tag == 'DW_TAG_enumeration_type':
        # TODO named and anonymous
        return CEnum()
    elif die.tag == 'DW_TAG_const_type':
        return CConst(die_at_type_to_ctype_or_func(die))
    elif die.tag == 'DW_TAG_volatile_type':
        return CVolatile(die_at_type_to_ctype_or_func(die))
    elif die.tag == 'DW_TAG_base_type':
        return die.attributes['DW_AT_name'].value.decode()
    elif die.tag == 'DW_TAG_typedef':
        # TODO maybe resolve?
        return die.attributes['DW_AT_name'].value.decode()
    else:
        raise TypeError(f"What is a type {die.tag}?")


def die_to_ctype(die: DIE) -> CType:
    ctype = die_to_ctype_or_func(die)
    if isinstance(ctype, CFunction):
        raise TypeError("Functions themselves can't be types")
    return ctype


def process_struct(decl_file: HeaderFile, decl_line: int, die: DIE, name: str):
    if name in decl_file.defs:
        return
    decl_file.defs[name] = die_to_ctype(die)
    decl_file.def_lines[name] = decl_line


def process_union(decl_file: HeaderFile, decl_line: int, die: DIE, name: str):
    if name in decl_file.defs:
        return
    decl_file.defs[name] = die_to_ctype(die)
    decl_file.def_lines[name] = decl_line


def process_enum(decl_file: HeaderFile, decl_line: int, die: DIE, name: str):
    if name in decl_file.defs:
        return
    decl_file.defs[name] = die_to_ctype(die)
    decl_file.def_lines[name] = decl_line


def process_type(decl_file: HeaderFile, decl_line: int, die: DIE, name: str):
    if name in decl_file.defs:
        return
    decl_file.defs[name] = die_to_ctype(die)
    decl_file.def_lines[name] = decl_line


def process_func(decl_file: HeaderFile, decl_line: int, die: DIE, name: str):
    if name in decl_file.defs:
        return
    decl_file.defs[name] = die_to_ctype_or_func(die)
    decl_file.def_lines[name] = decl_line


def process_var(decl_file: HeaderFile, decl_line: int, die: DIE, name: str):
    if name in decl_file.defs:
        return
    type_die: DIE = die.cu.get_DIE_from_refaddr(die.attributes['DW_AT_type'].value)
    var = CVariable(die_to_ctype(type_die))
    decl_file.defs[name] = var
    decl_file.def_lines[name] = decl_line


def process_file(filename: Path, header_files: Dict[str, HeaderFile]):
    with open(filename, 'rb') as f:
        dwarf = ELFFile(f).get_dwarf_info()
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
            name: Optional[str] = die.attributes['DW_AT_name'].value.decode() \
                if 'DW_AT_name' in die.attributes else None
            if name is None:
                continue  # Skip over anonymous structs/unions/enums as they are (almost) always typedef'd later
            if die.tag == 'DW_TAG_typedef':
                typedef_die: DIE = cu.get_DIE_from_refaddr(die.attributes['DW_AT_type'].value)
                if typedef_die.tag == 'DW_TAG_structure_type':
                    process_struct(decl_file, decl_line, typedef_die, name)
                elif typedef_die.tag == 'DW_TAG_union_type':
                    process_union(decl_file, decl_line, typedef_die, name)
                elif typedef_die.tag == 'DW_TAG_enumeration_type':
                    process_enum(decl_file, decl_line, typedef_die, name)
                elif typedef_die.tag in ('DW_TAG_array_type', 'DW_TAG_pointer_type',
                                         'DW_TAG_const_type', 'DW_TAG_subroutine_type'):
                    process_type(decl_file, decl_line, typedef_die, name)
                elif typedef_name := typedef_die.attributes.get('DW_AT_name', None):
                    decl_file.defs[name] = typedef_name.value.decode()
                    decl_file.def_lines[name] = decl_line
                else:
                    raise TypeError(f"What is a typedef {typedef_die}")
            elif die.tag == 'DW_TAG_structure_type':
                process_struct(decl_file, decl_line, die, name)
            elif die.tag == 'DW_TAG_union_type':
                process_union(decl_file, decl_line, die, name)
            elif die.tag == 'DW_TAG_enumeration_type':
                process_enum(decl_file, decl_line, die, name)
            elif die.tag == 'DW_TAG_subprogram':
                process_func(decl_file, decl_line, die, name)
            elif die.tag == 'DW_TAG_variable':
                process_var(decl_file, decl_line, die, name)
            elif typedef_die.tag in ('DW_TAG_array_type', 'DW_TAG_pointer_type',
                                     'DW_TAG_const_type', 'DW_TAG_subroutine_type'):
                pass  # Ignore
            else:
                raise TypeError(f"What is a {die.tag}?")


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
        for vendorobj_path in lib.get_vendorobj_paths(patterns):
            print(f"Collecting vendor {lib.name}/{vendorobj_path.name}")
            process_file(vendorobj_path, vendor_header_files)
    # print("\n".join(f"=========== {k}\n{v}" for k, v in vendor_header_files.items()))
    re_header_files: Dict[str, HeaderFile] = {}
    with TemporaryDirectory(prefix='headerdiff') as tmpdir:
        for lib in LIBRARIES:
            for vendorobj_path in lib.get_vendorobj_paths(patterns):
                _, result, reobj_path = lib.build_obj(Path(tmpdir), vendorobj_path, CFLAGS)
                if result.returncode != 0:
                    print(f"{vendorobj_path.name} failed to build: {result.stderr.decode()}")
                    continue
                print(f"Collecting reverse-engineered {lib.name}/{vendorobj_path.name}")
                process_file(reobj_path, re_header_files)
    for vhdr_name, vhdr in vendor_header_files.items():
        if not vhdr_name.startswith('components/'):
            continue
        rehdr = re_header_files.get(vhdr_name, None)
        html.write(f'<article class="hdr"><h1>{vhdr_name}</h1>')
        if rehdr is None:
            html.write('Not there!')
            html.write(f'<pre><code>{vhdr}</code></pre>')
        else:
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
