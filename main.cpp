#include <stdio.h>
#include <SDL2/SDL.h>
#include <string>
#include <time.h>
#include <cstring>
#include <algorithm>
#include <iostream>
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

	ROMData = fopen (Filename.c_str(), "rb");
	if (ROMData == 0)
		OpenFileError (Filename);
	
	fseek (ROMData, 0, SEEK_END);
    uint16_t ROMSize = ftell (ROMData);
    fclose (ROMData);
	ROMData = fopen (Filename.c_str(), "rb");
	
	uint8_t* Buffer = (uint8_t*) malloc(ROMSize);
	
	if (fread(Buffer, 1, ROMSize, ROMData) != ROMSize)
		OpenFileError (Filename);

	mmu->LoadInMemory (Buffer, Address, ROMSize);
	free (Buffer);
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
		fprintf (stderr, "SDL failed to initialize: %s", SDL_GetError());
		return 1;
	}
	
	if (argc != 3) {
		fprintf (stderr, "Please specify -ROMType ROMFileName:\n");
		fprintf (stderr, "\t- %s -g Demos/invaders/invadersfull\t// For Games, input the entire 8K ROM\n", argv[0]);
		fprintf (stderr, "\t- %s -p Demos/CPUTEST.COM\t\t\t// For Programs\n", argv[0]);
		exit (1);
	}
	
	uint8_t ConsoleMode = 0;
	MMU* mmu = NULL;
	CPU* cpu = NULL;
	
	if (strcmp(argv[1], "-g") == 0) {
		mmu = new MMU (0);
		cpu = new CPU(mmu, 0);
		LoadROMData (mmu, argv[2], 0x0000);
	} else if (strcmp(argv[1], "-p") == 0) {
		mmu = new MMU (1);
		cpu = new CPU(mmu, 1);
		LoadROMData (mmu, argv[2], 0x0100);
		ConsoleMode = 1;
	}
	
	Display Disp("Intel 8080", 224, 256, 2);
	
	bool DrawFull = false;
	uint8_t StepMode = 0;
	uint32_t LastDraw = 0;
	uint32_t LastDebug = 0;
	uint32_t LastInstructionCount = 0;
	uint32_t CurrentTime = 0;
	const uint8_t *keyboard = SDL_GetKeyboardState(NULL);
	uint8_t Press0 = 0;
	uint8_t PressActivateStep = 0;
	uint8_t PressStep = 0;
	uint8_t Step = 0;
	
	SDL_Event ev;
	uint8_t quit = 0;
	
	while (!quit) {
		// Time Checking
		CurrentTime = ((float) clock() / CLOCKS_PER_SEC) * 1000; // Get Miliseconds
		if (LastDraw > CurrentTime) // Overflow Protection
			LastDraw = 0;
	
		if (CurrentTime - LastDraw > 1000) {
			LastDraw = CurrentTime;
			while (SDL_PollEvent(&ev)) {
				if (ev.type == SDL_QUIT) {
					quit = 1;
				}
			}
		}
	
		// Debugging Function
		if (keyboard[SDL_SCANCODE_0]) {
			if (Press0 == 0) {
				Press0 = 1;
				
				cpu->Debug();
				std::pair<uint8_t, uint32_t> Benchmark[256];
				for (int i = 0; i < 256; i++) {
					Benchmark[i].first = i;
					Benchmark[i].second = cpu->Benchmark[i];
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
				uint32_t INSTPassed = cpu->InstructionCount - LastInstructionCount;
				LastDebug = CurrentTime;
				printf ("Executed %d INST in %dms\n", INSTPassed, MsPassed);
				printf ("Speed: %f INST/s\n", INSTPassed * ((float) 1000 / MsPassed));
				LastInstructionCount = cpu->InstructionCount;
				cpu->Debugging = 1 - cpu->Debugging;
			}
		} else
			Press0 = 0;
		
		if (keyboard[SDL_SCANCODE_ESCAPE]) {
			if (PressActivateStep == 0) {
				PressActivateStep = 1;
				StepMode = 1 - StepMode;
				
				if (StepMode)
					printf ("Debug Stepping Activated. Press TAB to move to the next instruction\n");
				else
					printf ("Debug Stepping Deactivated.\n");
			}
		} else
			PressActivateStep = 0;
		
		if (StepMode) {
			if (keyboard[SDL_SCANCODE_TAB]) {
				if (PressStep == 0) {
					PressStep = 1;
					Step = 1;
				}
			} else
				PressStep = 0;
		}
		
		// Port Setting
		memset (cpu->Port, 0, sizeof(cpu->Port));
		
		// Always on bits
		cpu->Port[0] |= 1 << 1;
		cpu->Port[0] |= 1 << 2;
		cpu->Port[0] |= 1 << 3;
		cpu->Port[1] |= 1 << 3;
		
		if (!ConsoleMode) {
			if (keyboard[SDL_SCANCODE_SPACE]) { // Fire
				cpu->Port[0] |= 1 << 4;
				cpu->Port[1] |= 1 << 4;
				cpu->Port[2] |= 1 << 4; // P2
			}

			if (keyboard[SDL_SCANCODE_A]) { // Left
				cpu->Port[0] |= 1 << 5;
				cpu->Port[1] |= 1 << 5;
				cpu->Port[2] |= 1 << 5; // P2
			}

			if (keyboard[SDL_SCANCODE_D]) { // P1 Right
				cpu->Port[0] |= 1 << 6;
				cpu->Port[1] |= 1 << 6;
				cpu->Port[2] |= 1 << 6; // P2
			}

			if (keyboard[SDL_SCANCODE_RETURN]) // Credit
				cpu->Port[1] |= 1 << 0;

			if (keyboard[SDL_SCANCODE_1]) // 1P Start
				cpu->Port[1] |= 1 << 2;

			if (keyboard[SDL_SCANCODE_2]) // 2P Start
				cpu->Port[1] |= 1 << 1;

			if (keyboard[SDL_SCANCODE_DELETE]) // Tilt
				cpu->Port[2] |= 1 << 2;
		}
		
		// Computations
		if (!StepMode || (StepMode && Step)) {
			Step = 0;
			//if (cpu->PC == 0x05BA && false) // Breakpoint
			//	StepMode = 1;
			cpu->Clock();
			
			if (StepMode)
				cpu->Debug();
		}
		
		if (!ConsoleMode && CurrentTime - LastDraw > 1000 / 120) { // 60 Hz
			LastDraw = CurrentTime;
			
			if (DrawFull) {
				Disp.Update (mmu->VRAM);
				if (!StepMode)
					cpu->Interrupt (1);
			} else {
				if (!StepMode)
					cpu->Interrupt (0);
			}
			DrawFull = !DrawFull;
		}
	}
}