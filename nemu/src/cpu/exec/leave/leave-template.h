#include "cpu/exec/template-start.h"

#define instr leave

static void do_execute() {
	reg_l(R_ESP) = reg_l(R_EBP);
	concat(reg_, SUFFIX)(R_EBP) = swaddr_read(reg_l(R_ESP), DATA_BYTE, SR_SS);
	reg_l(R_ESP) += DATA_BYTE;
	print_asm_template1();
}

make_instr_helper(r)
#include "cpu/exec/template-end.h"
