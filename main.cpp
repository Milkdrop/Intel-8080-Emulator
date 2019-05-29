#include <stdio.h>
#include <SDL2/SDL.h>
#include <time.h>
#include "Display.h"
#include "MMU.h"
#include "CPU.h"

void OpenFileError (const char* Filename) {
	printf ("\n[ERR] There was an error opening the file: %s\n", Filename);
	exit(1);
}

void LoadROMData (MMU* mmu, const char* Filename, uint16_t Address) {
	FILE* ROMData;

	ROMData = fopen (Filename, "rb");
	if (ROMData == 0)
		OpenFileError (Filename);
	
	fseek (ROMData, 0, SEEK_END);
    uint16_t ROMSize = ftell (ROMData);
    fclose (ROMData);
	ROMData = fopen (Filename, "rb");
	
	uint8_t* Buffer = (uint8_t*) malloc(ROMSize);
	
	if (fread(Buffer, 1, ROMSize, ROMData) != ROMSize)
		OpenFileError (Filename);

	mmu->LoadInMemory (Buffer, Address, ROMSize);
	free (Buffer);
    fclose (ROMData);
}

int main (int argc, char** argv) {
	if (argc != 3) {
		printf ("Please specify -ROMType ROMFileName:\n");
		printf ("\t- %s -g Demos/invaders\t\t// For Games, input the name behind the file extension.\n", argv[0]);
		printf ("\t- %s -p Demos/CPUTEST.COM\t\t\t// For Programs\n", argv[0]);
		return 1;
	}
	
	printf ("[INFO] Initializing SDL...");
	if (SDL_Init (SDL_INIT_EVERYTHING) < 0) {
		printf ("\n[ERR] SDL failed to initialize: %s", SDL_GetError());
		return 1;
	}
	printf ("OK\n");
	
	const uint8_t ConsoleMode = strcmp(argv[1], "-p") == 0;
	
	MMU mmu (ConsoleMode);
	CPU cpu (&mmu, ConsoleMode);
	Display* Disp = NULL;
	
	printf ("[INFO] Reading ROM...");
	if (ConsoleMode) {
		LoadROMData (&mmu, argv[2], 0x0100);
	} else {
		char* FName = (char*) malloc(strlen(argv[2]) + 2);
		
		strcpy(FName, argv[2]);
		strcat(FName, ".h");
		LoadROMData (&mmu, FName, 0x0000);
		
		strcpy(FName, argv[2]);
		strcat(FName, ".g");
		LoadROMData (&mmu, FName, 0x0800);
		
		strcpy(FName, argv[2]);
		strcat(FName, ".f");
		LoadROMData (&mmu, FName, 0x1000);
		
		strcpy(FName, argv[2]);
		strcat(FName, ".e");
		LoadROMData (&mmu, FName, 0x1800);
		Disp = new Display("Intel 8080", 224, 256, 2);
	}
	
	printf ("OK\n");
	
	// Timers + Loop Variables
	SDL_Event ev;
	const uint8_t *Keyboard = SDL_GetKeyboardState(NULL);
	uint32_t CurrentTime = 0;
	uint32_t LastDraw = 0;
	uint32_t LastDebugPrint = 0;
	uint32_t LastInput = 0;
	uint8_t DrawFull = 0;
	
	// Debug input controllers
	uint8_t PressDebug = 0;
	
	printf ("\n");
	while (!cpu.Halt) {
		if (!ConsoleMode) {
			CurrentTime = ((float) clock() / CLOCKS_PER_SEC) * 1000; // Get Miliseconds

			if (CurrentTime - LastDraw > 1000 / 120 || LastDraw > CurrentTime) { // 120 Hz - Manage Screen (Half screen in a cycle, then end screen in another)
				LastDraw = CurrentTime;

				if (DrawFull) {
					Disp->Update (mmu.VRAM);
					cpu.Interrupt (1);
				} else
					cpu.Interrupt (0);
				
				DrawFull = 1 - DrawFull;
			}
			
			if (CurrentTime - LastInput > 1000 / 30 || LastInput > CurrentTime) { // 30 Hz - Manage Events
				LastInput = CurrentTime;
				while (SDL_PollEvent(&ev)) {
					if (ev.type == SDL_QUIT) {
						cpu.Halt = 1;
					}
				}
				
				// Cleanup before input
				cpu.Port[0] &= 0b10001111;
				cpu.Port[1] &= 0b10001000;
				cpu.Port[2] &= 0b10001011;
				
				if (Keyboard[SDL_SCANCODE_SPACE]) { // Fire
					cpu.Port[0] |= 1 << 4;
					cpu.Port[1] |= 1 << 4;
					cpu.Port[2] |= 1 << 4; // P2
				}

				if (Keyboard[SDL_SCANCODE_A]) { // Left
					cpu.Port[0] |= 1 << 5;
					cpu.Port[1] |= 1 << 5;
					cpu.Port[2] |= 1 << 5; // P2
				}

				if (Keyboard[SDL_SCANCODE_D]) { // P1 Right
					cpu.Port[0] |= 1 << 6;
					cpu.Port[1] |= 1 << 6;
					cpu.Port[2] |= 1 << 6; // P2
				}

				if (Keyboard[SDL_SCANCODE_RETURN]) // Credit
					cpu.Port[1] |= 1 << 0;

				if (Keyboard[SDL_SCANCODE_1]) // 1P Start
					cpu.Port[1] |= 1 << 2;

				if (Keyboard[SDL_SCANCODE_2]) // 2P Start
					cpu.Port[1] |= 1 << 1;

				if (Keyboard[SDL_SCANCODE_DELETE]) // Tilt
					cpu.Port[2] |= 1 << 2;
				
				if (Keyboard[SDL_SCANCODE_0]) {
					if (PressDebug == 0) {
						PressDebug = 1;
						cpu.Debugging = 1 - cpu.Debugging;
					}
				} else
					PressDebug = 0;
			}
			
			if (CurrentTime - LastDebugPrint > 5000 || LastDebugPrint > CurrentTime) { // 5 Seconds - Manage occasional prints
				float Duration = (CurrentTime - LastDebugPrint) / 1000;
				uint64_t ClocksPerSec = cpu.ClockCount / Duration;
				LastDebugPrint = CurrentTime;
				printf ("[INFO] Running at @%f MHz (%lu Instructions Per Second)\n", (float) ClocksPerSec / 1000000, (uint64_t) (cpu.InstructionCount / Duration));
				
				cpu.ClockCount = 0;
				cpu.InstructionCount = 0;
			}
		}
		
        cpu.Clock();
	}
	
	printf ("\n\n[INFO] CPU Stopped.\n");
}
