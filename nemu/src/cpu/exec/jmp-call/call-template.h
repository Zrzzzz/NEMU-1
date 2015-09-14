#include "cpu/exec/template-start.h"

#define instr call

static void do_execute() {
	OPERAND_W(op_dest, op_dest->val - op_src->val);
	print_asm_template2();
}

make_instr_helper(i)
#include "cpu/exec/template-end.h"
