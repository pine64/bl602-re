# BL602 RE tooling

### `funcdiff.py` - Assembly-level function diffing

Compiles sources and generates a HTML report comparing the assembly of the original binaries to the RE'd object files.
Requires a RISC-V toolchain on the `PATH`.

Usage: `./funcdiff.py [source file matching glob expression]`

### `headerdiff.py` - Source-level C header diffing

Compiles sources and generates a HTML report comparing the DWARF-reconstructed headers of the original binaries to the RE'd files.
Requires a RISC-V toolchain on the `PATH`.

Usage: `./headerdiff.py [source file matching glob expression]`

### `bfnp.ksy` - Kaitai definition file for firmware header parsing

You can use this script with Kaitai IDE to parse files with BFNP header,
this header is sent together within all firmwares (bootrom and eflash loader reads them),
or they have it directly (for example eflash_loader.bin)

Usage: Upload and open the script within [Kaitai IDE](https://ide.kaitai.io/) and upload file
with BFNP header

### **TODO**: document other tools
