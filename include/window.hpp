#pragma once

#include<memory>
#include<SDL2/SDL.h>

class Window {
public:
    Window();
    ~Window() = default;
private:

    struct WindowDestroyer;    
    std::unique_ptr<SDL_Window, WindowDestroyer> m_window;
};
