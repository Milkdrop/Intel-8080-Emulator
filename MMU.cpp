#include <cstring>
#include <stdio.h>
#include "MMU.h"

void MMU::LoadInMemory (uint8_t* Buffer, uint16_t Address, int BufferSize) {
	for (int i = 0; i < BufferSize; i++)
		*(MemoryMap[i]) = Buffer[i];
}

MMU::MMU() {
	memset (Memory, 0, sizeof(Memory));
	
	for (int i = 0x0000; i < 0x4000; i++) { // ROM + RAM + VRAM
		MemoryMap[i] = Memory + i;
	}
	
	for (int i = 0x4000; i < 0x4400; i++) { // Mirrored RAM
		MemoryMap[i] = Memory + i - 0x2000;
	}
}