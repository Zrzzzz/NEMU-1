#include "cpu/exec/template-start.h"

void concat(push_val_, SUFFIX)(DATA_TYPE val) {
	reg_l(R_ESP) = reg_l(R_ESP) - (DATA_BYTE == 2 ? 2 : 4);
	swaddr_write(reg_l(R_ESP), (DATA_BYTE == 2 ? 2 : 4), val, SR_SS);
}

#define instr push

static void do_execute() {
	concat(push_val_, SUFFIX)(op_src->val);
	print_asm_template1();
}

make_instr_helper(i)
make_instr_helper(r)
make_instr_helper(rm)
#include "cpu/exec/template-end.h"
