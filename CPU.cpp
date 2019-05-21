#include <string>
#include "CPU.h"

CPU::CPU (MMU* _mmu, int _ClockSpeed) {
	// Set variables
	ClockSpeed = _ClockSpeed;
	mmu = _mmu;

	// Set registers
	reg_A = 0;
	reg_BC = 0;
	reg_DE = 0;
	reg_HL = 0;
	SP = 0;
	PC = 0;
	flag_S = 0;
	flag_Z = 0;
	flag_P = 0;
	flag_C = 0;
	flag_AC = 0;
}

inline uint8_t CPU::GetByteAt (uint16_t Address) {
	return *(mmu->MemoryMap [Address]);
}

uint8_t* CPU::GetReg (uint8_t ID) {
	switch (ID) {
		case 0: return reg_B;
		case 1: return reg_C;
		case 2: return reg_D;
		case 3: return reg_E;
		case 4: return reg_H;
		case 5: return reg_L;
		case 6: return mmu->MemoryMap [reg_HL];
		case 7: return &reg_A;
		default: return NULL;
	}
}

uint16_t* CPU::GetRegPair (uint8_t ID) {
	switch (ID) {
		case 0: return &reg_BC;
		case 1: return &reg_DE;
		case 2: return &reg_HL;
		case 3: return &SP;
		default: return NULL; 
	}
}

void CPU::Clock () {
	uint8_t Instruction = GetByteAt (PC);
	
	switch (Instruction) {
	}
}