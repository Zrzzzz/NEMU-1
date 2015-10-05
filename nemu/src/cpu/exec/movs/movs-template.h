#include "cpu/exec/template-start.h"

#define instr movs

make_helper(concat(movs_, SUFFIX)) {
	swaddr_write(concat(reg_, SUFFIX)(R_EDI), DATA_BYTE, (DATA_TYPE) reg_l(R_ESI));
	concat(reg_, SUFFIX)(R_EDI) =(DATA_TYPE) reg_l(R_EDI) - ((cpu.DF << 1) - 1) * DATA_BYTE;
	concat(reg_, SUFFIX)(R_ESI) =(DATA_TYPE) reg_l(R_ESI) - ((cpu.DF << 1) - 1) * DATA_BYTE;
	print_asm_template1();
	return 1;
}

#include "cpu/exec/template-end.h"


