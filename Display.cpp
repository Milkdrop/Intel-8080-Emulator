#include "Display.h"

Display::Display (std::string Name, int Width, int Height, uint16_t _PixelSize) {
	PixelSize = _PixelSize;
	main_window = SDL_CreateWindow (Name.c_str(), SDL_WINDOWPOS_CENTERED, SDL_WINDOWPOS_CENTERED, Width * PixelSize, Height * PixelSize, SDL_WINDOW_SHOWN);

	if (main_window == NULL) {
		fprintf (stderr, "Window could not be created! SDL Error: %s\n", SDL_GetError());
	} else {
		main_renderer = SDL_CreateRenderer(main_window, -1, SDL_RENDERER_ACCELERATED);

		if (main_renderer == NULL)
			fprintf (stderr, "Renderer could not be created! SDL Error: %s\n", SDL_GetError());
	}
}

void Display::Update(uint8_t* VRAM, int Width, int Height) {
	SDL_SetRenderDrawColor(main_renderer, 0x00, 0x00, 0x00, 0x00); // Set black for BG
	SDL_RenderClear(main_renderer);
	SDL_SetRenderDrawColor(main_renderer, 0xFF, 0xFF, 0xFF, 0xFF); // Set white for FG

	for (int y = 0; y < Height; y++) {
		for (int x = 0; x < Width; x += 8) {
			uint8_t VRAMByte = VRAM [y * (Width >> 3) + (x >> 3)];

			for (int bit = 0; bit < 8; bit++) {
				if (((VRAMByte >> bit) & 1)) {
					SDL_Rect pixel = {((x & 0xF8) + bit) * PixelSize, y * PixelSize, PixelSize, PixelSize};
					SDL_RenderFillRect(main_renderer, &pixel);
				}
			}
		}
	}

	SDL_RenderPresent(main_renderer);
}