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
		uint8_t Debugging;
		void Debug ();
		uint16_t PC;
	private:
		// Memory
		MMU* mmu;
		
		// Status
		uint8_t InterruptsEnabled;
		uint8_t Halt;
		uint8_t ConsoleMode;
	
		// Work Vars
		uint16_t WorkValue;
		uint16_t reg_SHIFT;
		uint8_t ShiftOffset;
		
		// Registers
		union Register16 {
			struct {
				uint8_t low;
				uint8_t high;
			} part;
			uint16_t whole;
		};
	
		uint8_t reg_A;
		uint8_t* reg_M;
		Register16 reg_BC;
		Register16 reg_DE;
		Register16 reg_HL;
		
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