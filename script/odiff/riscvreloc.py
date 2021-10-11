from io import BytesIO
from struct import Struct

from elftools.common.exceptions import ELFRelocationError
from elftools.elf.relocation import RelocationHandler
from elftools.elf.sections import SymbolTableSection

ENUM_RELOC_TYPE_RISCV= dict(
    R_RISCV_32=1,
    R_RISCV_ADD8=33,
    R_RISCV_ADD16=34,
    R_RISCV_ADD32=35,
    R_RISCV_SUB8=37,
    R_RISCV_SUB16=38,
    R_RISCV_SUB32=39,
    R_RISCV_SUB6=52,
    R_RISCV_SET6=53,
    R_RISCV_SET8=54,
    R_RISCV_SET16=55,
)


def _reloc_calc_riscv(value, sym_value, offset, addend=0):
    return value + sym_value


def _reloc_calc_riscv_add(value, sym_value, offset, addend=0):
    return value + sym_value + addend


def _reloc_calc_riscv_sub(value, sym_value, offset, addend=0):
    return value - sym_value - addend


def _reloc_calc_riscv_set(value, sym_value, offset, addend=0):
    return sym_value + addend


# noinspection PyProtectedMember
_RELOCATION_RECIPES_RISCV = {
    ENUM_RELOC_TYPE_RISCV['R_RISCV_32']: RelocationHandler._RELOCATION_RECIPE_TYPE(
        bytesize=4, has_addend=True,
        calc_func=_reloc_calc_riscv),
    ENUM_RELOC_TYPE_RISCV['R_RISCV_ADD8']: RelocationHandler._RELOCATION_RECIPE_TYPE(
        bytesize=1, has_addend=True,
        calc_func=_reloc_calc_riscv_add),
    ENUM_RELOC_TYPE_RISCV['R_RISCV_ADD16']: RelocationHandler._RELOCATION_RECIPE_TYPE(
        bytesize=2, has_addend=True,
        calc_func=_reloc_calc_riscv_add),
    ENUM_RELOC_TYPE_RISCV['R_RISCV_ADD32']: RelocationHandler._RELOCATION_RECIPE_TYPE(
        bytesize=1, has_addend=True,
        calc_func=_reloc_calc_riscv_add),
    ENUM_RELOC_TYPE_RISCV['R_RISCV_SUB8']: RelocationHandler._RELOCATION_RECIPE_TYPE(
        bytesize=2, has_addend=True,
        calc_func=_reloc_calc_riscv_sub),
    ENUM_RELOC_TYPE_RISCV['R_RISCV_SUB16']: RelocationHandler._RELOCATION_RECIPE_TYPE(
        bytesize=2, has_addend=True,
        calc_func=_reloc_calc_riscv_sub),
    ENUM_RELOC_TYPE_RISCV['R_RISCV_SUB32']: RelocationHandler._RELOCATION_RECIPE_TYPE(
        bytesize=4, has_addend=True,
        calc_func=_reloc_calc_riscv_sub),
    ENUM_RELOC_TYPE_RISCV['R_RISCV_SUB6']: RelocationHandler._RELOCATION_RECIPE_TYPE(
        bytesize=1, has_addend=True,
        calc_func=_reloc_calc_riscv_sub),
    ENUM_RELOC_TYPE_RISCV['R_RISCV_SET6']: RelocationHandler._RELOCATION_RECIPE_TYPE(
        bytesize=1, has_addend=True,
        calc_func=_reloc_calc_riscv_set),
    ENUM_RELOC_TYPE_RISCV['R_RISCV_SET8']: RelocationHandler._RELOCATION_RECIPE_TYPE(
        bytesize=1, has_addend=True,
        calc_func=_reloc_calc_riscv_set),
    ENUM_RELOC_TYPE_RISCV['R_RISCV_SET16']: RelocationHandler._RELOCATION_RECIPE_TYPE(
        bytesize=2, has_addend=True,
        calc_func=_reloc_calc_riscv_set),
}

SYMTAB_ENTRY_VALUE_STRUCT = Struct('<4xI')
BYTE_SIZE_STRUCTS = {
    1: Struct('<B'),
    2: Struct('<H'),
    4: Struct('<I'),
    8: Struct('<Q')
}


def _do_apply_relocation_riscv(self: RelocationHandler, stream: BytesIO, reloc, symtab: SymbolTableSection):
    sym_idx: int = reloc['r_info_sym']
    if sym_idx >= symtab.num_symbols():
        raise ELFRelocationError(f"Invalid symbol reference in relocation: index {sym_idx}")
    # The following line is slow: it uses elftools' slow struct parsing and also gets the symbol name, which is unused.
    # sym_value: int = symtab.get_symbol(sym_idx)['st_value']
    symtab.stream.seek(symtab['sh_offset'] + sym_idx * symtab['sh_entsize'])
    sym_value: int = SYMTAB_ENTRY_VALUE_STRUCT.unpack(symtab.stream.read(SYMTAB_ENTRY_VALUE_STRUCT.size))[0]

    reloc_type = reloc['r_info_type']

    # For some reason checking arch and reloc.is_RELA() is time-consuming when profiled. Don't do it.

    recipe = _RELOCATION_RECIPES_RISCV.get(reloc_type, None)

    if recipe is None:
        raise ELFRelocationError(
            'Unsupported relocation type: %s' % reloc_type)

    value_struct = BYTE_SIZE_STRUCTS[recipe.bytesize]

    stream.seek(reloc['r_offset'])
    original_value = value_struct.unpack(stream.read(value_struct.size))[0]
    relocated_value = recipe.calc_func(
        value=original_value,
        sym_value=sym_value,
        offset=reloc['r_offset'],
        addend=reloc['r_addend'] if recipe.has_addend else 0)

    relocated_value = relocated_value % (2 ** (recipe.bytesize * 8))
    stream.seek(reloc['r_offset'])
    stream.write(value_struct.pack(relocated_value))


def patch_elftools_relocs():
    RelocationHandler._do_apply_relocation = _do_apply_relocation_riscv
