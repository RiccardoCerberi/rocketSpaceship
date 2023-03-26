file( GLOB sources *.h *.hpp *.cpp *.qrc)

find_package(SDL2 CONFIG REQUIRED)

# creating the executable
add_executable(spaceship ${sources})

target_link_libraries(
    spaceship
    $<TARGET_NAME_IF_EXISTS:SDL2::SDL2main>
        $<IF:$<TARGET_EXISTS:SDL2::SDL2>,SDL2::SDL2,SDL2::SDL2-static>
)

