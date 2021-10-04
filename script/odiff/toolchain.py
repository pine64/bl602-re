import os
import shutil
import subprocess
import sys
from typing import List, Any

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
