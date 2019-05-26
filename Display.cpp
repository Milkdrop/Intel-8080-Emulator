#include "Display.h"

Display::Display (std::string Name, uint16_t _Width, uint16_t _Height, uint16_t _PixelSize, CPU* _cpu) {
	PixelSize = _PixelSize;
	Width = _Width;
	Height = _Height;
	cpu = _cpu;
	
	main_window = SDL_CreateWindow (Name.c_str(), SDL_WINDOWPOS_CENTERED, SDL_WINDOWPOS_CENTERED, Width * PixelSize, Height * PixelSize, SDL_WINDOW_SHOWN);

	if (main_window == NULL) {
		fprintf (stderr, "Window could not be created! SDL Error: %s\n", SDL_GetError());
	} else {
		main_renderer = SDL_CreateRenderer(main_window, -1, SDL_RENDERER_ACCELERATED);

		if (main_renderer == NULL)
			fprintf (stderr, "Renderer could not be created! SDL Error: %s\n", SDL_GetError());
	}
}

void Display::Update(uint8_t* VRAM) {
	SDL_SetRenderDrawColor(main_renderer, 0x00, 0x00, 0x00, 0x00); // Set black for BG
	SDL_RenderClear(main_renderer);
	
	for (int y = 0; y < Width; y++) {
		for (int x = 0; x < Height; x += 8) {
			if (x <= 73)
				SDL_SetRenderDrawColor(main_renderer, 0x00, 0xFF, 0x00, 0xFF); // Green
			else if (x > Height - 64 && x < Height - 33)
				SDL_SetRenderDrawColor(main_renderer, 0xFF, 0x00, 0x00, 0xFF); // Red
			else
				SDL_SetRenderDrawColor(main_renderer, 0xFF, 0xFF, 0xFF, 0xFF); // Set white for FG
			
			uint8_t VRAMByte = VRAM [y * (Height >> 3) + (x >> 3)];
			
			for (int bit = 0; bit < 8; bit++) {
				if (((VRAMByte >> bit) & 1)) {
					SDL_Rect pixel = {y * PixelSize, (Height - 1 - (x + bit)) * PixelSize, PixelSize, PixelSize};
					SDL_RenderFillRect(main_renderer, &pixel);
				}
			}
		}
	}
	
	SDL_RenderPresent(main_renderer);
}