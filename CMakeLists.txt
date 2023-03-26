cmake_minimum_required(VERSION 3.0.0 FATAL_ERROR)

project( spaceship )

set(CMAKE_EXPORT_COMPILE_COMMANDS ON)

add_subdirectory( src ) 

set_target_properties(spaceship
    PROPERTIES
      RUNTIME_OUTPUT_DIRECTORY "${PROJECT_SOURCE_DIR}/bin/$<CONFIG>")
