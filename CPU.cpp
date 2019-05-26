#include <string>
#include <stdio.h>
#include <string.h>
#include "CPU.h"

CPU::CPU (MMU* _mmu, uint8_t _ConsoleMode) {
	ConsoleMode = _ConsoleMode;
	ClockCount = 0;
	InstructionCount = 0;
	mmu = _mmu;
	
	memset (Port, 0, sizeof(Port));
	
	reg_SHIFT = 0;
	ShiftOffset = 0;
	InvalidRead = 0;
	InvalidWrite = 0;
	
	memset (Benchmark, 0, sizeof(uint32_t) * 256);
	InterruptsEnabled = 0;
	Debugging = 0;
	Halt = 0;
	true_reg_A = 0;
	reg_BC = 0;
	reg_DE = 0;
	reg_HL = 0;
	SP = 0x2400;
	PC = 0;
	ResetFlags (1);
	
	if (ConsoleMode) {
		PC = 0x100;
		SetByteAt (0x5, 0b11001001); // Place RET for Syscall
		SetByteAt (0x6, 0xFF); // LB Available RAM
		SetByteAt (0x7, 0xFF); // HB Available RAM
	}
}

const uint8_t OpcodeCycleCount[] = {
//  0   1   2   3   4   5   6   7   8   9   A   B   C   D   E   F
    4,  10, 7,  5,  5,  5,  7,  4,  4,  10, 7,  5,  5,  5,  7,  4,  // 0
    4,  10, 7,  5,  5,  5,  7,  4,  4,  10, 7,  5,  5,  5,  7,  4,  // 1
    4,  10, 16, 5,  5,  5,  7,  4,  4,  10, 16, 5,  5,  5,  7,  4,  // 2
    4,  10, 13, 5,  10, 10, 10, 4,  4,  10, 13, 5,  5,  5,  7,  4,  // 3
    5,  5,  5,  5,  5,  5,  7,  5,  5,  5,  5,  5,  5,  5,  7,  5,  // 4
    5,  5,  5,  5,  5,  5,  7,  5,  5,  5,  5,  5,  5,  5,  7,  5,  // 5
    5,  5,  5,  5,  5,  5,  7,  5,  5,  5,  5,  5,  5,  5,  7,  5,  // 6
    7,  7,  7,  7,  7,  7,  7,  7,  5,  5,  5,  5,  5,  5,  7,  5,  // 7
    4,  4,  4,  4,  4,  4,  7,  4,  4,  4,  4,  4,  4,  4,  7,  4,  // 8
    4,  4,  4,  4,  4,  4,  7,  4,  4,  4,  4,  4,  4,  4,  7,  4,  // 9
    4,  4,  4,  4,  4,  4,  7,  4,  4,  4,  4,  4,  4,  4,  7,  4,  // A
    4,  4,  4,  4,  4,  4,  7,  4,  4,  4,  4,  4,  4,  4,  7,  4,  // B
    5,  10, 10, 10, 11, 11, 7,  11, 5,  10, 10, 10, 11, 11, 7,  11, // C
    5,  10, 10, 10, 11, 11, 7,  11, 5,  10, 10, 10, 11, 11, 7,  11, // D
    5,  10, 10, 18, 11, 11, 7,  11, 5,  5,  10, 5,  11, 11, 7,  11, // E
    5,  10, 10, 4,  11, 11, 7,  11, 5,  5,  10, 4,  11, 11, 7,  11  // F
};

inline void CPU::Syscall5 () {
	if (*reg_C == 2) {
		printf ("%c", *reg_E);	
	} else if (*reg_C == 9) {
		for (int i = reg_DE; GetByteAt(i) != 0x24; i++) {
			printf ("%c", GetByteAt (i));	
		}
	}
	fflush(stdout);
}

inline void CPU::Unknown (uint8_t Instruction) {
	//Debug();
	//Halt = true;
	fprintf (stderr, "Unknown Instruction: 0x%02x at 0x%04x\n", Instruction, PC);
}

inline uint8_t CPU::GetByteAt (uint16_t Address) {
	if (Address >= 0x4400 && ConsoleMode == 0) {
		Debugging = 0;
		printf ("Reading invalid Address: 0x%04x\n", Address);
		return 0;
	}
	return *(mmu->MemoryMap[Address]);
}

inline void CPU::SetByteAt (uint16_t Address, uint8_t Value) {
	//printf ("Writing at 0x%04x: 0x%02x\n", Address, Value);
	if ((Address < 0x2000 || Address >= 0x4400) && ConsoleMode == 0) {
		Debugging = 0;
		printf ("Writing to Weird Address: 0x%04x\n", Address);
		return;
	}
	
	*(mmu->MemoryMap[Address]) = Value;
}

inline uint16_t CPU::GetWordAt (uint16_t Address) {
	if (Address >= 0x4400 && ConsoleMode == 0) {
		Debugging = 0;
		printf ("Reading invalid Address: 0x%04x (Word)\n", Address);
		return 0;
	}
	
	return GetByteAt(Address) | (GetByteAt (Address + 1) << 8);
}

inline void CPU::SetWordAt (uint16_t Address, uint16_t Value) {
	if ((Address < 0x2000 || Address >= 0x4400) && ConsoleMode == 0) {
		Debugging = 0;
		printf ("Writing to Weird Address: 0x%04x (Word)\n", Address);
		return;
	}
	SetByteAt (Address, Value & 0xFF);
	SetByteAt (Address + 1, Value >> 8);
}

inline void CPU::ResetFlags (uint8_t SetCarry) {
	flag_Z = 0;
	flag_S = 0;
	flag_P = 0;
	if (SetCarry != 0)
		flag_C = 0;
	if (SetCarry != 2)
		flag_AC = 0;
}

inline void CPU::SetFlagsAdd (uint8_t OpA, uint16_t OpB, uint8_t SetCarry) {
	// SetCarry = 0 - AC, 1 - C and AC, 2 - C, 3 None
	ResetFlags(SetCarry);
	
	uint16_t Result = OpA + OpB;

	if (SetCarry != 3 && SetCarry != 0 && Result > 0xFF)
		flag_C = 1;
	Result &= 0xFF;
	if (Result == 0)
		flag_Z = 1;
	if (Result & 128)
		flag_S = 1;
	
	uint8_t Bit1Count = 0;
	for (int i = 0; i < 8; i++) {
		if (((Result >> i) & 1) == 1)
			Bit1Count++;
	}
	if ((Bit1Count & 1) == 0)
		flag_P = 1;
	
	if (SetCarry != 3 && SetCarry != 2 && ((OpA & 8) == 8 || (OpB & 8) == 8) && (Result & 8) == 0) {
		flag_AC = 1;
	}
}

inline void CPU::SetFlagsSub (uint8_t OpA, uint16_t OpB, uint8_t SetCarry) {
	ResetFlags(SetCarry);
	uint8_t Result = OpA - OpB;

	if (SetCarry != 3 && SetCarry != 0 && OpA < OpB)
		flag_C = 1;
	if (Result == 0)
		flag_Z = 1;
	if (Result & 128)
		flag_S = 1;
	
	uint8_t Bit1Count = 0;
	for (int i = 0; i < 8; i++) {
		if (((Result >> i) & 1) == 1)
			Bit1Count++;
	}
	if ((Bit1Count & 1) == 0)
		flag_P = 1;
	
	if (SetCarry != 3 && SetCarry != 2 && ((OpA & 8) == 8 || (OpB & 8) == 8) && (Result & 8) == 0)
		flag_AC = 1;
}

void CPU::Debug () {
	printf ("\nRegisters: --------------------------------\n");
	printf ("A: 0x%02x\n", *reg_A);
	printf ("B: 0x%02x\n", *reg_B);
	printf ("C: 0x%02x\n", *reg_C);
	printf ("D: 0x%02x\n", *reg_D);
	printf ("E: 0x%02x\n", *reg_E);
	printf ("H: 0x%02x\n", *reg_H);
	printf ("L: 0x%02x\n", *reg_L);
	printf ("M: ");
	//if (reg_HL < 0x4400)
		//printf ("0x%02x", *reg_M);
	//else
	printf ("0x??");
	printf ("\n");
	printf ("SP: 0x%04x\n", SP);
	printf ("PC: 0x%04x\n", PC);

	printf ("\nRegister Pairs: --------------------------------\n");
	printf ("BC: 0x%04x\n", reg_BC);
	printf ("DE: 0x%04x\n", reg_DE);
	printf ("HL: 0x%04x\n", reg_HL);

	printf ("\nFlags: --------------------------------\n");
	printf ("Z : 0x%02x\n", flag_Z);
	printf ("S : 0x%02x\n", flag_S);
	printf ("P : 0x%02x\n", flag_P);
	printf ("C : 0x%02x\n", flag_C);
	printf ("AC: 0x%02x\n", flag_AC);

	printf ("\n");
}

inline void CPU::StackPush (uint16_t Value) {
	SP -= 2;
	SetWordAt (SP, Value);
	if (SP < 0x2300 && ConsoleMode == 0) {
		printf ("Stack Dangerously Low\n");
	}
	//printf ("Pushing on Stack: 0x%04x: 0x%02x / 0x%04x: 0x%02x\n", SP - 1, Value & 0xFF, SP - 2, Value >> 8);
}

inline uint16_t CPU::StackPop () {
	uint16_t Value = GetWordAt (SP);
	//printf ("Popping from Stack: 0x%04x: 0x%02x / 0x%04x: 0x%02x = ", SP, GetByteAt (SP), SP + 1, GetByteAt (SP + 1));
	//printf ("0x%04x\n", Value);
	SP += 2;
	return Value;
}

inline void CPU::PushPSW () {
	uint16_t PSW = ((uint16_t) *reg_A) << 8;
	PSW |= flag_C;
	PSW |= 1 << 1;
	PSW |= flag_P << 2;
	PSW |= 0 << 3;
	PSW |= flag_AC << 4;
	PSW |= 0 << 5;
	PSW |= flag_Z << 6;
	PSW |= flag_S << 7;
	
	StackPush (PSW);
}

void CPU::PopPSW () {
	uint16_t PSW = StackPop();
	*reg_A = PSW >> 8;
	flag_C = PSW & 1;
	flag_P = (PSW >> 2) & 1;
	flag_AC = (PSW >> 4) & 1;
	flag_Z = (PSW >> 6) & 1;
	flag_S = (PSW >> 7) & 1;
}

void CPU::Interrupt (uint8_t ID) {
	if (!InterruptsEnabled || ConsoleMode == 1)
		return;
	
	if (Halt) {
		printf ("CPU is HALTed.\n");
		return;
	}
	
	if (Debugging) {
		printf ("Interrupt: %d\n", ID);	
	}
	
	Execute (0b11110011); // Disable Interrupts. By analyzing the code, it appears they are
						  // automatically re-enabled after the INT has finished
	
	switch (ID) {
		case 0: // Mid Screen - RST 1
			Execute (0b11001111);
			break;
		case 1: // End Screen - RST 2
			Execute (0b11010111);
	}
}

void CPU::Clock () {
	if (Halt)
		return;
	
	InstructionCount++;
	uint8_t Instruction = GetByteAt (PC);
	//ClockCount += OpcodeCycleCount [Instruction];
	Benchmark[Instruction]++;
	
	PC++;
	Execute (Instruction);
}

inline void CPU::Execute (uint8_t Instruction) {
	if (Debugging) {
		//printf ("INST 0x%04x 0x%02x / ", PC - 1, Instruction);
		//printf ("M: 0x%04x\n", reg_HL);
	}
	
	if (reg_HL < 0x4400) {
		reg_M = mmu->MemoryMap [reg_HL];
		InvalidRead = 0;
		InvalidWrite = 0;
		
		//if (reg_HL < 0x500)
		//	InvalidWrite = 1;
	} else {
		InvalidRead = 1;
		InvalidWrite = 1;
	}
	
	if (ConsoleMode) {
		if (PC == 0x1) {
			Halt = true;
		}
		
		if (PC == 0x6) {
			Syscall5 ();
			//Debugging = 1;
		}
	}
	
	switch (Instruction) {
		case 0b00000000: break; // NOP
		case 0b00000001: reg_BC = GetWordAt (PC); PC += 2; break; // LXI RP, #
		case 0b00010001: reg_DE = GetWordAt (PC); PC += 2; break; // LXI RP, #
		case 0b00100001: reg_HL = GetWordAt (PC); PC += 2; break; // LXI RP, #
		case 0b00110001: SP = GetWordAt (PC); PC += 2; break; // LXI RP, #
			
		case 0b00000010: SetByteAt (reg_BC, *reg_A); break; // STAX RP
		case 0b00010010: SetByteAt (reg_DE, *reg_A); break; // STAX RP
			
		case 0b00000011: reg_BC++; break; // INX RP
		case 0b00010011: reg_DE++; break; // INX RP
		case 0b00100011: reg_HL++; break; // INX RP
		case 0b00110011: SP++; break; // INX RP
			
		case 0b00000100: SetFlagsAdd (*reg_B, 1, 0); *reg_B += 1; break; // INR D
		case 0b00001100: SetFlagsAdd (*reg_C, 1, 0); *reg_C += 1; break; // INR D
		case 0b00010100: SetFlagsAdd (*reg_D, 1, 0); *reg_D += 1; break; // INR D
		case 0b00011100: SetFlagsAdd (*reg_E, 1, 0); *reg_E += 1; break; // INR D
		case 0b00100100: SetFlagsAdd (*reg_H, 1, 0); *reg_H += 1; break; // INR D
		case 0b00101100: SetFlagsAdd (*reg_L, 1, 0); *reg_L += 1; break; // INR D
		case 0b00110100: SetFlagsAdd (*reg_M, 1, 0); *reg_M += 1; break; // INR D
		case 0b00111100: SetFlagsAdd (*reg_A, 1, 0); *reg_A += 1; break; // INR D
			
		case 0b00000101: SetFlagsSub (*reg_B, 1, 0); *reg_B -= 1; break; // DCR D
		case 0b00001101: SetFlagsSub (*reg_C, 1, 0); *reg_C -= 1; break; // DCR D
		case 0b00010101: SetFlagsSub (*reg_D, 1, 0); *reg_D -= 1; break; // DCR D
		case 0b00011101: SetFlagsSub (*reg_E, 1, 0); *reg_E -= 1; break; // DCR D
		case 0b00100101: SetFlagsSub (*reg_H, 1, 0); *reg_H -= 1; break; // DCR D
		case 0b00101101: SetFlagsSub (*reg_L, 1, 0); *reg_L -= 1; break; // DCR D
		case 0b00110101: SetFlagsSub (*reg_M, 1, 0); *reg_M -= 1; break; // DCR D
		case 0b00111101: SetFlagsSub (*reg_A, 1, 0); *reg_A -= 1; break; // DCR D
			
		case 0b00000110: *reg_B = GetByteAt(PC++); break; // MVI D, #
		case 0b00001110: *reg_C = GetByteAt(PC++); break; // MVI D, #
		case 0b00010110: *reg_D = GetByteAt(PC++); break; // MVI D, #
		case 0b00011110: *reg_E = GetByteAt(PC++); break; // MVI D, #
		case 0b00100110: *reg_H = GetByteAt(PC++); break; // MVI D, #
		case 0b00101110: *reg_L = GetByteAt(PC++); break; // MVI D, #
		case 0b00110110: *reg_M = GetByteAt(PC++); break; // MVI D, #
		case 0b00111110: *reg_A = GetByteAt(PC++); break; // MVI D, #
			
		case 0b00000111: WorkValue = (*reg_A & 128) >> 7; *reg_A <<= 1; flag_C = WorkValue; *reg_A |= WorkValue; break; // RLC
		case 0b00001111: WorkValue = *reg_A & 1; *reg_A >>= 1; flag_C = WorkValue; *reg_A |= WorkValue << 7; break; // RRC
		case 0b00001001: flag_C = ((uint32_t) reg_HL + reg_BC) > 0xFFFF; reg_HL += reg_BC; break; // DAD RP
		case 0b00011001: flag_C = ((uint32_t) reg_HL + reg_DE) > 0xFFFF; reg_HL += reg_DE; break; // DAD RP
		case 0b00101001: flag_C = ((uint32_t) reg_HL + reg_HL) > 0xFFFF; reg_HL += reg_HL; break; // DAD RP
		case 0b00111001: flag_C = ((uint32_t) reg_HL + SP) > 0xFFFF; reg_HL += SP; break; // DAD RP
		
		case 0b00001010: *reg_A = GetByteAt(reg_BC); break; // LDAX RP
		case 0b00011010: *reg_A = GetByteAt(reg_DE); break; // LDAX RP
		
		case 0b00001011: reg_BC--; break; // DCX RP
		case 0b00011011: reg_DE--; break; // DCX RP
		case 0b00101011: reg_HL--; break; // DCX RP
		case 0b00111011: SP--; break; // DCX RP
		
		case 0b00010111: WorkValue = flag_C; flag_C = (*reg_A & 128) >> 7; *reg_A <<= 1; *reg_A |= WorkValue; break; // RAL
		case 0b00011111: WorkValue = flag_C; flag_C = *reg_A & 1; *reg_A >>= 1; *reg_A |= WorkValue << 7; break; // RAR
			
		case 0b00100010: WorkValue = GetWordAt (PC); PC += 2; SetByteAt (WorkValue, *reg_L); SetByteAt (WorkValue + 1, *reg_H); break; // SHLD
		case 0b00101010: WorkValue = GetWordAt (PC); PC += 2; *reg_L = GetByteAt(WorkValue); *reg_H = GetByteAt (WorkValue + 1); break; // LHLD
			
		case 0b00100111: if ((*reg_A & 0xF) > 9 || flag_AC) {SetFlagsAdd (*reg_A, 6, 0); *reg_A += 0x06;} if ((*reg_A >> 4) > 9 || flag_C) {SetFlagsAdd (*reg_A, 0x60, 1); *reg_A += 0x60;} break; // DAA
			
		case 0b00101111: *reg_A = ~*reg_A; break; // CMA
		case 0b00111111: flag_C = 1 - flag_C; break; // CMC
			
		case 0b00110010: SetByteAt (GetWordAt (PC), *reg_A); PC += 2; break; // STA A
		case 0b00111010: *reg_A = GetByteAt(GetWordAt (PC)); PC += 2; break; // LDA a
			
		case 0b00110111: flag_C = 1; break; // STC
			
		case 0b01000000: *reg_B = *reg_B; break; // MOV D, S
		case 0b01000001: *reg_B = *reg_C; break; // MOV D, S
		case 0b01000010: *reg_B = *reg_D; break; // MOV D, S
		case 0b01000011: *reg_B = *reg_E; break; // MOV D, S
		case 0b01000100: *reg_B = *reg_H; break; // MOV D, S
		case 0b01000101: *reg_B = *reg_L; break; // MOV D, S
		case 0b01000110: *reg_B = *reg_M; break; // MOV D, S
		case 0b01000111: *reg_B = *reg_A; break; // MOV D, S
		case 0b01001000: *reg_C = *reg_B; break; // MOV D, S
		case 0b01001001: *reg_C = *reg_C; break; // MOV D, S
		case 0b01001010: *reg_C = *reg_D; break; // MOV D, S
		case 0b01001011: *reg_C = *reg_E; break; // MOV D, S
		case 0b01001100: *reg_C = *reg_H; break; // MOV D, S
		case 0b01001101: *reg_C = *reg_L; break; // MOV D, S
		case 0b01001110: *reg_C = *reg_M; break; // MOV D, S
		case 0b01001111: *reg_C = *reg_A; break; // MOV D, S
		case 0b01010000: *reg_D = *reg_B; break; // MOV D, S
		case 0b01010001: *reg_D = *reg_C; break; // MOV D, S
		case 0b01010010: *reg_D = *reg_D; break; // MOV D, S
		case 0b01010011: *reg_D = *reg_E; break; // MOV D, S
		case 0b01010100: *reg_D = *reg_H; break; // MOV D, S
		case 0b01010101: *reg_D = *reg_L; break; // MOV D, S
		case 0b01010110: *reg_D = *reg_M; break; // MOV D, S
		case 0b01010111: *reg_D = *reg_A; break; // MOV D, S
		case 0b01011000: *reg_E = *reg_B; break; // MOV D, S
		case 0b01011001: *reg_E = *reg_C; break; // MOV D, S
		case 0b01011010: *reg_E = *reg_D; break; // MOV D, S
		case 0b01011011: *reg_E = *reg_E; break; // MOV D, S
		case 0b01011100: *reg_E = *reg_H; break; // MOV D, S
		case 0b01011101: *reg_E = *reg_L; break; // MOV D, S
		case 0b01011110: *reg_E = *reg_M; break; // MOV D, S
		case 0b01011111: *reg_E = *reg_A; break; // MOV D, S
		case 0b01100000: *reg_H = *reg_B; break; // MOV D, S
		case 0b01100001: *reg_H = *reg_C; break; // MOV D, S
		case 0b01100010: *reg_H = *reg_D; break; // MOV D, S
		case 0b01100011: *reg_H = *reg_E; break; // MOV D, S
		case 0b01100100: *reg_H = *reg_H; break; // MOV D, S
		case 0b01100101: *reg_H = *reg_L; break; // MOV D, S
		case 0b01100110: *reg_H = *reg_M; break; // MOV D, S
		case 0b01100111: *reg_H = *reg_A; break; // MOV D, S
		case 0b01101000: *reg_L = *reg_B; break; // MOV D, S
		case 0b01101001: *reg_L = *reg_C; break; // MOV D, S
		case 0b01101010: *reg_L = *reg_D; break; // MOV D, S
		case 0b01101011: *reg_L = *reg_E; break; // MOV D, S
		case 0b01101100: *reg_L = *reg_H; break; // MOV D, S
		case 0b01101101: *reg_L = *reg_L; break; // MOV D, S
		case 0b01101110: *reg_L = *reg_M; break; // MOV D, S
		case 0b01101111: *reg_L = *reg_A; break; // MOV D, S
		case 0b01110000: *reg_M = *reg_B; break; // MOV D, S
		case 0b01110001: *reg_M = *reg_C; break; // MOV D, S
		case 0b01110010: *reg_M = *reg_D; break; // MOV D, S
		case 0b01110011: *reg_M = *reg_E; break; // MOV D, S
		case 0b01110100: *reg_M = *reg_H; break; // MOV D, S
		case 0b01110101: *reg_M = *reg_L; break; // MOV D, S
		case 0b01110110: Halt = true; break; // HLT
		case 0b01110111: *reg_M = *reg_A; break; // MOV D, S
		case 0b01111000: *reg_A = *reg_B; break; // MOV D, S
		case 0b01111001: *reg_A = *reg_C; break; // MOV D, S
		case 0b01111010: *reg_A = *reg_D; break; // MOV D, S
		case 0b01111011: *reg_A = *reg_E; break; // MOV D, S
		case 0b01111100: *reg_A = *reg_H; break; // MOV D, S
		case 0b01111101: *reg_A = *reg_L; break; // MOV D, S
		case 0b01111110: *reg_A = *reg_M; break; // MOV D, S
		case 0b01111111: *reg_A = *reg_A; break; // MOV D, S
			
		case 0b10000000: SetFlagsAdd (*reg_A, *reg_B, 1); *reg_A += *reg_B; break; // ADD S
		case 0b10000001: SetFlagsAdd (*reg_A, *reg_C, 1); *reg_A += *reg_C; break; // ADD S
		case 0b10000010: SetFlagsAdd (*reg_A, *reg_D, 1); *reg_A += *reg_D; break; // ADD S
		case 0b10000011: SetFlagsAdd (*reg_A, *reg_E, 1); *reg_A += *reg_E; break; // ADD S
		case 0b10000100: SetFlagsAdd (*reg_A, *reg_H, 1); *reg_A += *reg_H; break; // ADD S
		case 0b10000101: SetFlagsAdd (*reg_A, *reg_L, 1); *reg_A += *reg_L; break; // ADD S
		case 0b10000110: SetFlagsAdd (*reg_A, *reg_M, 1); *reg_A += *reg_M; break; // ADD S
		case 0b10000111: SetFlagsAdd (*reg_A, *reg_A, 1); *reg_A += *reg_A; break; // ADD S
		case 0b11000110: SetFlagsAdd (*reg_A, GetByteAt (PC), 1); *reg_A += GetByteAt (PC++); break; // ADI #
			
		case 0b10001000: WorkValue = uint16_t(*reg_B) + flag_C; SetFlagsAdd (*reg_A, WorkValue, 1); *reg_A += WorkValue; break; // ADC S
		case 0b10001001: WorkValue = uint16_t(*reg_C) + flag_C; SetFlagsAdd (*reg_A, WorkValue, 1); *reg_A += WorkValue; break; // ADC S
		case 0b10001010: WorkValue = uint16_t(*reg_D) + flag_C; SetFlagsAdd (*reg_A, WorkValue, 1); *reg_A += WorkValue; break; // ADC S
		case 0b10001011: WorkValue = uint16_t(*reg_E) + flag_C; SetFlagsAdd (*reg_A, WorkValue, 1); *reg_A += WorkValue; break; // ADC S
		case 0b10001100: WorkValue = uint16_t(*reg_H) + flag_C; SetFlagsAdd (*reg_A, WorkValue, 1); *reg_A += WorkValue; break; // ADC S
		case 0b10001101: WorkValue = uint16_t(*reg_L) + flag_C; SetFlagsAdd (*reg_A, WorkValue, 1); *reg_A += WorkValue; break; // ADC S
		case 0b10001110: WorkValue = uint16_t(*reg_M) + flag_C; SetFlagsAdd (*reg_A, WorkValue, 1); *reg_A += WorkValue; break; // ADC S
		case 0b10001111: WorkValue = uint16_t(*reg_A) + flag_C; SetFlagsAdd (*reg_A, WorkValue, 1); *reg_A += WorkValue; break; // ADC S
		case 0b11001110: WorkValue = uint16_t(GetByteAt (PC++)) + flag_C; SetFlagsAdd (*reg_A, WorkValue, 1); *reg_A += WorkValue; break; // ACI #
			
		case 0b10010000: SetFlagsSub (*reg_A, *reg_B, 1); *reg_A -= *reg_B; break; // SUB S
		case 0b10010001: SetFlagsSub (*reg_A, *reg_C, 1); *reg_A -= *reg_C; break; // SUB S
		case 0b10010010: SetFlagsSub (*reg_A, *reg_D, 1); *reg_A -= *reg_D; break; // SUB S
		case 0b10010011: SetFlagsSub (*reg_A, *reg_E, 1); *reg_A -= *reg_E; break; // SUB S
		case 0b10010100: SetFlagsSub (*reg_A, *reg_H, 1); *reg_A -= *reg_H; break; // SUB S
		case 0b10010101: SetFlagsSub (*reg_A, *reg_L, 1); *reg_A -= *reg_L; break; // SUB S
		case 0b10010110: SetFlagsSub (*reg_A, *reg_M, 1); *reg_A -= *reg_M; break; // SUB S
		case 0b10010111: SetFlagsSub (*reg_A, *reg_A, 1); *reg_A -= *reg_A; break; // SUB S
		case 0b11010110: SetFlagsSub (*reg_A, GetByteAt (PC), 1); *reg_A -= GetByteAt (PC++); break; // SUI #
			
		case 0b10011000: WorkValue = uint16_t(*reg_B) + flag_C; SetFlagsSub (*reg_A, WorkValue, 1); *reg_A -= WorkValue; break; // SBB S
		case 0b10011001: WorkValue = uint16_t(*reg_C) + flag_C; SetFlagsSub (*reg_A, WorkValue, 1); *reg_A -= WorkValue; break; // SBB S
		case 0b10011010: WorkValue = uint16_t(*reg_D) + flag_C; SetFlagsSub (*reg_A, WorkValue, 1); *reg_A -= WorkValue; break; // SBB S
		case 0b10011011: WorkValue = uint16_t(*reg_E) + flag_C; SetFlagsSub (*reg_A, WorkValue, 1); *reg_A -= WorkValue; break; // SBB S
		case 0b10011100: WorkValue = uint16_t(*reg_H) + flag_C; SetFlagsSub (*reg_A, WorkValue, 1); *reg_A -= WorkValue; break; // SBB S
		case 0b10011101: WorkValue = uint16_t(*reg_L) + flag_C; SetFlagsSub (*reg_A, WorkValue, 1); *reg_A -= WorkValue; break; // SBB S
		case 0b10011110: WorkValue = uint16_t(*reg_M) + flag_C; SetFlagsSub (*reg_A, WorkValue, 1); *reg_A -= WorkValue; break; // SBB S
		case 0b10011111: WorkValue = uint16_t(*reg_A) + flag_C; SetFlagsSub (*reg_A, WorkValue, 1); *reg_A -= WorkValue; break; // SBB S
		case 0b11011110: WorkValue = uint16_t(GetByteAt (PC++)) + flag_C; SetFlagsSub (*reg_A, WorkValue, 1); *reg_A -= WorkValue; break; // SBI #
			
		case 0b10100000: *reg_A &= *reg_B; SetFlagsAdd (*reg_A, 0, 1); break; // ANA S
		case 0b10100001: *reg_A &= *reg_C; SetFlagsAdd (*reg_A, 0, 1); break; // ANA S
		case 0b10100010: *reg_A &= *reg_D; SetFlagsAdd (*reg_A, 0, 1); break; // ANA S
		case 0b10100011: *reg_A &= *reg_E; SetFlagsAdd (*reg_A, 0, 1); break; // ANA S
		case 0b10100100: *reg_A &= *reg_H; SetFlagsAdd (*reg_A, 0, 1); break; // ANA S
		case 0b10100101: *reg_A &= *reg_L; SetFlagsAdd (*reg_A, 0, 1); break; // ANA S
		case 0b10100110: *reg_A &= *reg_M; SetFlagsAdd (*reg_A, 0, 1); break; // ANA S
		case 0b10100111: *reg_A &= *reg_A; SetFlagsAdd (*reg_A, 0, 1); break; // ANA S
		case 0b11100110: *reg_A &= GetByteAt (PC++); SetFlagsAdd (*reg_A, 0, 3); break; // ANI #
			
		case 0b10101000: *reg_A ^= *reg_B; SetFlagsAdd (*reg_A, 0, 3); break; // XRA S
		case 0b10101001: *reg_A ^= *reg_C; SetFlagsAdd (*reg_A, 0, 3); break; // XRA S
		case 0b10101010: *reg_A ^= *reg_D; SetFlagsAdd (*reg_A, 0, 3); break; // XRA S
		case 0b10101011: *reg_A ^= *reg_E; SetFlagsAdd (*reg_A, 0, 3); break; // XRA S
		case 0b10101100: *reg_A ^= *reg_H; SetFlagsAdd (*reg_A, 0, 3); break; // XRA S
		case 0b10101101: *reg_A ^= *reg_L; SetFlagsAdd (*reg_A, 0, 3); break; // XRA S
		case 0b10101110: *reg_A ^= *reg_M; SetFlagsAdd (*reg_A, 0, 3); break; // XRA S
		case 0b10101111: *reg_A ^= *reg_A; SetFlagsAdd (*reg_A, 0, 3); break; // XRA S
		case 0b11101110: *reg_A ^= GetByteAt (PC++); SetFlagsAdd (*reg_A, 0, 3); break; // XRI #
			
		case 0b10110000: *reg_A |= *reg_B; SetFlagsAdd (*reg_A, 0, 3); break; // ORA S
		case 0b10110001: *reg_A |= *reg_C; SetFlagsAdd (*reg_A, 0, 3); break; // ORA S
		case 0b10110010: *reg_A |= *reg_D; SetFlagsAdd (*reg_A, 0, 3); break; // ORA S
		case 0b10110011: *reg_A |= *reg_E; SetFlagsAdd (*reg_A, 0, 3); break; // ORA S
		case 0b10110100: *reg_A |= *reg_H; SetFlagsAdd (*reg_A, 0, 3); break; // ORA S
		case 0b10110101: *reg_A |= *reg_L; SetFlagsAdd (*reg_A, 0, 3); break; // ORA S
		case 0b10110110: *reg_A |= *reg_M; SetFlagsAdd (*reg_A, 0, 3); break; // ORA S
		case 0b10110111: *reg_A |= *reg_A; SetFlagsAdd (*reg_A, 0, 3); break; // ORA S
		case 0b11110110: *reg_A |= GetByteAt (PC++); SetFlagsAdd (*reg_A, 0, 3); break; // ORI #
			
		case 0b10111000: SetFlagsSub (*reg_A, *reg_B, 1); break; // CMP S
		case 0b10111001: SetFlagsSub (*reg_A, *reg_C, 1); break; // CMP S
		case 0b10111010: SetFlagsSub (*reg_A, *reg_D, 1); break; // CMP S
		case 0b10111011: SetFlagsSub (*reg_A, *reg_E, 1); break; // CMP S
		case 0b10111100: SetFlagsSub (*reg_A, *reg_H, 1); break; // CMP S
		case 0b10111101: SetFlagsSub (*reg_A, *reg_L, 1); break; // CMP S
		case 0b10111110: SetFlagsSub (*reg_A, *reg_M, 1); break; // CMP S
		case 0b10111111: SetFlagsSub (*reg_A, *reg_A, 1); break; // CMP S
		case 0b11111110: SetFlagsSub (*reg_A, GetByteAt (PC++), 1); break; // CPI #
			
		case 0b11000000: if (!flag_Z) {PC = StackPop (); ClockCount += 6;} break; // Rccc
		case 0b11001000: if (flag_Z) {PC = StackPop (); ClockCount += 6;} break; // Rccc
		case 0b11010000: if (!flag_C) {PC = StackPop (); ClockCount += 6;} break; // Rccc
		case 0b11011000: if (flag_C) {PC = StackPop (); ClockCount += 6;} break; // Rccc
		case 0b11100000: if (!flag_P) {PC = StackPop (); ClockCount += 6;} break; // Rccc
		case 0b11101000: if (flag_P) {PC = StackPop (); ClockCount += 6;} break; // Rccc
		case 0b11110000: if (!flag_S) {PC = StackPop (); ClockCount += 6;} break; // Rccc
		case 0b11111000: if (flag_S) {PC = StackPop (); ClockCount += 6;} break; // Rccc
		case 0b11001001: PC = StackPop (); break; // RET
			
		case 0b11000001: reg_BC = StackPop(); break; // POP RP
		case 0b11010001: reg_DE = StackPop(); break; // POP RP
		case 0b11100001: reg_HL = StackPop(); break; // POP RP
		case 0b11110001: PopPSW(); break; // POP RP (PSW)
			
		case 0b11000010: WorkValue = GetWordAt (PC); PC += 2; if (!flag_Z) PC = WorkValue; break; // Jccc
		case 0b11001010: WorkValue = GetWordAt (PC); PC += 2; if (flag_Z) PC = WorkValue; break; // Jccc
		case 0b11010010: WorkValue = GetWordAt (PC); PC += 2; if (!flag_C) PC = WorkValue; break; // Jccc
		case 0b11011010: WorkValue = GetWordAt (PC); PC += 2; if (flag_C) PC = WorkValue; break; // Jccc
		case 0b11100010: WorkValue = GetWordAt (PC); PC += 2; if (!flag_P) PC = WorkValue; break; // Jccc
		case 0b11101010: WorkValue = GetWordAt (PC); PC += 2; if (flag_P) PC = WorkValue; break; // Jccc
		case 0b11110010: WorkValue = GetWordAt (PC); PC += 2; if (!flag_S) PC = WorkValue; break; // Jccc
		case 0b11111010: WorkValue = GetWordAt (PC); PC += 2; if (flag_S) PC = WorkValue; break; // Jccc
		case 0b11000011: PC = GetWordAt (PC); break; // JMP a
			
		case 0b11000100: WorkValue = GetWordAt (PC); PC += 2; if (!flag_Z) {StackPush (PC); PC = WorkValue; ClockCount += 6;} break; // Cccc
		case 0b11001100: WorkValue = GetWordAt (PC); PC += 2; if (flag_Z) {StackPush (PC); PC = WorkValue; ClockCount += 6;} break; // Cccc
		case 0b11010100: WorkValue = GetWordAt (PC); PC += 2; if (!flag_C) {StackPush (PC); PC = WorkValue; ClockCount += 6;} break; // Cccc
		case 0b11011100: WorkValue = GetWordAt (PC); PC += 2; if (flag_C) {StackPush (PC); PC = WorkValue; ClockCount += 6;} break; // Cccc
		case 0b11100100: WorkValue = GetWordAt (PC); PC += 2; if (!flag_P) {StackPush (PC); PC = WorkValue; ClockCount += 6;} break; // Cccc
		case 0b11101100: WorkValue = GetWordAt (PC); PC += 2; if (flag_P) {StackPush (PC); PC = WorkValue; ClockCount += 6;} break; // Cccc;
		case 0b11110100: WorkValue = GetWordAt (PC); PC += 2; if (!flag_S) {StackPush (PC); PC = WorkValue; ClockCount += 6;} break; // Cccc
		case 0b11111100: WorkValue = GetWordAt (PC); PC += 2; if (flag_S) {StackPush (PC); PC = WorkValue; ClockCount += 6;} break; // Cccc
		case 0b11001101: WorkValue = GetWordAt (PC); PC += 2; StackPush (PC); PC = WorkValue; break; // CALL a
			
		case 0b11000101: StackPush (reg_BC); break; // PUSH RP
		case 0b11010101: StackPush (reg_DE); break; // PUSH RP
		case 0b11100101: StackPush (reg_HL); break; // PUSH RP
		case 0b11110101: PushPSW(); break; // PUSH RP (PSW)
			
		case 0b11000111: StackPush (PC); PC = 0b000 << 3; break; // RST n
		case 0b11001111: StackPush (PC); PC = 0b001 << 3; break; // RST n
		case 0b11010111: StackPush (PC); PC = 0b010 << 3; break; // RST n
		case 0b11011111: StackPush (PC); PC = 0b011 << 3; break; // RST n
		case 0b11100111: StackPush (PC); PC = 0b100 << 3; break; // RST n
		case 0b11101111: StackPush (PC); PC = 0b101 << 3; break; // RST n
		case 0b11110111: StackPush (PC); PC = 0b110 << 3; break; // RST n
		case 0b11111111: StackPush (PC); PC = 0b111 << 3; break; // RST n
			
		case 0b11011011: WorkValue = GetByteAt (PC++); if (WorkValue == 3) {*reg_A = reg_SHIFT >> (8 - ShiftOffset);} else {*reg_A = Port[WorkValue];} break; // IN p
		case 0b11010011: WorkValue = GetByteAt (PC++); if (WorkValue == 2) {ShiftOffset = *reg_A & 7;} else if (WorkValue == 4) {reg_SHIFT >>= 8; reg_SHIFT |= *reg_A << 8;} break; // OUT p
			
		case 0b11100011: WorkValue = StackPop(); StackPush (reg_HL); reg_HL = WorkValue; break; // XTHL
		case 0b11101011: WorkValue = reg_DE; reg_DE = reg_HL; reg_HL = WorkValue; break; // XCHG
			
		case 0b11110011: InterruptsEnabled = 0; break; // DI
		case 0b11111011: InterruptsEnabled = 1; break; // EI
			
		case 0b11101001: PC = reg_HL; break; // PCHL
		case 0b11111001: SP = reg_HL; break; // SPHL
			
		case 0b00001000: Unknown (Instruction); break;
		case 0b00010000: Unknown (Instruction); break;
		case 0b00011000: Unknown (Instruction); break;
		case 0b00100000: Unknown (Instruction); break;
		case 0b00101000: Unknown (Instruction); break;
		case 0b00110000: Unknown (Instruction); break;
		case 0b00111000: Unknown (Instruction); break;
		case 0b11011101: Unknown (Instruction); break;
		case 0b11001011: Unknown (Instruction); break;
		case 0b11011001: Unknown (Instruction); break;
		case 0b11101101: Unknown (Instruction); break;
		case 0b11111101: Unknown (Instruction); break;
	}
}