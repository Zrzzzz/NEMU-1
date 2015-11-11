#include "cpu/exec/template-start.h"

#define instr cmps

make_helper(concat(cmps_, SUFFIX)) {
	uint32_t res = REG(R_ESI) - REG(R_EDI);
	uint32_t pf = (res & 255);
	pf = (pf >> 4) ^ pf;
	pf = (pf >> 2) ^ pf;
	pf = (pf >> 1) ^ pf;
	cpu.CF = REG(R_ESI) > REG(R_EDI);
	cpu.PF = !(pf & 1);
	cpu.ZF = (res == 0);
	cpu.SF = (res >> 31) & 1;
	cpu.OF = ((REG((R_ESI)) >> 31) ^ (REG((R_EDI)) >> 31)) & ((REG((R_ESI)) >> 31) ^ (res >> 31)) & 1;
	reg_l(R_ESI) -= (((DATA_TYPE)cpu.DF << 1) - 1) * DATA_BYTE;
	reg_l(R_EDI) -= (((DATA_TYPE)cpu.DF << 1) - 1) * DATA_BYTE;
	print_asm_template1();
	return 1;
}

#include "cpu/exec/template-end.h"


