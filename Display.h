#include <stdint.h>
#include <SDL2/SDL.h>
#include <stdio.h>
#include <string>
#include "CPU.h"
#ifndef DISPLAY_H
#define DISPLAY_H

class Display {
public:
	Display (std::string Name, uint16_t _Width, uint16_t _Height, uint16_t _PixelSize, CPU* _cpu);
	void Update (uint8_t* VRAMMap);
	CPU* cpu; // For INTs
private:
	uint16_t PixelSize;
	uint16_t Width;
	uint16_t Height;
	SDL_Window* main_window;
	SDL_Renderer* main_renderer;
};

#endif