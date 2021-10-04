from typing import OrderedDict as TOrderedDict, Union, Optional, Dict, List, Tuple
from collections import OrderedDict


CRawType = str
CType = Union[CRawType, 'CStruct', 'CUnion', 'CEnum', 'CPointer', 'CArray', 'CConst', 'CVolatile', 'CFunctionPtr']


class CStruct:
    def __init__(self):
        self.members: TOrderedDict[str, CType] = OrderedDict()

    def __str__(self):
        return f"struct"


class CUnion:
    def __init__(self):
        self.members: TOrderedDict[str, CType] = OrderedDict()

    def __str__(self):
        return f"union"


class CEnum:
    def __init__(self):
        self.members: TOrderedDict[str, int] = OrderedDict()

    def __str__(self):
        return "enum"
        # f"enum {{ {', '.join(f'{k}={v}' for k, v in self.members.items())} }}"


class CPointer:
    def __init__(self, of: CType):
        self.of = of

    def __str__(self):
        return f"{self.of}*"


class CArray:
    def __init__(self, of: CType, length: Optional[int] = None):
        self.of = of
        self.length = length

    def __str__(self):
        return f"{self.of}[{'' if self.length is None else self.length}]"


class CConst:
    def __init__(self, of: CType):
        self.of = of

    def __str__(self):
        return f"const {self.of}"


class CVolatile:
    def __init__(self, of: CType):
        self.of = of

    def __str__(self):
        return f"volatile {self.of}"


class CFunction:
    def __init__(self, return_type: CType, args: List[Tuple[CType, Optional[str]]]):
        self.return_type = return_type
        self.args = args

    def __str__(self):
        return f"func {self.return_type}({', '.join(f'{t} {n}' if n else str(t) for t, n in self.args)})"


class CFunctionPtr:
    def __init__(self, of: CFunction):
        self.of = of

    def __str__(self):
        return f"{self.of.return_type}(*)({', '.join(f'{t} {n}' if n else str(t) for t, n in self.of.args)})"


class CVariable:
    def __init__(self, type: CType):
        self.type = type

    def __str__(self):
        return f"var {self.type}"


class HeaderFile:
    def __init__(self, path: str):
        self.path = path
        self.defs: Dict[str, Union[CType, CFunction, CVariable]] = {}
        self.def_lines: Dict[str, int] = {}

    @property
    def sorted_defs(self):
        return sorted(self.defs.items(), key=lambda x: self.def_lines[x[0]])

    def __str__(self):
        return "\n".join(f'{self.def_lines[k]:4d} {k}: {v}' for k, v in self.sorted_defs)
