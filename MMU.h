#include <stdint.h>
#ifndef MMU_H
#define MMU_H

class MMU {
	public:
		MMU (uint8_t ConsoleMode);

		// Memory Layout
		/*
			ROM:			0x0000 - 0x1FFF
			RAM:			0x2000 - 0x23FF
			VRAM:			0x2400 - 0x3FFF
			RAMMirror:	0x4000 - 0x43FF
		*/

		uint16_t ROMAddress = 0x0000;
		uint16_t RAMAddress = 0x2000;
		uint16_t VRAMAddress = 0x2400;
		uint16_t RAMMirrorAddress = 0x4000;
		
		// Convenience Pointers
		uint8_t* VRAM = Memory + VRAMAddress;
	
		uint8_t* MemoryMap[0x10000]; // 64K
		void LoadInMemory (uint8_t* Buffer, uint16_t Address, int BufferSize);
	private:
		uint8_t JunkValue;
		uint8_t Memory[0x10000];
};

#endif