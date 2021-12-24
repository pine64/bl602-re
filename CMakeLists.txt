cmake_minimum_required(VERSION 3.14.0)
set(CMAKE_SYSTEM_NAME Generic)

set(CMAKE_USER_MAKE_RULES_OVERRIDE cmake/c_extension.cmake)
set(CMAKE_C_OUTPUT_EXTENSION_REPLACE 1) # This is critical to produce correct object files name for bl602 linker script

set(CMAKE_SYSTEM_PROCESSOR riscv)
SET(CMAKE_CROSSCOMPILING 1)
set(CMAKE_TRY_COMPILE_TARGET_TYPE "STATIC_LIBRARY")

option(USE_CLANG "build application with clang" OFF)
if(USE_CLANG)
    set(CMAKE_C_COMPILER clang)
    set(CMAKE_C_COMPILER_TARGET "riscv32-unknown-elf")
    set(CMAKE_CXX_COMPILER clang++)
    set(CMAKE_CXX_COMPILER_TARGET "riscv32-unknown-elf")
    set(CMAKE_TOOLCHAIN_PREFIX llvm-)
    set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -fcommon ") # generate correct section for uninitialized data
else()
    set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -fstrict-volatile-bitfields") 
    # this make GCC access pheripherals memory with respect to word align
    # rather than byte align (e.g. sb/lb)
endif()

set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++11 -march=rv32imfc -mabi=ilp32f -DARCH_RISCV")
set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -std=c11 -march=rv32imfc -mabi=ilp32f -DARCH_RISCV")

project(bl602_re VERSION 0.1.0)

include_directories(./src/include)
include(cmake/add_module.cmake)

option(FREERTOS_RAM "build with freertos ram" ON)
if (FREERTOS_RAM)
    include_directories(./components/bl602/freertos_riscv_ram/config)
    include_directories(./components/bl602/freertos_riscv_ram/portable/GCC/RISC-V)
    include_directories(./components/bl602/freertos_riscv_ram/portable/GCC/RISC-V/chip_specific_extensions/RV32I_CLINT_no_extensions)
else()
    include_directories(./components/bl602/freertos_riscv/config)
    include_directories(./components/bl602/freertos_riscv/portable/GCC/RISC-V)
    include_directories(./components/bl602/freertos_riscv/portable/GCC/RISC-V/chip_specific_extensions/RV32I_CLINT_no_extensions)
endif()

add_subdirectory(./src/bl602_wifi)
