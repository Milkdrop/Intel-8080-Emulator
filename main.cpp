#include <stdio.h>
#include <SDL2/SDL.h>
#include <string>
#include "Display.h"
#include "CPU.h"
#include "MMU.h"

void OpenFileError (std::string Filename) {
	fprintf (stderr, "There was an error opening the file: %s\n", Filename.c_str());
	exit(1);
}

void DisplayDemo (MMU* mmu, uint8_t number) {
	for (int i = 0; i < 224; i++) {
		if (i % 2 == 0) {
			for (int k = 0; k < 256 >> 3; k += 2) {
				mmu->VRAM[i * (256 / 8) + k] = number;
			}
		} else {
			for (int k = 1; k < 256 >> 3; k += 2) {
				mmu->VRAM[i * (256 / 8) + k] = number;
			}
		}
	}
}

void LoadROMData (MMU* mmu, std::string Filename, uint16_t Address) {
	FILE* ROMData;
	uint16_t ROMSize = 0x800;
	uint8_t Buffer[0x800];

	ROMData = fopen(Filename.c_str(), "rb");
	if (ROMData == 0)
		OpenFileError (Filename);
	if (fread(Buffer, 1, ROMSize, ROMData) != ROMSize)
		OpenFileError (Filename);

	mmu->LoadInMemory (Buffer, Address, ROMSize);
}

int main(int argc, char** argv) {
	if (SDL_Init (SDL_INIT_EVERYTHING) < 0) {
		fprintf(stderr, "SDL failed to initialize: %s", SDL_GetError());
		return 1;
	}
	
	MMU mmu;
	CPU cpu(&mmu, 120);
	Display Disp("Intel 8080", 256, 224, 2);
	//DisplayDemo(&mmu, 255);

	LoadROMData (&mmu, "Demos/invaders/invaders.h", 0x0000);
	LoadROMData (&mmu, "Demos/invaders/invaders.g", 0x0800);
	LoadROMData (&mmu, "Demos/invaders/invaders.f", 0x1000);
	LoadROMData (&mmu, "Demos/invaders/invaders.e", 0x1800);

	bool quit = false;
	SDL_Event ev;
	
	while (!quit) {
		while (SDL_PollEvent(&ev)) {
			if (ev.type == SDL_QUIT) {
				quit = true;
			}
		}
		
		cpu.Clock();
		Disp.Update (mmu.VRAM, 256, 224);
	}
}