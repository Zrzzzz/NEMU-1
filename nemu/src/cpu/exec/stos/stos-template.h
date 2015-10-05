#include "cpu/exec/template-start.h"

#define instr stos

make_helper(concat(stos_, SUFFIX)) {
	swaddr_write(concat(reg_, SUFFIX)(R_EDI), DATA_BYTE, (DATA_TYPE) reg_l(R_EAX) - ((cpu.DF << 1) - 1) * DATA_BYTE);
	print_asm_template1();
	return 1;
}

#include "cpu/exec/template-end.h"

