#include "../include/spaceship.hpp"
#include <SFML/Window.hpp>
#include <cstring>

int main(int argc, char *argv[]) {
    sf::Window window(sf::VideoMode(800, 600), "My window");
    while (window.isOpen()) {
        sf::Event event;
        while (window.pollEvent(event)) {
            // "close requested" event: we close the window
            if (event.type == sf::Event::Closed)
                window.close();
        }
    }
}
