#include "cpu/exec/template-start.h"

#define instr movzx

static void do_execute() {
	OPERAND_W(op_dest, swaddr_read(op_src->val, DATA_BYTE));
	print_asm_template2();
}

make_instr_helper(rm2r)
#include "cpu/exec/template-end.h"
