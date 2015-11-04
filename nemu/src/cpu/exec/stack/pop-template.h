#include "cpu/exec/template-start.h"

#define instr pop

DATA_TYPE concat(pop_val_, SUFFIX)() {	
	DATA_TYPE ret = (DATA_TYPE_S) swaddr_read(reg_l(R_ESP), DATA_BYTE, SR_SS); 
	reg_l(R_ESP) = reg_l(R_ESP) + DATA_BYTE;
	return ret;
}

static void do_execute() {
	OPERAND_W(op_src, (DATA_TYPE_S) swaddr_read(reg_l(R_ESP), DATA_BYTE, SR_SS)); 
	reg_l(R_ESP) = reg_l(R_ESP) + DATA_BYTE;
	print_asm_template1();
}

make_instr_helper(r)
make_instr_helper(m)
#undef RET_DATA_TYPE
#include "cpu/exec/template-end.h"
