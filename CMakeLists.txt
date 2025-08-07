cmake_minimum_required(VERSION 3.22)
# cmake_minimum_required(VERSION 3.22..4.1)
project(DemoBug LANGUAGES CXX)

include(CheckPIESupported)
check_pie_supported(OUTPUT_VARIABLE output LANGUAGES CXX)
if(CMAKE_CXX_LINK_PIE_SUPPORTED)
  set(CMAKE_POSITION_INDEPENDENT_CODE ON)
endif()

add_library(bar STATIC bar/bar.cpp)

add_library(foo STATIC foo/foo.cpp $<TARGET_OBJECTS:bar>)
target_include_directories(foo PUBLIC ${CMAKE_CURRENT_SOURCE_DIR}/bar)
