cmake_minimum_required(VERSION 3.0.0 FATAL_ERROR)

project( spaceship )

set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_EXTENSIONS OFF)
set(CMAKE_CXX_STANDARD_REQUIRED TRUE)


#it creates a compile_commands.json file usefull to configure plugins with lsp support
set(CMAKE_EXPORT_COMPILE_COMMANDS ON)

#headers
include_directories(include)

#implementation files
add_subdirectory( src ) 

#binary
set_target_properties(
    spaceship
    PROPERTIES
    RUNTIME_OUTPUT_DIRECTORY "${PROJECT_SOURCE_DIR}/bin/$<CONFIG>"
)

#compiler flags
target_compile_features(spaceship PUBLIC cxx_std_20)

# add compiler warning flags just when building this project
# via the BUILD_INTERFACE generator expression
set(gcc_like_cxx "$<COMPILE_LANG_AND_ID:CXX,ARMClang,AppleClang,Clang,GNU>")
set(msvc_cxx "$<COMPILE_LANG_AND_ID:CXX,MSVC>")

set(gcc_flags "-Wall;-Wextra;-Wshadow;-Wshadow;-Wformat=2")
set(msvc_flags "-W3")

target_compile_options(
    spaceship PRIVATE
    "$<${gcc_like_cxx}:$<BUILD_INTERFACE:${gcc_flags}>>"
    "$<${msvc_cxx}: $<BUILD_INTERFACE:${msvc_flags}>>"
)
