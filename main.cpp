#include <stdio.h>
#include <SDL2/SDL.h>
#include <string>
#include <time.h>
#include <cstring>
#include <algorithm>
#include "Display.h"
#include "MMU.h"
#include "CPU.h"

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

void PrintBinary (uint8_t Value) {
	for (int i = 0; i < 8; i++) {
		if (Value & 128)
			printf ("1");
		else
			printf ("0");
		Value <<= 1;
	}
}

bool OpFunc(std::pair<uint8_t, uint32_t> A, std::pair<uint8_t, uint32_t> B) {
	return A.second < B.second;
}

int main(int argc, char** argv) {
	if (SDL_Init (SDL_INIT_EVERYTHING) < 0) {
		fprintf(stderr, "SDL failed to initialize: %s", SDL_GetError());
		return 1;
	}
	
	MMU mmu;
	CPU cpu(&mmu, 360000);
	Display Disp("Intel 8080", 256, 224, 2, &cpu);
	//DisplayDemo(&mmu, 255);

	LoadROMData (&mmu, "Demos/invaders/invaders.h", 0x0000);
	LoadROMData (&mmu, "Demos/invaders/invaders.g", 0x0800);
	LoadROMData (&mmu, "Demos/invaders/invaders.f", 0x1000);
	LoadROMData (&mmu, "Demos/invaders/invaders.e", 0x1800);
	
	bool quit = false;
	uint32_t LastDraw = 0;
	uint32_t LastDebug = 0;
	uint32_t LastInstructionCount = 0;
	uint32_t CurrentTime = 0;
	const uint8_t *keyboard = SDL_GetKeyboardState(NULL);
	uint8_t Press0 = 0;
	
	SDL_Event ev;
	
	while (!quit) {
		while (SDL_PollEvent(&ev)) {
			if (ev.type == SDL_QUIT) {
				quit = true;
			}
		}
		
		// Time Checking
		CurrentTime = ((float) clock() / CLOCKS_PER_SEC) * 1000; // Get Miliseconds
		if (LastDraw > CurrentTime) // Overflow Protection
			LastDraw = 0;
		
		// Debugging Function
		if (keyboard[SDL_SCANCODE_0]) {
			if (Press0 == 0) {
				Press0 = 1;
				std::pair<uint8_t, uint32_t> Benchmark[256];
				for (int i = 0; i < 256; i++) {
					Benchmark[i].first = i;
					Benchmark[i].second = cpu.Benchmark[i];
				}
				
				sort (Benchmark, Benchmark + 256, OpFunc);
				printf ("Begin Instruction Benchmark Dump:\n");
				for (int i = 0; i < 256; i++) {
					if (Benchmark[i].second != 0) {
						printf ("INST ");
						PrintBinary (Benchmark[i].first);
						printf (": %d\n", Benchmark[i].second);
					}
				}
				
				uint32_t MsPassed = CurrentTime - LastDebug;
				uint32_t INSTPassed = cpu.InstructionCount - LastInstructionCount;
				LastDebug = CurrentTime;
				printf ("Executed %d INST in %dms\n", INSTPassed, MsPassed);
				printf ("Speed: %f INST/s\n", INSTPassed * ((float) 1000 / MsPassed));
				LastInstructionCount = cpu.InstructionCount;
			}
		} else
			Press0 = 0;
		
		// Port Setting
		memset (cpu.Port, 0, sizeof(cpu.Port));
		
		// Always on bits
		cpu.Port[0] |= 1 << 1;
		cpu.Port[0] |= 1 << 2;
		cpu.Port[0] |= 1 << 3;
		cpu.Port[1] |= 1 << 3;
		
		if (keyboard[SDL_SCANCODE_SPACE]) { // P1 Fire
			cpu.Port[0] |= 1 << 4;
			cpu.Port[1] |= 1 << 4;
		}
		
		if (keyboard[SDL_SCANCODE_A]) { // P1 Left
			cpu.Port[0] |= 1 << 5;
			cpu.Port[1] |= 1 << 5;
		}
		
		if (keyboard[SDL_SCANCODE_D]) { // P1 Right
			cpu.Port[0] |= 1 << 6;
			cpu.Port[1] |= 1 << 6;
		}
		
		if (keyboard[SDL_SCANCODE_UP]) // P2 Fire
			cpu.Port[2] |= 1 << 4;
		
		if (keyboard[SDL_SCANCODE_LEFT]) // P2 Left
			cpu.Port[2] |= 1 << 5;
			
		if (keyboard[SDL_SCANCODE_RIGHT]) // P2 Right
			cpu.Port[2] |= 1 << 6;
			
		if (keyboard[SDL_SCANCODE_RETURN]) // Credit
			cpu.Port[1] |= 1 << 0;
		
		if (keyboard[SDL_SCANCODE_1]) // 1P Start
			cpu.Port[1] |= 1 << 2;
		
		if (keyboard[SDL_SCANCODE_2]) // 2P Start
			cpu.Port[1] |= 1 << 1;
		
		if (keyboard[SDL_SCANCODE_DELETE]) // Tilt
			cpu.Port[2] |= 1 << 2;
		
		// Computations
		cpu.Clock();
		if (CurrentTime - LastDraw > 1000 / 60) { // 60 FPS
			LastDraw = CurrentTime;
			Disp.Update (mmu.VRAM);
		}
	}
}