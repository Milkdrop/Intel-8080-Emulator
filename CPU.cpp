#include <string>
#include <stdio.h>
#include <string.h>
#include "CPU.h"

#define GetByteAt(Address) *(mmu->MemoryMap[Address])
#define SetByteAt(Address, Value) *(mmu->MemoryMap[Address]) = Value
#define GetCondition(ID) (ID&1)==0?!(*FlagMap[ID>>1]):(*FlagMap[(ID-1)>>1])
#define GetInstructionLBHB(PC) (GetByteAt(PC + 1) * 0x100 + GetByteAt(PC))

/*
ID == 0: return !flag_Z;
ID == 1: return flag_Z;
ID == 2: return !flag_C;
ID == 3: return flag_C;
ID == 4: return !flag_P;
ID == 5: return flag_P;
ID == 6: return !flag_S;
ID == 7: return flag_S;
*/

CPU::CPU (MMU* _mmu, uint16_t _ClockSpeed) {
	LastExecutionTime = 0;
	InstructionCount = 0;
	ClockSpeed = _ClockSpeed;
	mmu = _mmu;
	
	memset (Port, 0, sizeof(Port));
	
	ptr_reg_A = &reg_A;
	RegMap[0] = &reg_B;
	RegMap[1] = &reg_C;
	RegMap[2] = &reg_D;
	RegMap[3] = &reg_E;
	RegMap[4] = &reg_H;
	RegMap[5] = &reg_L;
	RegMap[6] = &reg_M;
	RegMap[7] = &ptr_reg_A;
	
	RegPairMap[0] = &reg_BC;
	RegPairMap[1] = &reg_DE;
	RegPairMap[2] = &reg_HL;
	RegPairMap[3] = &SP;
	
	FlagMap[0] = &flag_Z;
	FlagMap[1] = &flag_C;
	FlagMap[2] = &flag_P;
	FlagMap[3] = &flag_S;
	
	memset (Benchmark, 0, sizeof(uint32_t) * 256);
	InterruptsEnabled = 0;
	Halt = 0;
	reg_A = 0;
	reg_BC = 0;
	reg_DE = 0;
	reg_HL = 0;
	SP = 0;
	PC = 0;
	ResetFlags ();
}

inline void Unknown (uint8_t Instruction) {
	fprintf (stderr, "Unknown Instruction: 0x%02x\n", Instruction);
}

inline void Unimplemented (std::string Name) {
	fprintf (stderr, "Unimplemented Instruction: %s\n", Name.c_str());
}

inline void CPU::ResetFlags () {
	flag_Z = 0;
	flag_S = 0;
	flag_P = 0;
	flag_C = 0;
	flag_AC = 0;
}

inline void CPU::SetFlagsAdd (uint8_t OpA, uint16_t OpB, uint8_t SetCarry) {
	ResetFlags();
	uint16_t Result = OpA + OpB;

	if (SetCarry && Result > 0xFF)
		flag_C = 1;
	Result &= 0xFF;
	if (Result == 0)
		flag_Z = 1;
	if (Result & 128)
		flag_S = 1;
	if ((Result & 1) == 0)
		flag_P = 1;
	if ((OpA & 8) == 1 && (Result & 16) == 1)
		flag_AC = 1;
}

inline void CPU::SetFlagsSub (uint8_t OpA, uint16_t OpB, uint8_t SetCarry) {
	ResetFlags();
	uint8_t Result = (uint16_t) OpA - OpB;

	if (SetCarry && OpA < OpB)
		flag_C = 1;
	if (Result == 0)
		flag_Z = 1;
	if (Result & 128)
		flag_S = 1;
	if ((Result & 1) == 0)
		flag_P = 1;
	if ((OpA & 8) == 1 && (Result & 16) == 1)
		flag_AC = 1;
}

void CPU::Debug () {
	printf ("\nRegisters: --------------------------------\n");
	printf ("A: 0x%02x\n", reg_A);
	printf ("B: 0x%02x\n", *reg_B);
	printf ("C: 0x%02x\n", *reg_C);
	printf ("D: 0x%02x\n", *reg_D);
	printf ("E: 0x%02x\n", *reg_E);
	printf ("H: 0x%02x\n", *reg_H);
	printf ("L: 0x%02x\n", *reg_L);
	printf ("M: ");
	if (reg_HL < 0x4400)
		printf ("0x%02x", *reg_M);
	else
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

void CPU::StackPush (uint16_t Value) {
	SetByteAt (SP - 1, Value & 0xFF);
	SetByteAt (SP - 2, Value >> 8);
	// printf ("Pushing on Stack: 0x%04x: 0x%02x / 0x%04x: 0x%02x\n", SP - 1, Value & 0xFF, SP - 2, Value >> 8);
	SP -= 2;
}

uint16_t CPU::StackPop () {
	uint16_t Value = GetByteAt (SP + 1) + GetByteAt (SP) * 0x100;
	// printf ("Popping from Stack: 0x%04x: 0x%02x / 0x%04x: 0x%02x\n", SP, GetByteAt (SP), SP + 1, GetByteAt (SP + 1));
	// printf ("%u\n", Value);
	SP += 2;
	return Value;
}

void CPU::PushPSW () {
	uint16_t PSW = reg_A;
	PSW |= flag_C << 8;
	PSW |= 1 << 9;
	PSW |= flag_P << 10;
	PSW |= 0 << 11;
	PSW |= flag_AC << 12;
	PSW |= 0 << 13;
	PSW |= flag_Z << 14;
	PSW |= flag_S << 15;
	
	StackPush (PSW);
}

void CPU::PopPSW () {
	uint16_t PSW = StackPop();
	reg_A = PSW & 0xFF;
	flag_C = (PSW >> 8) & 1;
	flag_P = (PSW >> 10) & 1;
	flag_AC = (PSW >> 12) & 1;
	flag_Z = (PSW >> 14) & 1;
	flag_S = (PSW >> 15) & 1;
}

void CPU::Interrupt (uint8_t ID) {
	if (!InterruptsEnabled)
		return;
	
	switch (ID) {
		case 0: // Mid Screen - RST 1
			StackPush (PC);
			PC = 0x0008;
			break;
		case 1: // End Screen - RST 2
			StackPush (PC);
			PC = 0x0010;
	}
}

uint8_t PrintPC;

void CPU::Clock () {
	if (Halt)
		return;
	
	uint64_t CurrentTime = clock(); // In Microseconds (Should work only on Unix, though)
	if (CurrentTime - LastExecutionTime < 1000000 / ClockSpeed)
		return;
	
	LastExecutionTime = CurrentTime;
	InstructionCount++;
	
	uint8_t Instruction = GetByteAt (PC);			// # # # # # # # #
	uint8_t First2Bits = Instruction >> 6;			// # # _ _ _ _ _ _
	uint8_t destReg = (Instruction >> 3) & 7; 		// _ _ # # # _ _ _
	uint8_t srcReg = Instruction & 7;				// _ _ _ _ _ # # #
	uint8_t RegPair = (Instruction >> 4) & 3;		// _ _ # # _ _ _ _
	if (reg_HL < 0x4400)
		reg_M = mmu->MemoryMap [reg_HL];
	
	Benchmark[Instruction]++;
	
	if (PrintPC && false) {
		printf ("INST 0x%02x (0x%04x)\n", Instruction, PC);
		printf ("%d\n", reg_A);
	}
	
	PC++;
	
	switch (First2Bits) {
	case 0:
		switch (srcReg) {
		case 0: // NOP
			break;
		case 1:
			switch (destReg & 1) {
			case 0: // LXI RP, #
				*RegPairMap[RegPair] = GetInstructionLBHB(PC);
				PC += 2;
				break;
			case 1: // DAD RP
				WorkValue = (uint32_t) *RegPairMap[RegPair] + reg_HL;
				flag_C = (WorkValue > 0xFFFF);
				reg_HL = WorkValue;
				break;
			}
			break;
		case 2:
			switch (destReg) {
			case 7: // LDA a
				reg_A = GetByteAt(GetInstructionLBHB(PC));
				PC += 2;
				break;
			case 6: // STA a
				SetByteAt(GetInstructionLBHB(PC), reg_A);
				PC += 2;
				break;
			case 5: // LHLD a
				WorkAddr = GetInstructionLBHB(PC);
				PC += 2;
				*reg_L = GetByteAt (WorkAddr);
				*reg_H = GetByteAt (WorkAddr + 1);
				break;
			case 4: // SHLD a
				WorkAddr = GetInstructionLBHB(PC);
				PC += 2;
				SetByteAt (WorkAddr, *reg_L);
				SetByteAt (WorkAddr, *reg_H);
				break;
			default:
				if (destReg & 1) // LDAX RP
					reg_A = GetByteAt (*RegPairMap [RegPair]);
				else // STAX RP
					SetByteAt (*RegPairMap [RegPair], reg_A);
			}
			break;
		case 3:
			if (destReg & 1) // DCX RP
				(*RegPairMap [RegPair])--;
			else // INX RP
				(*RegPairMap [RegPair])++;
			break;
		case 4: // INR D
			SetFlagsAdd (**RegMap[destReg], 1, 0);
			(**RegMap[destReg])++;
			break;
		case 5: // DCR D
			SetFlagsSub (**RegMap[destReg], 1, 0);
			(**RegMap[destReg])--;
			break;
		case 6: // MVI D, #
			**RegMap[destReg] = GetByteAt (PC++);
			break;
		case 7:
			switch (destReg) {
			case 0: // RLC
				WorkValue = reg_A & 128;
				flag_C = 0;
				reg_A <<= 1;

				if (WorkValue) {
					reg_A |= 1;
					flag_C = 1;
				}
				break;
			case 1: // RRC
				WorkValue = reg_A & 1;
				flag_C = 0;
				reg_A >>= 1;

				if (WorkValue) {
					reg_A |= 128;
					flag_C = 1;
				}
				break;
			case 2: // RAL
				if (reg_A & 128)
					WorkValue = 1;
				else
					WorkValue = 0;

				reg_A <<= 1;
				reg_A |= flag_C;
				flag_C = WorkValue;
				break;
			case 3: // RAR
				WorkValue = reg_A & 1;

				reg_A >>= 1;
				if (flag_C)
					reg_A |= 128;
				flag_C = WorkValue;
				break;
			case 4: // DAA
				Unimplemented ("DAA");
				break;
			case 5: // CMA
				reg_A ^= 255;
				break;
			case 6: // STC
				flag_C = 1;
				break;
			case 7: // CMC
				flag_C ^= 1;
				break;
			}
			break;
		}
		break;
	case 1:
		// MOV D, S
		if (destReg == 6 && srcReg == 6) // HLT
			Halt = 1;
		else {
			**RegMap[destReg] = **RegMap[srcReg];
		}
		break;
	case 2:
		switch (destReg) {
		case 0: // ADD S
			WorkValue = **RegMap[srcReg];
			SetFlagsAdd (reg_A, WorkValue, 1);
			reg_A += WorkValue;
			break;
		case 1: // ADC S
			WorkValue = (uint16_t) **RegMap[srcReg] + flag_C;
			SetFlagsAdd (reg_A, WorkValue, 1);
			reg_A += WorkValue;
			break;
		case 2: // SUB S
			WorkValue = **RegMap[srcReg];
			SetFlagsSub (reg_A, WorkValue, 1);
			reg_A -= WorkValue;
			break;
		case 3: // SBB S
			WorkValue = (uint16_t) **RegMap[srcReg] + flag_C;
			SetFlagsSub (reg_A, WorkValue, 1);
			reg_A -= WorkValue;
			break;
		case 4: // ANA S
			reg_A &= **RegMap[srcReg];
			SetFlagsAdd (reg_A, 0, 0);
			break;
		case 5: // XRA S
			reg_A ^= **RegMap[srcReg];
			SetFlagsAdd (reg_A, 0, 0);
			break;
		case 6: // ORA S
			reg_A |= **RegMap[srcReg];
			SetFlagsAdd (reg_A, 0, 0);
			break;
		case 7: // CMP S
			SetFlagsSub (reg_A, **RegMap[srcReg], 1);
			break;
		}
		break;
	case 3:
		switch (srcReg) {
		case 0: // Rccc
			if (GetCondition (destReg)) {
				PC = StackPop();
				// printf ("Returning to 0x%04x (Cond)\n", PC);
			}
			break;
		case 1:
			switch (destReg) {
			case 1: // RET
				PC = StackPop();
				// printf ("Returning to 0x%04x\n", PC);
				break;
			case 5: // PCHL
				PC = reg_HL;
				break;
			case 7: // SPHL
				SP = reg_HL;
				break;
			default: // POP RP
				if (RegPair == 3) // Processor Status Word (PSW)
					PopPSW();
				else
					*RegPairMap [RegPair] = StackPop();
			}
			break;
		case 2: //Jccc
			WorkAddr = GetInstructionLBHB(PC);
			PC += 2;
			if (GetCondition (destReg)) {
				PC = WorkAddr;
				// printf ("Jumping to 0x%04x (Cond)\n", PC);
			}
			break;
		case 3:
			switch (destReg) {
			case 0: // JMP
				PC = GetInstructionLBHB(PC);
				// printf ("Jumping to 0x%04x\n", PC);
				break;
			case 1:
				Unknown (Instruction);
				break;
			case 2: // OUT p
				WorkValue = GetByteAt (PC++);
				PrintPC = 1;
				if (WorkValue != 0x06) { // Not Watchdog
					printf ("Outputting 0x%02x on port 0x%02x\n", reg_A, WorkValue);
				}
				break;
			case 3: // IN p
				WorkValue = GetByteAt (PC++);
				reg_A = Port[WorkValue];
				//printf ("Inputing from port 0x%02x\n", WorkValue);
				break;
			case 4: // XTHL
				WorkValue = reg_HL;
				reg_HL = StackPop();
				StackPush (WorkValue);
				break;
			case 5: // XCHG
				WorkValue = reg_DE;
				reg_DE = reg_HL;
				reg_HL = WorkValue;
				break;
			case 6: // DI
				InterruptsEnabled = 0;
				break;
			case 7: // EI
				InterruptsEnabled = 1;
				break;
			}
			break;
		case 4: // Cccc
			WorkAddr = GetInstructionLBHB(PC);
			PC += 2;
			if (GetCondition (destReg)) {
				StackPush (PC);
				// printf ("From 0x%04x: ", PC - 1);
				PC = WorkAddr;
				// printf ("Calling 0x%02x (Cond)\n", PC);
			}
			break;
		case 5:
			if (destReg & 1) { // CALL
				// printf ("From 0x%04x: ", PC - 1);
				StackPush (PC + 2);
				PC = GetInstructionLBHB(PC);
				// printf ("Calling 0x%02x\n", PC);
			} else { // PUSH RP
				if (RegPair == 3) // Processor Status Word (PSW)
					PushPSW();
				else
					StackPush (*RegPairMap [RegPair]);
			}
			break;
		case 6:
			switch (destReg) {
			case 0: // ADI #
				WorkValue = GetByteAt (PC++);
				SetFlagsAdd (reg_A, WorkValue, 1);
				reg_A += WorkValue;
				break;
			case 1: // ACI #
				WorkValue = (uint16_t) GetByteAt (PC++) + flag_C;
				SetFlagsAdd (reg_A, WorkValue, 1);
				reg_A += WorkValue;
				break;
			case 2: // SUI #
				WorkValue = GetByteAt (PC++);
				SetFlagsSub (reg_A, WorkValue, 1);
				reg_A -= WorkValue;
				break;
			case 3: // SBI #
				WorkValue = (uint16_t) GetByteAt (PC++) + flag_C;
				SetFlagsSub (reg_A, WorkValue, 1);
				reg_A -= WorkValue;
				break;
			case 4: // ANI #
				reg_A &= GetByteAt (PC++);
				SetFlagsAdd (reg_A, 0, 0);
				break;
			case 5: // XRI #
				reg_A ^= GetByteAt (PC++);
				SetFlagsAdd (reg_A, 0, 0);
				break;
			case 6: // ORI #
				reg_A |= GetByteAt (PC++);
				SetFlagsAdd (reg_A, 0, 0);
				break;
			case 7: // CPI #
				SetFlagsSub (reg_A, GetByteAt (PC++), 1);
				break;
			}
			break;
		case 7: // RST
			StackPush (PC);
			PC = 8 * (uint16_t) destReg;
		}
	}

	//Debug();
}
