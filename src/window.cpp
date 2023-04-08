#include"../include/window.hpp"

struct WindowDestroyer {
    void operator()(SDL_Window* w) {
        SDL_DestroyWindow(w);
    }
};

// There's a conflict: unique_ptr expects SDL_Window to 
// be a class which contains a constructor to initialize
// the object's members, but none is provided 
// because SDL use the C way to initialize structs
// by calling an apposite function.
Window::Window() :
    m_window(
        SDL_CreateWindow("Everything works!!!!", 
                            SDL_WINDOWPOS_UNDEFINED,
                         SDL_WINDOWPOS_UNDEFINED, 
                         640, 480, 0))
{}

