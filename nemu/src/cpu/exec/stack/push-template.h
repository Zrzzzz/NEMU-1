#include "cpu/exec/template-start.h"

#define instr push

static void do_execute() {
	reg_l(R_ESP) = reg_l(R_ESP) - (DATA_BYTE == 2 ? 2 : 4);
	swaddr_write(reg_l(R_ESP), (DATA_BYTE == 2 ? 2 : 4), op_src->val, SR_SS);
	print_asm_template1();
}

make_instr_helper(i)
make_instr_helper(r)
make_instr_helper(rm)
#include "cpu/exec/template-end.h"
