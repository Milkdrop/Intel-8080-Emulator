#ifndef CPU_H
#define CPU_H

#include <stdint.h>
#include <stdio.h>
#include "MMU.h"

class CPU {
	public:
		CPU (MMU* _mmu, uint8_t _ConsoleMode);
		void Clock ();
		void Interrupt (uint8_t ID);
		
		// I/O
		uint8_t Port[7];
	
		// Status
		uint8_t Debugging;
		uint8_t InterruptsEnabled;
		uint8_t Halt;
		uint64_t ClockCount;
		uint64_t InstructionCount;
		uint8_t ConsoleMode;
	private:
		MMU* mmu;
		
		// Ports + SpaceInvaders custom hardware
		uint16_t reg_SHIFT;
		uint8_t ShiftOffset;
	
		// Temp Vars
		uint16_t WorkValue;
		
		// Registers
		uint8_t true_reg_A;
		uint8_t* reg_A = &true_reg_A; // Pointer uniformity
	
		uint16_t reg_BC;
		uint8_t* reg_B = ((uint8_t*) &reg_BC) + 1;
		uint8_t* reg_C = ((uint8_t*) &reg_BC);
		uint16_t reg_DE;
		uint8_t* reg_D = ((uint8_t*) &reg_DE) + 1;
		uint8_t* reg_E = ((uint8_t*) &reg_DE);
		uint16_t reg_HL;
		uint8_t* reg_H = ((uint8_t*) &reg_HL) + 1;
		uint8_t* reg_L = ((uint8_t*) &reg_HL);
	
		uint16_t PC, SP;
	
		// Flags
		uint8_t FlagZSP[0x100]; // Precalculated ZSP
		uint8_t flag_Z; // Zero
		uint8_t flag_S; // Sign
		uint8_t flag_P; // Parity
		bool flag_C; // Carry
		bool flag_AC; // Auxiliar Carry
	
		// Functions - Control
		void Syscall (uint8_t ID);
		void Execute (uint8_t Instruction);
		
		// Functions - Memory Management
		uint8_t GetByteAt (uint16_t Address);
		void SetByteAt (uint16_t Address, uint8_t Value);
		uint16_t GetWordAt (uint16_t Address);
		void SetWordAt (uint16_t Address, uint16_t Value);
		void PushPSW ();
		void PopPSW ();
	
		// Functions - Stack Management
		uint16_t StackPop ();
		void StackPush (uint16_t Value);

		// Functions - Flags Management
		void SetFlagsAdd (uint8_t OpA, uint8_t OpB, uint8_t Carry, uint8_t CarryMode);
		void SetFlagsSub (uint8_t OpA, uint8_t OpB, uint8_t Carry, uint8_t CarryMode);
		void SetZSP (uint8_t Value);

		// Functions - Debugging
		void Debug ();
};

#endif