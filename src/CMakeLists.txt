file( GLOB sources *.h *.hpp *.cpp *.qrc)

find_package(SFML COMPONENTS system window graphics CONFIG REQUIRED)

# creating the executable
add_executable(spaceship ${sources})

target_link_libraries(
    spaceship
    PRIVATE sfml-system sfml-network sfml-graphics sfml-window
)

