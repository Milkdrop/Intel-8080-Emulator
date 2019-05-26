#include <stdint.h>
#include "MMU.h"
#ifndef CPU_H
#define CPU_H

class CPU {
	public:
		CPU (MMU* _mmu, uint8_t _ConsoleMode);
		void Clock ();
		void Interrupt (uint8_t ID);
		uint32_t InstructionCount;
		uint8_t Port[7];
		uint32_t Benchmark[256];
		uint8_t Debugging;
		void Debug ();
		uint16_t PC;
	private:
		// Memory
		MMU* mmu;
	
		// Timing
		uint64_t ClockCount;
		uint64_t MaxClockCountPerSec;
		
		// Status
		uint8_t InterruptsEnabled;
		uint8_t Halt;
		uint8_t ConsoleMode;
		uint8_t InvalidRead;
		uint8_t InvalidWrite;
	
		// Work Vars
		uint16_t WorkValue;
		uint16_t reg_SHIFT;
		uint8_t ShiftOffset;
		
		// Registers
		uint8_t* reg_M;
		uint8_t true_reg_A;
		uint8_t* reg_A = &true_reg_A;
		uint16_t reg_BC;
		uint8_t* reg_B = ((uint8_t*) &reg_BC) + 1;
		uint8_t* reg_C = ((uint8_t*) &reg_BC);
		uint16_t reg_DE;
		uint8_t* reg_D = ((uint8_t*) &reg_DE) + 1;
		uint8_t* reg_E = ((uint8_t*) &reg_DE);
		uint16_t reg_HL;
		uint8_t* reg_H = ((uint8_t*) &reg_HL) + 1;
		uint8_t* reg_L = ((uint8_t*) &reg_HL);
		
		uint16_t SP;

		// Flags
		uint8_t flag_Z; // Zero
		uint8_t flag_S; // Sign
		uint8_t flag_P; // Parity
		uint8_t flag_C; // Carry
		uint8_t flag_AC; // Auxiliar Carry
		
		void Unknown (uint8_t Instruction);
		void Execute (uint8_t Instruction);
		void ResetFlags (uint8_t SetCarry);
		void SetFlagsAdd (uint8_t OpA, uint16_t OpB, uint8_t setCarry);
		void SetFlagsSub (uint8_t OpA, uint16_t OpB, uint8_t setCarry);
		uint8_t GetByteAt (uint16_t Address);
		uint16_t GetWordAt (uint16_t Address);
		void SetByteAt (uint16_t Address, uint8_t Value);
		void SetWordAt (uint16_t Address, uint16_t Value);
		void StackPush (uint16_t Value);
		uint16_t StackPop ();
		void PushPSW ();
		void PopPSW ();
	
		//Syscalls
		void Syscall5 ();
};

#endif