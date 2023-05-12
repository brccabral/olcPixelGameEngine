cmake_minimum_required(VERSION 3.0)

set(olcPGE_PREFIX       "${CMAKE_CURRENT_LIST_DIR}")
set(olcPGE_INCLUDE_DIR  "${olcPGE_PREFIX}/..")

include_directories(${olcPGE_INCLUDE_DIR})

if(WIN32)
    add_compile_options(/std:c++20)
else()
    add_compile_options(-std=c++20)
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
