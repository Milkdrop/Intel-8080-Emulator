#include <stdint.h>
#include <SDL2/SDL.h>
#include <stdio.h>
#include <string>
#ifndef DISPLAY_H
#define DISPLAY_H

class Display {
public:
	Display (std::string Name, int Width, int Height, uint16_t _PixelSize);
	void Update (uint8_t* VRAMMap, int Width, int Height);
private:
	uint16_t PixelSize;
	SDL_Window* main_window;
	SDL_Renderer* main_renderer;
};

#endif