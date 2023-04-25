cmake_minimum_required(VERSION 3.0)

add_definitions(-DOLC_PGE_APPLICATION)
add_definitions(-DOLC_PGEX_GRAPHICS2D)

set(olcPGE_PREFIX       "${CMAKE_CURRENT_LIST_DIR}")
set(olcPGE_INCLUDE_DIR  "${olcPGE_PREFIX}/..")

include_directories(${olcPGE_INCLUDE_DIR})

if(WIN32)
    add_compile_options(/std:c++17)
else()
    add_definitions(-DOLC_IMAGE_LIBPNG)
    add_compile_options(-std=c++17)
    link_libraries(png GL X11 pthread stdc++fs)
endif()

get_directory_property( DirDefs DIRECTORY ${CMAKE_SOURCE_DIR} COMPILE_DEFINITIONS )

message("")
message("olcPGE_PREFIX ${olcPGE_PREFIX}")
message("olcPGE_INCLUDE_DIR ${olcPGE_INCLUDE_DIR}")
foreach( d ${DirDefs} )
    message("olcPGE Define: " ${d} )
endforeach()
message("")
