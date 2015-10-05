#include "cpu/exec/template-start.h"

#define instr ret

static void do_execute() {
	OPERAND_W(op_src, (int16_t) swaddr_read(reg_l(R_ESP), DATA_BYTE)); 
	reg_l(R_ESP) = reg_l(R_ESP) + DATA_BYTE;
	print_asm_template1();
}

make_instr_helper(i)
#include "cpu/exec/template-end.h"

