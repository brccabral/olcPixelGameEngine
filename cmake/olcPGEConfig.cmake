cmake_minimum_required(VERSION 3.21.2)

set(olcPGE_PREFIX       "${CMAKE_CURRENT_LIST_DIR}")
set(olcPGE_INCLUDE_DIR  "${olcPGE_PREFIX}/..")

include_directories(${olcPGE_INCLUDE_DIR})

if(WIN32)
    add_compile_options(/std:c++20)
    # MinGW
    # add_compile_options(-std=c++20)
    # link_libraries(opengl32 glu32 gdiplus dwmapi d3d11 dxgi d3dcompiler winmm dxguid shlwapi)
elseif(EMSCRIPTEN)
    link_libraries(-std=c++17 -sALLOW_MEMORY_GROWTH=1 -sMAX_WEBGL_VERSION=2 -sMIN_WEBGL_VERSION=2 -sUSE_LIBPNG=1)
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
