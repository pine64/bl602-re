cmake_minimum_required(VERSION 3.14.0)
set(CMAKE_SYSTEM_NAME Generic)
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
endif()

set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++11 -march=rv32imfc -mabi=ilp32f")
set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -std=c11 -march=rv32imfc -mabi=ilp32f")
project(bl602_re VERSION 0.1.0)

include_directories(./src/include)
include(cmake/add_module.cmake)

add_subdirectory(./src/bl602_wifi)
