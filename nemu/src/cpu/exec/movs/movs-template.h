#include "cpu/exec/template-start.h"

#define instr movs

make_helper(concat(movs_, SUFFIX)) {
	swaddr_write(reg_l(R_EDI), DATA_BYTE, (DATA_TYPE) MEM_R(reg_l(R_ESI), SR_DS), SR_ES);
	reg_l(R_EDI) -= (((DATA_TYPE)cpu.DF << 1) - 1) * DATA_BYTE;
	reg_l(R_ESI) -= (((DATA_TYPE)cpu.DF << 1) - 1) * DATA_BYTE;
	print_asm_template1();
	return 1;
}

#include "cpu/exec/template-end.h"


