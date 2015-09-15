#include "cpu/exec/template-start.h"

#define instr movzx

static void do_execute() {
	reg_l(op_src->val) = hwaddr_read(reg_l(R_ESP), DATA_BYTE);
	print_asm_template2();
}

make_instr_helper(r2rm)
#include "cpu/exec/template-end.h"
