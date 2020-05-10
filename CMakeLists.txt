cmake_minimum_required(VERSION 3.5.0)
project(hello)

# Abseil requires C++11
set(CMAKE_CXX_STANDARD 11)

# Process Abseil's CMake build system
add_subdirectory(vendor/abseil-cpp)

add_subdirectory(hello)
