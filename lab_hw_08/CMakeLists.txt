cmake_minimum_required(VERSION 3.0.0)
project(dz1 VERSION 0.1.0)

set (CMAKE_CXX_STANDARD 17)

set(Srcs "main_with_asm.cpp" )

#include_directories(include)
add_executable(dz1 ${Srcs})
