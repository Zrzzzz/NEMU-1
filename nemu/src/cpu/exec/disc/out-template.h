#include "cpu/exec/template-start.h"

#define instr out

make_helper(concat(out_,SUFFIX)) {
	pio_write(reg_w(R_DX), DATA_BYTE, REG(R_EAX));
	print_asm("out");
	return 1;
}

#include "cpu/exec/template-end.h"


