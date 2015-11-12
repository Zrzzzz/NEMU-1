#include "cpu/exec/template-start.h"

#define instr cmps

make_helper(concat(cmps_, SUFFIX)) {
	DATA_TYPE dest = swaddr_read(reg_l(R_EDI), DATA_BYTE, SR_ES);
	DATA_TYPE src = swaddr_read(reg_l(R_ESI), DATA_BYTE, SR_DS);
	DATA_TYPE res = dest - src;
	uint32_t pf = (res & 255);
	pf = (pf >> 4) ^ pf;
	pf = (pf >> 2) ^ pf;
	pf = (pf >> 1) ^ pf;
	cpu.CF = dest < src;
	cpu.PF = !(pf & 1);
	cpu.ZF = (res == 0);
	cpu.SF = (res >> ((DATA_BYTE << 3) - 1)) & 1;
	cpu.OF = ((dest >> ((DATA_BYTE << 3) - 1)) ^ (src >> ((DATA_BYTE << 3) - 1))) & ((dest >> ((DATA_BYTE << 3) - 1)) ^ (res >> ((DATA_BYTE << 3) - 1))) & 1;
	reg_l(R_ESI) -= (((DATA_TYPE)cpu.DF << 1) - 1) * DATA_BYTE;
	reg_l(R_EDI) -= (((DATA_TYPE)cpu.DF << 1) - 1) * DATA_BYTE;
	print_asm_template1();
	return 1;
}

#include "cpu/exec/template-end.h"


