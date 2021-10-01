#!/usr/bin/env python3
import difflib
import os
import re
import shutil
import subprocess
import sys
import time
from argparse import ArgumentParser
from fnmatch import fnmatch
from html import escape
from io import StringIO
from pathlib import Path
from tempfile import TemporaryDirectory
from typing import Optional, List, Any, Dict, Tuple, Union, Generator

SCRIPT_PATH = Path(os.path.abspath(__file__))
REPO_ROOT = SCRIPT_PATH.parent.parent
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
SUBPROCESS_ENV = {
    'LANG': 'C',
    'PATH': os.environ['PATH'],
    'TERM': os.environ.get('TERM', '')
}
GCC: str


# Locate GCC
gcc_found = False
for prefix in ('riscv32-unknown-elf-', 'riscv64-unknown-elf-', 'riscv-unknown-elf-'):
    if shutil.which(prefix + 'gcc') is not None:
        PREFIX = prefix
        GCC = prefix + 'gcc'
        READELF = prefix + 'readelf'
        OBJDUMP = prefix + 'objdump'
        gcc_found = True
        break

if not gcc_found:
    print("RISC-V toolchain not found in $PATH. Please install a riscv32-unknown-elf-gcc toolchain", file=sys.stderr)
    sys.exit(1)


def run(args: List[Any], check=True, capture_output=False) -> subprocess.CompletedProcess[bytes]:
    completed = subprocess.run(args, capture_output=capture_output, env=SUBPROCESS_ENV)
    if check and completed.returncode != 0:
        raise ChildProcessError(f"{' '.join(str(x) for x in [GCC, *args])} returned {completed.returncode}")
    return completed


def gcc(*args, check=True, capture_output=False) -> subprocess.CompletedProcess[bytes]:
    return run([GCC, *args], check=check, capture_output=capture_output)


def objdump(*args, check=True, capture_output=False) -> subprocess.CompletedProcess[bytes]:
    return run([OBJDUMP, *args], check=check, capture_output=capture_output)


class Library:
    def __init__(self, name: str, source_dirs: List[Path], vendorobj_dir: Path, include_dirs: List[Path]):
        self.name = name
        self.source_dirs = source_dirs
        self.vendorobj_dir = vendorobj_dir
        self.vendorobj_paths: List[Path] = [*vendorobj_dir.glob('*.o')]
        self.include_dirs = include_dirs


BLE_ROOT = REPO_ROOT / 'components/network/ble/blecontroller'
LIBRARIES = [
    Library(
        'libatcmd',
        [
            REPO_ROOT / 'components/stage/atcmd/src',
            REPO_ROOT / 'components/stage/atcmd/at_bl602'
        ],
        REPO_ROOT / 'libatcmd',
        [
            REPO_ROOT / 'components/stage/atcmd/inc',
            REPO_ROOT / 'components/stage/atcmd/inc/atcmd',
            REPO_ROOT / 'components/bl602/freertos_riscv_ram/config/',
            REPO_ROOT / 'components/bl602/freertos_riscv_ram/portable/GCC/RISC-V/'
        ]
    ),
    Library(
        'libblecontroller',
        [
            BLE_ROOT / 'h4tl/src',
            BLE_ROOT / 'ip/ble/ll/src/em',
            BLE_ROOT / 'ip/ble/ll/src/llc',
            BLE_ROOT / 'ip/ble/ll/src/lld',
            BLE_ROOT / 'ip/ble/ll/src/llm',
            BLE_ROOT / 'ip/ble/ll/src/rwble',
            BLE_ROOT / 'ip/ea/src',
            BLE_ROOT / 'ip/hci/src',
            BLE_ROOT / 'modules/common/src',
            BLE_ROOT / 'modules/dbg/src',
            BLE_ROOT / 'modules/ecc_p256/src',
            BLE_ROOT / 'modules/ke/src',
            BLE_ROOT / 'modules/rf/src',
            BLE_ROOT / 'modules/rwip/src',
            BLE_ROOT / 'plf/refip/src/arch',
            BLE_ROOT / 'plf/refip/src/arch/main',
            BLE_ROOT / 'plf/refip/src/driver/sec_eng',
            BLE_ROOT / 'plf/refip/src/driver/uart'
        ],
        REPO_ROOT / 'libblecontroller',
        [
            REPO_ROOT / 'components/bl602/bl602_std/bl602_std/Common/platform_print/',
            REPO_ROOT / 'components/bl602/bl602_std/bl602_std/Device/Bouffalo/BL602/Peripherals/',
            REPO_ROOT / 'components/bl602/bl602_std/bl602_std/RISCV/Core/Include/',
            REPO_ROOT / 'components/bl602/bl602_std/bl602_std/RISCV/Device/Bouffalo/BL602/Startup/',
            REPO_ROOT / 'components/bl602/bl602_std/bl602_std/StdDriver/Inc/',
            REPO_ROOT / 'components/bl602/freertos_riscv_ram/config/',
            REPO_ROOT / 'components/bl602/freertos_riscv_ram/portable/GCC/RISC-V/',
            REPO_ROOT / 'components/hal_drv/bl602_hal/',
            REPO_ROOT / 'components/network/ble/blecontroller/ble_inc/',
            REPO_ROOT / 'components/network/ble/blecontroller/ip/ble/ll/src/',
            REPO_ROOT / 'components/network/ble/blecontroller/ip/ea/api/',
            REPO_ROOT / 'components/network/ble/blecontroller/ip/hci/api/',
            REPO_ROOT / 'components/network/ble/blecontroller/modules/common/api/',
            REPO_ROOT / 'components/network/ble/blecontroller/modules/ecc_p256/api/',
            REPO_ROOT / 'components/network/ble/blecontroller/modules/ke/api/',
            REPO_ROOT / 'components/network/ble/blecontroller/modules/rf/api/',
            REPO_ROOT / 'components/network/ble/blecontroller/modules/rwip/api/',
            REPO_ROOT / 'components/network/ble/blecontroller/plf/refip/src/'
        ]
    )
]

ASM_LINE_RE = re.compile(
    r'^\s*([0-9A-Fa-f]+):\s*[0-9A-Fa-f]+\s+(\S+)\s*(?:([^,# ]+(?:,\s*[^,# ]+)*)\s*)?(?:<([^>#]+)>\s*)?(?:#(.*))?$')
LABEL_RE = re.compile(r'^([0-9A-Fa-f]{8}) <([^>#]+)>:$')
RELOC_RE = re.compile(r'^\s*[0-9A-Fa-f]+: R_RISCV_(\S+)\s+(\S+)$')


class AsmLine:
    __slots__ = ('offset', 'opcode', 'operands', 'target', 'comment')

    def __init__(self, offset: int, opcode: str, operands: List[str], target: Optional[str] = None,
                 comment: Optional[str] = None):
        self.offset = offset
        self.opcode = opcode
        self.operands = operands
        self.target = target or None
        self.comment = (comment or '').strip()

    def _text(self) -> str:
        return f'{self.opcode:8s} ' \
               f'{", ".join(self.operands)}' \
               f'{f" <{self.target}>" if self.target else ""}'
        # f'{f" # {self.comment}" if self.comment else ""}'

    def indented_text(self):
        return f'  {self._text()}'

    def offset_text(self):
        return f'{self.offset:x}'

    def __repr__(self):
        return f'{self.offset:4x}: {self._text()}'

    def __eq__(self, o: object) -> bool:
        if isinstance(o, AsmLine):
            return self.offset == o.offset and self.opcode == o.opcode and self.operands == o.operands
        return False

    def __hash__(self):
        return hash((self.opcode, *self.operands))


class Label:
    __slots__ = ('offset', 'name')

    def __init__(self, offset: int, name: str):
        self.offset = offset
        self.name = name

    def _text(self) -> str:
        return f'<{self.name}>:'

    def indented_text(self):
        return self._text()

    def offset_text(self):
        return ''

    def __repr__(self):
        return self._text()

    def __eq__(self, o: object) -> bool:
        if isinstance(o, Label):
            return self.offset == o.offset and self.name == o.name
        return False

    def __hash__(self):
        return hash(self.name)


class Function:
    def __init__(self, lines: List[str]):
        self.name = '_unknown'
        self.asm_lines: List[AsmLine] = []
        self.labels: List[Label] = []
        for line in lines[1:]:
            if (match := ASM_LINE_RE.match(line)) is not None:
                self.asm_lines.append(AsmLine(
                    offset=int(match.group(1), 16),
                    opcode=match.group(2),
                    operands=[o.strip() for o in match.group(3).split(',')] if match.group(3) else [],
                    target=match.group(4),
                    comment=match.group(5)))
            elif (match := RELOC_RE.match(line)) is not None and match.group(1) in ('HI20', 'LO12_I', 'CALL'):
                self.asm_lines[-1].target = match.group(2)
            elif (match := LABEL_RE.match(line)) is not None:
                label_offset = int(match.group(1), 16)
                label_name = match.group(2)
                if label_name[0] != '.' and label_offset == 0:
                    self.name = label_name
                elif label_name[0] == '.' and not label_name.startswith('.LV'):
                    self.labels.append(Label(offset=label_offset, name=label_name))

    @property
    def lines(self) -> Generator[Union[AsmLine, Label], None, None]:
        label_idx = 0
        for asm_line in self.asm_lines:
            while label_idx < len(self.labels) and self.labels[label_idx].offset == asm_line.offset:
                yield self.labels[label_idx]
                label_idx += 1
            yield asm_line

    def __repr__(self):
        return f'00000000 <{self.name}>:\n{os.linesep.join(l.indented_text() for l in self.lines)}'

    def __eq__(self, o: object) -> bool:
        if isinstance(o, Function):
            return self.name == o.name and self.asm_lines == o.asm_lines
        return False

    def equivalent(self, o: 'Function') -> bool:
        return self.name == o.name and self.asm_lines == o.asm_lines


def build_reobj(lib: Library, build_dir: Path, vendorobj_path: Path) -> Tuple[float, subprocess.CompletedProcess[bytes]]:
    source_path = None
    for source_dir in lib.source_dirs:
        if (source_path := source_dir / f'{vendorobj_path.stem}.c').is_file():
            break
    if not source_path.is_file():
        raise FileNotFoundError(f"Source file {vendorobj_path.stem}.c for lib {lib.name} not found")
    print(f"Building {lib.name}/{source_path.name}")
    start = time.time()
    result = gcc(*CFLAGS, *(f'-I{i}' for i in lib.include_dirs), '-c', '-o', build_dir / vendorobj_path.name,
                 source_path, check=False, capture_output=True)
    end = time.time()
    return end - start, result


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
        content = ''
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
            matcher = difflib.SequenceMatcher(
                None,
                [x.opcode if isinstance(x, AsmLine) else None for x in original_a],
                [x.opcode if isinstance(x, AsmLine) else None for x in original_b])
            diffed_a: List[Union[AsmLine, Label, None]] = []
            diffed_b: List[Union[AsmLine, Label, None]] = []
            chg_lines: List[bool] = []
            for tag, alo, ahi, blo, bhi in matcher.get_opcodes():
                if tag == 'replace':
                    diff_len = max(ahi - alo, bhi - blo)
                    diffed_a += original_a[alo:ahi]
                    diffed_a += [None] * (diff_len - (ahi - alo))
                    diffed_b += original_b[blo:bhi]
                    diffed_b += [None] * (diff_len - (bhi - blo))
                    chg_lines += [True] * diff_len
                elif tag == 'delete':
                    diffed_a += original_a[alo:ahi]
                    diffed_b += [None] * (ahi - alo)
                    chg_lines += [False] * (ahi - alo)
                elif tag == 'insert':
                    diffed_a += [None] * (bhi - blo)
                    diffed_b += original_b[blo:bhi]
                    chg_lines += [False] * (bhi - blo)
                elif tag == 'equal':
                    diffed_a += original_a[alo:ahi]
                    diffed_b += original_b[blo:bhi]
                    chg_lines += [False] * (bhi - blo)

            table = StringIO()
            table.write('<table rules="groups" class="diff" cellspacing="0" cellpadding="0">')
            table.write('<colgroup></colgroup>' * 4)
            table.write('<tbody>')

            def line(ah, a, bh, b):
                table.write(f'<tr><td class="diff_header">{ah}</td><td><pre>{a}</pre></td>'
                            f'<td class="diff_header">{bh}</td><td><pre>{b}</pre></td></tr>')

            for a, b, chg in zip(diffed_a, diffed_b, chg_lines):
                if chg:
                    line(f'{a.offset_text() if a else ""}',
                         f'<span class="diff_chg">{escape(a.indented_text()) if a else ""}</span>',
                         f'{b.offset_text() if b else ""}',
                         f'<span class="diff_chg">{escape(b.indented_text()) if b else ""}</span>')
                elif a is None:
                    bt = escape(b.indented_text())
                    line('', '', f'{b.offset_text()}', f'<span class="diff_add">{bt}</span>' if not isinstance(b, Label) else bt)
                elif b is None:
                    at = escape(a.indented_text())
                    line(f'{a.offset_text()}', f'<span class="diff_sub">{at}</span>' if not isinstance(a, Label) else at, '', '')
                else:
                    at = a.indented_text() if a else ''
                    bt = b.indented_text() if b else ''
                    if isinstance(a, Label) or isinstance(b, Label):
                        line('', escape(at), '', escape(bt))
                        continue
                    linematcher = difflib.SequenceMatcher(None, at, bt)
                    ad = ''
                    bd = ''
                    for tag, alo, ahi, blo, bhi in linematcher.get_opcodes():
                        if tag == 'replace':
                            ad += f'<span class="diff_chg">{escape(at[alo:ahi])}</span>'
                            bd += f'<span class="diff_chg">{escape(bt[blo:bhi])}</span>'
                        elif tag == 'delete':
                            ad += f'<span class="diff_del">{escape(at[alo:ahi])}</span>'
                        elif tag == 'insert':
                            bd += f'<span class="diff_add">{escape(bt[blo:bhi])}</span>'
                        elif tag == 'equal':
                            ad += escape(at[alo:ahi])
                            bd += escape(bt[blo:bhi])
                    line(f'{a.offset_text()}', ad, f'{b.offset_text()}', bd)

            table.write('</tbody></table>')
            content = table.getvalue()
            similarity = matcher.ratio()
        html += f'<details class="func {status}" id="func_{vendorobj_path.name}_{func_name}"><summary><div class="similarity">{similarity*100:.0f}%</div><h3>{func_name}</h3></summary>\n{content}</details>\n'
        similarities += (similarity,)
    # TODO: .rodata equivalence checking; .LANCHORx labels are a pain however
    return html, (sum(similarities) / len(similarities)) if similarities else 1, all(s == 1 for s in similarities)


def main():
    parser = ArgumentParser(description="Generate HTML instruction-level diffs between functions in object files")
    parser.add_argument('-o', '--output', type=str, default='report.html', help='Output file name')
    parser.add_argument(dest='patterns', type=str, nargs='*', help='Glob-like pattern(s) of files to build')
    args = parser.parse_args()
    html = open(args.output, 'w')
    html.write('''<!DOCTYPE html>
    <html>
    <head>
    <meta charset="utf-8"/>
    <title>funcdiff</title>
    <style>
    html, body, table.diff { font-family: monospace; }
    html, body, pre { margin: 0; padding: 0; }
    table.diff { border:medium; }
    .diff_header { background-color:#e0e0e0 }
    td.diff_header { text-align:right; }
    .diff_next {background-color:#c0c0c0}
    .diff_add {background-color:#aaffaa}
    .diff_chg {background-color:#ffff77}
    .diff_sub {background-color:#ffaaaa}
    h1, h2, h3 { display: inline-block; margin: 0; font-weight: normal; }
    h1 { font-size: 2em; }
    h2 { font-size: 1.5em; }
    h3 { font-size: 1em; }
    h1::before, h2::before, h3::before { font-family: serif; font-weight: normal; margin-right: .3em; }
    h1::before { content: '📚'; }
    h2::before { content: '📦'; }
    h3::before { content: 'ƒ'; font-style: italic; }
    .lib, .obj {
        border: .1em solid #aaa;
        border-radius: .3em;
        padding: .3em;
    }
    .obj {
        margin-top: .5em;
    }
    .func.missing { background: rgba(128, 0, 0, 0.1); }
    .func.missing h3::before { background: rgb(128, 0, 0); }
    .func.different { background: rgba(255, 0, 0, 0.1); }
    .func.missing h3::before { background: rgb(255, 0, 0); }
    .func.equivalent, .obj.equivalent { background: rgba(0, 255, 0, 0.1); }
    .func.missing h3::before { background: rgb(255, 0, 0); }
    summary { cursor: pointer; }
    details[open] summary { margin-bottom: .3em; }
    .buildtime, .similarity { display: inline-block; float: right; }
    </style>
    </head>
    <body>
    ''')
    for lib in LIBRARIES:
        html.write(f'<article class="lib"><h1>{lib.name}</h1>')
        patterns: List[str] = args.patterns
        with TemporaryDirectory(prefix=lib.name) as tmpdir:
            for vendorobj_path in (
                    f for f in lib.vendorobj_paths
                    if not patterns or any(fnmatch(f'{lib.name}/{f.name}', p) for p in patterns)
            ):
                buildtime, result = build_reobj(lib, Path(tmpdir), vendorobj_path)
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
    html.write('''<script>
    let unroll = document.getElementById(window.location.hash.substring(1));
    while (unroll) {
        if (unroll.tagName === 'DETAILS') {
            unroll.open = true;
        }
        unroll = unroll.parentElement;
    }
    setTimeout(() => {
        document.querySelectorAll('details').forEach(x => x.addEventListener("toggle", () => {
            if (x.hasAttribute("open")) {
                history.replaceState({}, 'funcdiff: ' + x.id, '#' + x.id);
            }
        }));
    }, 100);
    </script>
    </body>
    ''')


if __name__ == '__main__':
    main()
