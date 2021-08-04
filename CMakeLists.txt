cmake_minimum_required(VERSION 3.22)
# cmake_minimum_required(VERSION 3.22..4.1)
project(DemoBug)

add_library(bar bar/bar.cpp)

add_library(foo foo/foo.cpp $<TARGET_OBJECTS:bar>)
target_include_directories(foo PUBLIC ${CMAKE_CURRENT_SOURCE_DIR}/bar)
