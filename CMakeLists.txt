cmake_minimum_required(VERSION 3.19)
project(cp2020_2021_g26_45616_52360_52393 C)

set(CMAKE_C_STANDARD 11)

include_directories(.)
include_directories(Src)


add_executable(cp2020_2021_g26_45616_52360_52393
        Src/energy_storms.c
        Src/energy_storms_omp.c)
