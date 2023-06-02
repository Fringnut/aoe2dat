cmake_minimum_required(VERSION 3.10)
project(aoe2dat VERSION 1.0)

add_subdirectory(genieutils EXCLUDE_FROM_ALL)
 
set(CMAKE_WINDOWS_EXPORT_ALL_SYMBOLS ON)

set(STATIC_COMPILE ON)

find_package(Boost 1.55 REQUIRED)

set(AOE2DAT_INCLUDE_DIRS "genieutils/include" "${CMAKE_SOURCE_DIR}/tojson" include/ ../ ${Boost_INCLUDE_DIRS})
include_directories(${AOE2DAT_INCLUDE_DIRS})

add_executable(aoe2dat aoe2dat.cpp tojson/tojson.cpp)
target_link_libraries(aoe2dat PUBLIC genieutils)
