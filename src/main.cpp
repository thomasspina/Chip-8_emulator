#include "chip8.hpp"
#include "graphics.hpp"

int main() {
    // init Chip8
    Chip8 emulator = Chip8();

    // initialize graphics
    graphics::initializeGraphics();
    graphics::clearScreen();

    // load ROM for games
    //emulator.loadROM("flightrunner");

    // Main loop
    bool quit = false;
    SDL_Event event;
    while (!quit) {
        while (SDL_PollEvent(&event)) {
            switch (event.type) {
                case SDL_QUIT:
                    quit = true;
                break;

                case SDL_KEYDOWN:
                    // TODO: update keydown according to mapping
                break;

                case SDL_KEYUP:
                    // TODO: update key release according to mapping
                break;

                default:
                break;
            }
        }

        if (emulator.getDrawFlag()) {
            graphics::drawScreen();
            emulator.setDrawFlag(false);
        }
        // emulate a single cycle
        //emulator.emulationCycle();
    }

    graphics::destroyGraphics();

    return 0;
}