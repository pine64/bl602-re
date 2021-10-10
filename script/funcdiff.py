#!/usr/bin/env python3
import os
from argparse import ArgumentParser
from html import escape
from pathlib import Path
from tempfile import TemporaryDirectory
from typing import List, Dict, Tuple

from odiff.asm import Function, AsmLine
from odiff.html import HTML_HEADER, HTML_FOOTER, make_diff_table
from odiff.lib import Library, LIBRARIES
from odiff.toolchain import objdump

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


def is_funcion_section(name: str) -> bool:
    return name.startswith('text.') or name.startswith('tcm_code')


def diff_lib(lib: Library, build_dir: Path, vendorobj_path: Path) -> Tuple[str, float, bool]:
    vendor_dump_result = objdump('-rd', vendorobj_path, capture_output=True)
    vendor_funcs: Dict[str, Function] = {}
    for section_asm in vendor_dump_result.stdout.decode().split('Disassembly of section .')[1:]:
        lines = section_asm.splitlines()
        if not is_funcion_section(lines[0]):
            continue
        f = Function(lines)
        vendor_funcs[f.name] = f

    re_dump_result = objdump('-rd', build_dir / vendorobj_path.name, capture_output=True)
    re_funcs: Dict[str, Function] = {}
    for section_asm in re_dump_result.stdout.decode().split('Disassembly of section .')[1:]:
        lines = section_asm.splitlines()
        if not is_funcion_section(lines[0]):
            continue
        f = Function(lines)
        re_funcs[f.name] = f

    html = ''
    similarities: List[float] = []
    for i, func_name in enumerate(vendor_funcs):
        content: str
        similarity: float = 0
        if func_name not in re_funcs.keys():
            status = 'missing'
            content = f'<pre><code>{escape(os.linesep.join(l.indented_text() for l in vendor_funcs[func_name].lines))}</code></pre>'
        elif vendor_funcs[func_name].equivalent(re_funcs[func_name]):
            status = 'equivalent'
            content = f'<pre><code>{escape(os.linesep.join(l.indented_text() for l in vendor_funcs[func_name].lines))}</code></pre>'
            similarity = 1
        else:
            status = 'different'
            original_a = [*vendor_funcs[func_name].lines]
            original_b = [*re_funcs[func_name].lines]
            content, similarity = make_diff_table(
                original_a,
                original_b,
                [x.opcode if isinstance(x, AsmLine) else None for x in original_a],
                [x.opcode if isinstance(x, AsmLine) else None for x in original_b],
                get_offset=lambda l: l.offset_text(),
                get_text=lambda l: l.indented_text(),
                ignore_diff=lambda l: not isinstance(l, AsmLine)
            )
        html += f'<details class="func {status}" id="func_{vendorobj_path.name}_{func_name}"><summary><div class="similarity">{similarity*100:.0f}%</div><h3>{func_name}</h3></summary>\n{content}</details>\n'
        similarities += (similarity,)
    # TODO: .rodata equivalence checking; .LANCHORx labels are a pain however
    return html, (sum(similarities) / len(similarities)) if similarities else 1, all(s == 1 for s in similarities)


def main():
    parser = ArgumentParser(description="Generate HTML instruction-level diffs between functions in object files")
    parser.add_argument('-o', '--output', type=str, default='report.html', help="Output file name")
    parser.add_argument(dest='patterns', type=str, nargs='*', help="Glob-like pattern(s) of files to build")
    args = parser.parse_args()
    html = open(args.output, 'w')
    html.write(HTML_HEADER)
    patterns: List[str] = args.patterns
    with TemporaryDirectory(prefix='funcdiff') as tmpdir:
        for lib in LIBRARIES:
            html.write(f'<article class="lib"><h1>{lib.name}</h1>')
            for vendorobj_path in lib.get_vendorobj_paths(patterns):
                buildtime, result, _ = lib.build_obj(Path(tmpdir), vendorobj_path, CFLAGS)
                tag = f'<details id="obj_{vendorobj_path.name}" class="obj'
                if result.returncode == 0:
                    diff_html, similarity, all_equivalent = diff_lib(lib, Path(tmpdir), vendorobj_path)
                    html.write(
                        f'{tag}{" equivalent" if all_equivalent else ""}"><summary><div class="buildtime">{buildtime:.3f}s {similarity * 100:.0f}%</div><h2>{vendorobj_path.name}</h2></summary>{diff_html}\n')
                else:
                    html.write(
                        f'{tag} failed"><summary><div class="buildtime">{buildtime:.3f}s</div><h2>{vendorobj_path.name} 🛑</h2></summary>\n')
                if len(result.stderr) > 0:
                    html.write(f'<pre><code>{escape(result.stderr.decode())}</code></pre>')
                html.write('</details>')
            html.write('</article>')
    html.write(HTML_FOOTER)


if __name__ == '__main__':
    main()
