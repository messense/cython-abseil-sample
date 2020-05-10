cmake_minimum_required(VERSION 3.5.0)
project(hello)

set (CMAKE_POSITION_INDEPENDENT_CODE ON)

# Abseil requires C++11
set(CMAKE_CXX_STANDARD 11)

# Process Abseil's CMake build system
add_subdirectory(vendor/abseil-cpp)
include_directories(
  /usr/local/include
  ${CMAKE_CURRENT_SOURCE_DIR}/vendor/abseil-cpp
  ${CMAKE_CURRENT_SOURCE_DIR}/src)

add_subdirectory(src)
add_subdirectory(hello)
