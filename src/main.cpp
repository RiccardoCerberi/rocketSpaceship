#include "SDL2/SDL.h"
#include<iostream>
#include<memory>
#include"../include/spaceship.hpp"
#include"../include/window.hpp"
#include<cstring>

int main(int argc, char *argv[]) {
    int status = SDL_Init(SDL_INIT_EVERYTHING);
    if (status) {
        fprintf(stderr, "Error in initializing sdl!!!\nError:%s\n",
                SDL_GetError());
        return -1;
    }
    
    Window window_obj;

    SDL_Window *window =
        SDL_CreateWindow("Everything works!!!!", SDL_WINDOWPOS_UNDEFINED,
                         SDL_WINDOWPOS_UNDEFINED, 640, 480, 0);
    SDL_Renderer *renderer =
        SDL_CreateRenderer(window, -1, SDL_RENDERER_SOFTWARE);
    if (NULL == window || NULL == renderer) {
        fprintf(stderr, "Error: null ptr!!!!\n");
    }
    SDL_SetRenderDrawColor(renderer, 0, 0, 0, SDL_ALPHA_OPAQUE);
    SDL_RenderClear(renderer);
    SDL_RenderPresent(renderer);

    SDL_Delay(3000);

    SDL_DestroyWindow(window);
    SDL_Quit();
    return 0;
}
