#include <cstring>
#include <stdio.h>
#include "MMU.h"

MMU::MMU() {
	memset (Memory, 0, sizeof(Memory));
	
	for (int i = 0x0000; i < 0x4000; i++) { // ROM + RAM + VRAM
		MemoryMap[i] = Memory + i;
	}
	
	for (int i = 0x4000; i < 0x4400; i++) { // Mirrored RAM
		MemoryMap[i] = Memory + i - 0x2000;
	}
}

void MMU::LoadInMemory (uint8_t* Buffer, uint16_t Address, int BufferSize) {
	for (int i = 0; i < BufferSize; i++)
		*(MemoryMap[Address + i]) = Buffer[i];
}

uint8_t MMU::GetByteAt (uint16_t Address) {
	return *(MemoryMap[Address]);
}

void MMU::SetByteAt (uint16_t Address, uint8_t Value) {
	*(MemoryMap[Address]) = Value;
}