#include "SDL2/SDL.h"

#include"spaceship.hpp"
#include<cstring>

int main(int argc, char *argv[]) {
    int result_video = SDL_Init(SDL_INIT_VIDEO);
    int result_audio = SDL_Init(SDL_INIT_AUDIO);
    if ((result_video || result_audio) < 0) {
        fprintf(stderr, "Error in initializing sdl!!!\nError:%s\n",
                SDL_GetError());
        return -1;
    }

char text[] = "hello";
Spaceship space_ship(text);

space_ship.print_file_name();

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
