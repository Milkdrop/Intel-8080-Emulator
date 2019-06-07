#include "Display.h"

const uint16_t Black = 0xf000;
const uint16_t White = 0xffff;
const uint16_t Green = 0xf0f0;
const uint16_t Red   = 0xff00;

Display::Display (const char* Title, uint16_t _Width, uint16_t _Height, uint16_t _PixelSize) {
	PixelSize = _PixelSize;
	Width = _Width;
	Height = _Height;
	
	MainWindow = SDL_CreateWindow (Title, SDL_WINDOWPOS_CENTERED, SDL_WINDOWPOS_CENTERED, Width * PixelSize, Height * PixelSize, SDL_WINDOW_SHOWN);
	MainRenderer = SDL_CreateRenderer(MainWindow, -1, SDL_RENDERER_ACCELERATED);
	MainTexture = SDL_CreateTexture (MainRenderer, SDL_PIXELFORMAT_ARGB4444, SDL_TEXTUREACCESS_STREAMING, Width, Height);
	
	SDL_SetRenderDrawColor(MainRenderer, 0x00, 0x00, 0x00, 0x00);
	SDL_RenderClear(MainRenderer);
}

void Display::Update(uint8_t* VRAM) {
	uint32_t ColorToDraw = White;
	
	for (int x = 0; x < Width; x++) {
		for (int y = 0; y < Height; y += 8) {
			uint8_t VRAMByte = VRAM [x * (Height >> 3) + (y >> 3)];
			
			for (int bit = 0; bit < 8; bit++) {
				ColorToDraw = Black;
				
				if (((VRAMByte >> bit) & 1)) {
					if (y <= 73) {
						ColorToDraw = Green;
						if ((x <= 16 || x >= Width - 122) && y <= 15) // Special Zone
							ColorToDraw = White;
					} else if (y >= Height - 64 && y <= Height - 33)
						ColorToDraw = Red;
					else
						ColorToDraw = White;
				}

				uint8_t CoordX = x;
				uint8_t CoordY = (Height - 1 - (y + bit));
				Pixels [CoordY * Width + CoordX] = ColorToDraw;
			}
		}
	}
	
	SDL_UpdateTexture (MainTexture, NULL, Pixels, 2 * Width);
	SDL_RenderCopy (MainRenderer, MainTexture, NULL, NULL);
	SDL_RenderPresent (MainRenderer);
}