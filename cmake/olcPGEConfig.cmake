cmake_minimum_required(VERSION 3.0)

add_definitions(-DOLC_PGE_APPLICATION)
add_definitions(-DOLC_IMAGE_LIBPNG)
add_definitions(-std=c++17)

set(olcPGE_PREFIX       "${CMAKE_CURRENT_LIST_DIR}")
set(olcPGE_INCLUDE_DIR  "${olcPGE_PREFIX}/..")

include_directories(${olcPGE_INCLUDE_DIR})

link_libraries(png GL X11 pthread stdc++fs)

message("")
message("olcPGE_PREFIX ${olcPGE_PREFIX}")
message("olcPGE_INCLUDE_DIR ${olcPGE_INCLUDE_DIR}")
message("")
