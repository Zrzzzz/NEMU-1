#include "cpu/exec/template-start.h"

#define instr movzx

static void do_execute() {
	reg_l(op_dest->reg) = hwaddr_read(op_src->val, DATA_BYTE);
	print_asm_template2();
}

make_instr_helper(rm2r)
#include "cpu/exec/template-end.h"
