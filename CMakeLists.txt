cmake_minimum_required(VERSION 3.0.0 FATAL_ERROR)

project( spaceship )

#usefull to let lsp server where to find sdl2
set(CMAKE_EXPORT_COMPILE_COMMANDS ON)

#TODO: configure cmake to find headers along with the implemetation files
#TODO: add compiler flags

add_subdirectory( src ) 

set_target_properties(spaceship
    PROPERTIES
      RUNTIME_OUTPUT_DIRECTORY "${PROJECT_SOURCE_DIR}/bin/$<CONFIG>")
