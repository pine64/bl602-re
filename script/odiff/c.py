from abc import ABC, abstractmethod
from typing import OrderedDict, Union, Optional, Dict, List, Tuple

from elftools.dwarf.die import DIE


class CElement(ABC):
    def __init__(self, die: Optional[DIE]):
        self.die = die


class CNamed(ABC):
    def __init__(self, name: str):
        self.name = name

    @abstractmethod
    def to_def(self, indent: int = 0) -> str:
        ...


class CType(CElement, ABC):
    @abstractmethod
    def to_namedef(self, alias: str) -> str:
        ...


class CPrimitive(CType):
    def __init__(self, die: Optional[DIE], name: str):
        super().__init__(die)
        self.name = name

    def __str__(self):
        return self.name

    def to_namedef(self, alias: str) -> str:
        return f'{self} {alias}'


CVoid = CPrimitive(None, 'void')
CEllipsis = CPrimitive(None, '...')


class CCompound(CType, CNamed, ABC):
    def __init__(self, die: Optional[DIE], name: Optional[str]):
        CType.__init__(self, die)
        CNamed.__init__(self, name)


class CStruct(CCompound):
    def __init__(self, die: Optional[DIE], name: Optional[str], members: OrderedDict[str, CType],
                 member_offsets: Dict[str, int]):
        super().__init__(die, name)
        self.members = members
        self.member_offsets = member_offsets

    def __str__(self):
        return f"struct{f' {self.name}' if self.name else ''}"

    def to_def(self, indent: int = 0) -> str:
        m = '\n'.join(
            f'  {"  " * indent}{v.to_def(indent + 1)} {k};'
            if isinstance(v, CCompound) and not v.name
            else f'  {"  " * indent}{v.to_namedef(k)}; // +{self.member_offsets[k]}'
            for k, v in self.members.items())
        return f"{self} {{\n{m}\n{'  ' * indent}}}"

    def to_namedef(self, alias: str) -> str:
        return f'{self} {alias}'


class CUnion(CCompound):
    def __init__(self, die: Optional[DIE], name: Optional[str], members: OrderedDict[str, CType]):
        super().__init__(die, name)
        self.members = members

    def __str__(self):
        return f"union{f' {self.name}' if self.name else ''}"

    def to_def(self, indent: int = 0) -> str:
        m = '\n'.join(
            f'  {"  " * indent}{v.to_def(indent + 1)} {k};'
            if isinstance(v, CCompound) and not v.name
            else f'  {"  " * indent}{v.to_namedef(k)};'
            for k, v in self.members.items())
        return f"{self} {{\n{m}\n{'  ' * indent}}}"

    def to_namedef(self, alias: str) -> str:
        return f'{self} {alias}'


class CEnum(CCompound):
    def __init__(self, die: Optional[DIE], name: Optional[str], members: OrderedDict[str, int]):
        super().__init__(die, name)
        self.members = members

    def __str__(self):
        return f"enum{f' {self.name}' if self.name else ''}"

    def to_def(self, indent: int = 0) -> str:
        m = ',\n'.join(f'  {"  " * indent}{k} = {v}' for k, v in self.members.items())
        return f"{self} {{\n{m}\n{'  ' * indent}}}"

    def to_namedef(self, alias: str) -> str:
        return f'{self} {alias}'


class CPointer(CType):
    def __init__(self, die: Optional[DIE], of: CType):
        super().__init__(die)
        self.of = of

    def __str__(self):
        return f"{self.of}*"

    def to_namedef(self, alias: str) -> str:
        return f'{self} {alias}'


class CArray(CType):
    def __init__(self, die: Optional[DIE], of: CType, length: Optional[int] = None):
        super().__init__(die)
        self.of = of
        self.length = length

    def __str__(self):
        return f"{self.of}[{'' if self.length is None else self.length}]"

    def to_namedef(self, alias: str) -> str:
        return f'{self.of.to_namedef(alias)}[{"" if self.length is None else self.length}]'


class CConst(CType):
    def __init__(self, die: Optional[DIE], of: CType):
        super().__init__(die)
        self.of = of

    def __str__(self):
        return f"{self.of} const"

    def to_namedef(self, alias: str) -> str:
        return f'{self} {alias}'


class CVolatile(CType):
    def __init__(self, die: Optional[DIE], of: CType):
        super().__init__(die)
        self.of = of

    def __str__(self):
        return f"{self.of} volatile"

    def to_namedef(self, alias: str) -> str:
        return f'{self} {alias}'


class CFunctionPtr(CType):
    def __init__(self, die: Optional[DIE], return_type: CType, args: List[Tuple[CType, Optional[str]]]):
        super().__init__(die)
        self.return_type = return_type
        self.args = args

    def format_args(self):
        if not self.args:
            return 'void'
        return ', '.join(t.to_namedef(n) if n else str(t) for t, n in self.args)

    def __str__(self):
        return self.to_namedef('')

    def to_namedef(self, alias: str) -> str:
        return self.return_type.to_namedef(f'(*{alias})({self.format_args()})')


class CTypedef(CType, CNamed):
    def __init__(self, die: Optional[DIE], name: Optional[str], of: CType):
        CType.__init__(self, die)
        CNamed.__init__(self, name)
        self.of = of

    def __str__(self):
        return self.name

    def to_def(self, indent: int = 0) -> str:
        if isinstance(self.of, CCompound):
            return f'typedef {self.of.to_def()} {self.name}'
        return f'typedef {self.of.to_namedef(self.name)}'

    def to_namedef(self, alias: str) -> str:
        return f'{self.name} {alias}'


class CFunction(CElement, CNamed):
    def __init__(self, die: Optional[DIE], name: Optional, return_type: CType, args: List[Tuple[CType, Optional[str]]]):
        CElement.__init__(self, die)
        CNamed.__init__(self, name)
        self.name = name
        self.return_type = return_type
        self.args = args

    def format_args(self):
        if not self.args:
            return 'void'
        return ', '.join(t.to_namedef(n) if n else str(t) for t, n in self.args)

    def __str__(self):
        return self.return_type.to_namedef(f'{self.name}({self.format_args()})')

    def to_def(self, indent: int = 0) -> str:
        return str(self)

    def to_namedef(self, alias: str) -> str:
        raise NotImplementedError


class CVariable(CElement, CNamed):
    def __init__(self, die: Optional[DIE], type: CType, name: str):
        CElement.__init__(self, die)
        CNamed.__init__(self, name)
        self.type = type

    def __str__(self):
        return f"var {self.type}"

    def to_def(self, indent: int = 0) -> str:
        return self.type.to_namedef(self.name)

    def to_namedef(self, alias: str) -> str:
        raise NotImplementedError


class HeaderFile:
    def __init__(self, path: str):
        self.path = path
        self.defs: Dict[str, Union[CElement, CNamed]] = {}
        self.def_lines: Dict[str, int] = {}

    @property
    def sorted_defs(self):
        return sorted(self.defs.items(), key=lambda x: self.def_lines[x[0]])

    def __str__(self):
        return "\n".join(f'{self.def_lines[k]:4d} {k}: {v}' for k, v in self.sorted_defs)

    def to_source(self) -> str:
        return "\n".join(
            f'/*{self.def_lines[k]:4d}*/ '
            f'{v.to_def() if isinstance(v, CNamed) else v.to_namedef(k)};'
            for k, v in self.sorted_defs)
