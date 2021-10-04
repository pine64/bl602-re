import os
import re
from typing import Optional, List, Generator, Union

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
