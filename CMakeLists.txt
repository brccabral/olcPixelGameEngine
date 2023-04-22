cmake_minimum_required(VERSION 3.21.2)
project(olcExampleProgram)

include(GNUInstallDirs)

find_package(olcPGE REQUIRED)

add_executable(olcExampleProgram olcExampleProgram.cpp)
install(TARGETS olcExampleProgram)

add_executable(TEST_Animate2D examples/TEST_Animate2D.cpp)
install(TARGETS TEST_Animate2D)

add_executable(TEST_Camera2D examples/TEST_Camera2D.cpp)
install(TARGETS TEST_Camera2D)

add_executable(TEST_QuickGUI examples/TEST_QuickGUI.cpp)
install(TARGETS TEST_QuickGUI)