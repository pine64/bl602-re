# BL602 RE tooling

### `funcdiff.py` - Assembly-level function diffing

Compiles sources and generates a HTML report comparing the assembly of the original binaries to the RE'd object files.
Requires a RISC-V toolchain on the `PATH`.

Usage: `./funcdiff.py [source file matching glob expression]`

### `headerdiff.py` - Source-level C header diffing

Compiles sources and generates a HTML report comparing the DWARF-reconstructed headers of the original binaries to the RE'd files.
Requires a RISC-V toolchain on the `PATH`.

Usage: `./headerdiff.py [source file matching glob expression]`

### **TODO**: document other tools
