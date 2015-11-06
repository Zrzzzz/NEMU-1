#include "cpu/exec/template-start.h"

#define instr in

make_helper(concat(in_,SUFFIX)) {
	REG(R_EAX) = pio_read(reg_w(R_DX), DATA_BYTE);
	print_asm("in");
	return 1;
}

#include "cpu/exec/template-end.h"

