cmake_minimum_required(VERSION 3.14.0)
set(CMAKE_SYSTEM_NAME Generic)
set(CMAKE_SYSTEM_PROCESSOR riscv)
SET(CMAKE_CROSSCOMPILING 1)
set(CMAKE_TRY_COMPILE_TARGET_TYPE "STATIC_LIBRARY")


project(bl602_re VERSION 0.1.0)

include_directories(./src/include)

add_subdirectory(./src/bl602_wifi)
