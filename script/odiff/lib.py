import subprocess
import time
from fnmatch import fnmatch
from pathlib import Path
from typing import List, Tuple, Generator

from odiff.paths import REPO_ROOT
from odiff.toolchain import gcc


class Library:
    def __init__(self, name: str, source_dirs: List[Path], vendorobj_dir: Path, include_dirs: List[Path]):
        self.name = name
        self.source_dirs = source_dirs
        self.vendorobj_dir = vendorobj_dir
        self.vendorobj_paths: List[Path] = [*vendorobj_dir.glob('*.o')]
        self.include_dirs = include_dirs

    def build_obj(self, build_dir: Path, vendorobj_path: Path, cflags: List[str]) -> \
            Tuple[float, subprocess.CompletedProcess[bytes], Path]:
        """
        Build (reverse-engineered) object file from the corresponding vendor path passed in ``vendorobj_path``.

        :returns: Tuple of (elapsed time, subprocess result, output object file path)
        """
        source_path = None
        for source_dir in self.source_dirs:
            if (source_path := source_dir / f'{vendorobj_path.stem}.c').is_file():
                break
        if not source_path or not source_path.is_file():
            raise FileNotFoundError(f"Source file {vendorobj_path.stem}.c for lib {self.name} not found")
        print(f"Building {self.name}/{source_path.name}")
        outobj_path = build_dir / vendorobj_path.name
        start = time.time()
        result = gcc(*cflags, *(f'-I{i}' for i in self.include_dirs), '-c', '-o', outobj_path,
                     source_path, check=False, capture_output=True)
        end = time.time()
        return end - start, result, outobj_path

    def get_vendorobj_paths(self, patterns: List[str]) -> Generator[Path, None, None]:
        return (
            f for f in self.vendorobj_paths
            if not patterns or any(fnmatch(f'{self.name}/{f.name}', p) for p in patterns)
        )


BLE_ROOT = REPO_ROOT / 'components/network/ble/blecontroller'
WIFI_ROOT = REPO_ROOT / 'components/bl602/bl602_wifi'
COMMON_INCLUDES = [
    REPO_ROOT / 'components/bl602/bl602_std/bl602_std/Common/platform_print/',
    REPO_ROOT / 'components/bl602/bl602_std/bl602_std/Device/Bouffalo/BL602/Peripherals/',
    REPO_ROOT / 'components/bl602/bl602_std/bl602_std/RISCV/Core/Include/',
    REPO_ROOT / 'components/bl602/bl602_std/bl602_std/RISCV/Device/Bouffalo/BL602/Startup/',
    REPO_ROOT / 'components/bl602/bl602_std/bl602_std/StdDriver/Inc/',
    REPO_ROOT / 'components/bl602/freertos_riscv_ram/config/',
    REPO_ROOT / 'components/bl602/freertos_riscv_ram/portable/GCC/RISC-V/',
    REPO_ROOT / 'components/hal_drv/bl602_hal/'
]
LIBRARIES = [
    Library(
        'libatcmd',
        [
            REPO_ROOT / 'components/stage/atcmd/src',
            REPO_ROOT / 'components/stage/atcmd/at_bl602'
        ],
        REPO_ROOT / 'libatcmd',
        [
            *COMMON_INCLUDES,
            REPO_ROOT / 'components/stage/atcmd/inc',
            REPO_ROOT / 'components/stage/atcmd/inc/atcmd'
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
            *COMMON_INCLUDES,
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
    ),
    Library(
        'libbl602_wifi',
        [
            WIFI_ROOT / 'modules/dbg/src/',
            WIFI_ROOT / 'modules/common/src/',
            WIFI_ROOT / 'modules/ke/src/',
            WIFI_ROOT / 'modules/mac/src/',
            WIFI_ROOT / 'modules/supplicant/src/',
            WIFI_ROOT / 'modules/supplicant/src/ap/',
            WIFI_ROOT / 'modules/supplicant/src/sae/',
            WIFI_ROOT / 'ip/cfg/',
            WIFI_ROOT / 'ip/lmac/src/bl/',
            WIFI_ROOT / 'ip/lmac/src/chan/',
            WIFI_ROOT / 'ip/lmac/src/hal/',
            WIFI_ROOT / 'ip/lmac/src/mm/',
            WIFI_ROOT / 'ip/lmac/src/ps/',
            WIFI_ROOT / 'ip/lmac/src/rx/',
            WIFI_ROOT / 'ip/lmac/src/rx/rxl/',
            WIFI_ROOT / 'ip/lmac/src/scan/',
            WIFI_ROOT / 'ip/lmac/src/sta/',
            WIFI_ROOT / 'ip/lmac/src/td/',
            WIFI_ROOT / 'ip/lmac/src/tpc/',
            WIFI_ROOT / 'ip/lmac/src/tx/txl/',
            WIFI_ROOT / 'ip/lmac/src/vif/',
            WIFI_ROOT / 'ip/umac/src/apm/',
            WIFI_ROOT / 'ip/umac/src/bam/',
            WIFI_ROOT / 'ip/umac/src/hostapd/',
            WIFI_ROOT / 'ip/umac/src/me/',
            WIFI_ROOT / 'ip/umac/src/mfp/',
            WIFI_ROOT / 'ip/umac/src/rc/',
            WIFI_ROOT / 'ip/umac/src/rxu/',
            WIFI_ROOT / 'ip/umac/src/scanu/',
            WIFI_ROOT / 'ip/umac/src/sm/',
            WIFI_ROOT / 'ip/umac/src/txu/',
            WIFI_ROOT / 'plf/refip/src/arch/rv32i/',
            WIFI_ROOT / 'plf/refip/src/driver/intc/rv32i/',
            WIFI_ROOT / 'plf/refip/src/driver/ipc/',
            WIFI_ROOT / 'plf/refip/src/driver/phy/',
            WIFI_ROOT / 'plf/refip/src/driver/phy/bl602_phy_rf/',
            WIFI_ROOT / 'plf/refip/src/driver/phy/bl602_phy_rf/rf/Src/',
            WIFI_ROOT / 'plf/refip/src/driver/phyif/',
            WIFI_ROOT / 'plf/refip/src/driver/sysctrl/'
        ],
        REPO_ROOT / 'libbl602_wifi',
        [
            *COMMON_INCLUDES,
            REPO_ROOT / 'components/bl602/bl602_wifi/include/',
            REPO_ROOT / 'components/bl602/bl602_wifi/ip/',
            REPO_ROOT / 'components/bl602/bl602_wifi/ip/lmac/src/',
            REPO_ROOT / 'components/bl602/bl602_wifi/ip/umac/src/',
            REPO_ROOT / 'components/bl602/bl602_wifi/modules/common/src/',
            REPO_ROOT / 'components/bl602/bl602_wifi/modules/dbg/src/',
            REPO_ROOT / 'components/bl602/bl602_wifi/modules/ke/src/',
            REPO_ROOT / 'components/bl602/bl602_wifi/modules/mac/src/',
            REPO_ROOT / 'components/bl602/bl602_wifi/modules/supplicant/src/',
            REPO_ROOT / 'components/bl602/bl602_wifi/plf/refip/src/',
            REPO_ROOT / 'components/bl602/bl602_wifi/plf/refip/src/driver/phy/bl602_phy_rf/rf/Inc/',
            REPO_ROOT / 'components/utils/include/'
        ]
    )
]

