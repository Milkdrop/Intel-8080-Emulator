#include "Display.h"

const uint32_t Black = 0xff000000;
const uint32_t White = 0xffffffff;
const uint32_t Green = 0xff00ff00;
const uint32_t Red   = 0xffff0000;

Display::Display (const char* Title, uint16_t _Width, uint16_t _Height, uint16_t _PixelSize) {
	PixelSize = _PixelSize;
	Width = _Width;
	Height = _Height;
	
	MainWindow = SDL_CreateWindow (Title, SDL_WINDOWPOS_CENTERED, SDL_WINDOWPOS_CENTERED, Width * PixelSize, Height * PixelSize, SDL_WINDOW_SHOWN);
	MainRenderer = SDL_CreateRenderer(MainWindow, -1, SDL_RENDERER_ACCELERATED);
	
	SDL_SetRenderDrawColor(MainRenderer, 0x00, 0x00, 0x00, 0x00);
	SDL_RenderClear(MainRenderer);
}

void Display::Update(uint8_t* VRAM) {
	SDL_Surface* Surface = SDL_CreateRGBSurface (0, Width * PixelSize, Height * PixelSize, 32, 0, 0, 0, 0);
	uint32_t ColorToDraw = White;
	
	for (int x = 0; x < Width; x++) {
		for (int y = 0; y < Height; y += 8) {
			if (y <= 73) {
				ColorToDraw = Green;
				if ((x <= 16 || x >= Width - 122) && y <= 15) // Special Zone
					ColorToDraw = White;
			} else if (y >= Height - 64 && y <= Height - 33)
				ColorToDraw = Red;
			else
				ColorToDraw = White;
			
			uint8_t VRAMByte = VRAM [x * (Height >> 3) + (y >> 3)];
			
			for (int bit = 0; bit < 8; bit++) {
				if (((VRAMByte >> bit) & 1)) {
					SDL_Rect pixel = {x * PixelSize, (Height - 1 - (y + bit)) * PixelSize, PixelSize, PixelSize};
					SDL_FillRect (Surface, &pixel, ColorToDraw);
				}
			}
		}
	}
	
	SDL_Texture* Texture = SDL_CreateTextureFromSurface (MainRenderer, Surface);
	SDL_RenderCopy(MainRenderer, Texture, NULL, NULL);
	SDL_RenderPresent(MainRenderer);
	SDL_FreeSurface (Surface);
	SDL_DestroyTexture (Texture);
}