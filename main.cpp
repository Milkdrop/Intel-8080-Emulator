#include <stdio.h>
#include <SDL2/SDL.h>
#include <time.h>
#include <chrono>
#include "Display.h"
#include "MMU.h"
#include "CPU.h"
#include "SoundChip.h"

using namespace std::chrono;

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

uint64_t GetCurrentTime (time_point <high_resolution_clock>* StartTime) {
	auto TimeDifference = high_resolution_clock::now () - *StartTime;
	return duration_cast <microseconds> (TimeDifference).count (); // Get Microseconds
}

int main (int argc, char** argv) {
	if (argc < 3) {
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
	SoundChip* soundchip = NULL;
	uint8_t SoundOn = 0;
	
	printf ("[INFO] Reading ROM...");
	if (ConsoleMode) {
		LoadROMData (&mmu, argv[2], 0x0100);
	} else {
		LoadROMData (&mmu, argv[2], 0x0000);
		Disp = new Display("Intel 8080", 224, 256, 2);
		SoundOn = 1;
		
		if (argc == 4) {
			if (strcmp(argv[3], "--no-sound") == 0)
				SoundOn = 0;
		}
	}
	
	printf ("OK\n");
	
	if (SoundOn)
		soundchip = new SoundChip;
	
	// Timers + Loop Variables
	SDL_Event ev;
	const uint8_t *Keyboard = SDL_GetKeyboardState(NULL);
	uint64_t CurrentTime = 0;
	uint64_t LastThrottle = 0;
	uint64_t LastDraw = 0;
	uint64_t LastDebugPrint = 0;
	uint64_t LastInput = 0;
	uint64_t LastSound = 0;
	uint8_t DrawFull = 0;
	uint8_t IsPlayingSound = 0;
	uint32_t ClocksPerMS = 400;
	uint64_t LastInstructionCount = 0;
	uint64_t ClockCompensation = 0;
	auto StartTime = high_resolution_clock::now ();
	
	printf ("\n");
	while (!cpu.Halt) {
		if (!ConsoleMode) {
			CurrentTime = GetCurrentTime (&StartTime);
			
			if (CurrentTime - LastThrottle <= 4000) { // Check every 4 ms
				if (cpu.InstructionCount - LastInstructionCount >= (ClocksPerMS << 2) + ClockCompensation) { // Throttle CPU
					uint32_t usToSleep = 4000 - (CurrentTime - LastThrottle); // Sleep for the rest of the 4 ms
					timespec req = {0, usToSleep * 1000};
					nanosleep (&req, (timespec *) NULL);
					LastThrottle = GetCurrentTime (&StartTime);
					LastInstructionCount = cpu.InstructionCount;
					
					ClockCompensation = (ClocksPerMS * ((LastThrottle - CurrentTime) - usToSleep)) / 1000;
				}
			} else { // Host CPU is slower or equal to i8080
				LastThrottle = CurrentTime;
				LastInstructionCount = cpu.InstructionCount;
			}
			
			if (CurrentTime - LastDraw > 1000000 / 120 || LastDraw > CurrentTime) { // 120 Hz - Manage Screen (Half screen in a cycle, then end screen in another)
				LastDraw = CurrentTime;

				if (DrawFull) {
					Disp->Update (mmu.VRAM);
					cpu.Interrupt (1);
				} else
					cpu.Interrupt (0);
				
				DrawFull = 1 - DrawFull;
			}
			
			if (CurrentTime - LastInput > 1000000 / 30 || LastInput > CurrentTime) { // 30 Hz - Manage Events
				LastInput = CurrentTime;
				while (SDL_PollEvent(&ev)) {
					if (ev.type == SDL_QUIT) {
						cpu.Halt = 1;
					}
				}
				
				// Cleanup before input
				cpu.InPort[0] &= 0b10001111;
				cpu.InPort[1] &= 0b10001000;
				cpu.InPort[2] &= 0b10001011;
				
				if (Keyboard[SDL_SCANCODE_SPACE]) { // Fire
					cpu.InPort[0] |= 1 << 4;
					cpu.InPort[1] |= 1 << 4;
					cpu.InPort[2] |= 1 << 4; // P2
				}

				if (Keyboard[SDL_SCANCODE_A] || Keyboard[SDL_SCANCODE_LEFT]) { // Left
					cpu.InPort[0] |= 1 << 5;
					cpu.InPort[1] |= 1 << 5;
					cpu.InPort[2] |= 1 << 5; // P2
				}

				if (Keyboard[SDL_SCANCODE_D] || Keyboard[SDL_SCANCODE_RIGHT]) { // Right
					cpu.InPort[0] |= 1 << 6;
					cpu.InPort[1] |= 1 << 6;
					cpu.InPort[2] |= 1 << 6; // P2
				}

				if (Keyboard[SDL_SCANCODE_RETURN]) // Credit
					cpu.InPort[1] |= 1 << 0;

				if (Keyboard[SDL_SCANCODE_1]) // 1P Start
					cpu.InPort[1] |= 1 << 2;

				if (Keyboard[SDL_SCANCODE_2]) // 2P Start
					cpu.InPort[1] |= 1 << 1;

				if (Keyboard[SDL_SCANCODE_DELETE]) // Tilt
					cpu.InPort[2] |= 1 << 2;
			}
			
			if (SoundOn && (CurrentTime - LastSound > 1000000 / 60 || LastSound > CurrentTime)) { // 30 Hz Audio
				LastSound = CurrentTime;
				
				// Check Audio
				if (cpu.OutPort[3] & (1 << 0)) { // UFO - Loop
					soundchip->PlaySound (0);
				}
				
				if (cpu.OutPort[3] & (1 << 1)) { // Shoot
					if ((IsPlayingSound & (1 << 1)) == 0)
						soundchip->PlaySound (1);
					IsPlayingSound |= 1 << 1;
				} else
					IsPlayingSound &= 0b11111101;
				
				if (cpu.OutPort[3] & (1 << 2)) { // Player Death
					if ((IsPlayingSound & (1 << 2)) == 0)
						soundchip->PlaySound (2);
					IsPlayingSound |= 1 << 2;
				} else
					IsPlayingSound &= 0b11111011;
				
				if (cpu.OutPort[3] & (1 << 3)) { // Invader Death
					if ((IsPlayingSound & (1 << 3)) == 0)
						soundchip->PlaySound (3);
					IsPlayingSound |= 1 << 3;
				} else
					IsPlayingSound &= 0b11110111;
				
				if (cpu.OutPort[5] & (1 << 0)) { // Fleet 1
					if ((IsPlayingSound & (1 << 4)) == 0)
						soundchip->PlaySound (4);
					IsPlayingSound |= 1 << 4;
				} else
					IsPlayingSound &= 0b11101111;
				
				if (cpu.OutPort[5] & (1 << 1)) { // Fleet 2
					if ((IsPlayingSound & (1 << 5)) == 0)
						soundchip->PlaySound (5);
					IsPlayingSound |= 1 << 5;
				} else
					IsPlayingSound &= 0b11011111;
				
				if (cpu.OutPort[5] & (1 << 2)) { // Fleet 3
					if ((IsPlayingSound & (1 << 6)) == 0)
						soundchip->PlaySound (6);
					IsPlayingSound |= 1 << 6;
				} else
					IsPlayingSound &= 0b10111111;
				
				if (cpu.OutPort[5] & (1 << 3)) { // Fleet 4
					if ((IsPlayingSound & (1 << 7)) == 0)
						soundchip->PlaySound (7);
					IsPlayingSound |= 1 << 7;
				} else
					IsPlayingSound &= 0b01111111;
			}
			
			if (CurrentTime - LastDebugPrint > 5000000 || LastDebugPrint > CurrentTime) { // 5 Seconds - Manage occasional prints
				float Duration = (CurrentTime - LastDebugPrint) / 1000000;
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
