#include "../include/spaceship.hpp"
#include <SFML/Window.hpp>

int main(int argc, char *argv[]) {
    sf::Window window(sf::VideoMode(800, 600), "Window");
    while (window.isOpen()) {
        sf::Event event;
        while (window.pollEvent(event)) {
            // "close requested" event: we close the window
            if (event.type == sf::Event::Closed)
                window.close();
        }
    }
}
