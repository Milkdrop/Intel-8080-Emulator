#include <stdint.h>
#include "MMU.h"

class CPU {
	public:
		CPU (MMU* _mmu, int _ClockSpeed);
		void Clock ();
	private:
		int ClockSpeed;
		MMU* mmu;
		
		uint8_t Interrupts;
		uint8_t Halt;
		
		uint16_t WorkAddr;
		uint32_t WorkValue;

		uint8_t reg_A;
		uint16_t reg_M;

		uint16_t reg_BC;
		uint8_t* reg_B = ((uint8_t*) &reg_BC) + 1;
		uint8_t* reg_C = ((uint8_t*) &reg_BC);
		uint16_t reg_DE;
		uint8_t* reg_D = ((uint8_t*) &reg_DE);
		uint8_t* reg_E = ((uint8_t*) &reg_DE);
		uint16_t reg_HL;
		uint8_t* reg_H = ((uint8_t*) &reg_HL) + 1;
		uint8_t* reg_L = ((uint8_t*) &reg_HL);

		uint16_t SP;
		uint16_t PC;

		uint8_t flag_Z; // Zero
		uint8_t flag_S; // Sign
		uint8_t flag_P; // Parity
		uint8_t flag_C; // Carry
		uint8_t flag_AC; // Auxiliar Carry
		
		void Debug ();
		void ResetFlags ();
		void SetFlagsAdd (uint8_t OpA, uint16_t OpB, uint8_t setCarry);
		void SetFlagsSub (uint8_t OpA, uint16_t OpB, uint8_t setCarry);
		uint8_t GetCondition (uint8_t ID);
		uint8_t GetByteAt (uint16_t Address);
		void SetByteAt (uint16_t Address, uint8_t Value);
		uint8_t* GetReg (uint8_t ID);
		uint16_t* GetRegPair (uint8_t ID);
		uint16_t GetInstructionLBHB ();
		void StackPush (uint16_t Value);
		uint16_t StackPop ();
		void PushPSW ();
		void PopPSW ();
};