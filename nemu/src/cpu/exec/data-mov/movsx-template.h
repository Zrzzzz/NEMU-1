#include "cpu/exec/template-start.h"

#define instr movsx

static void do_execute() {
	op_src->val = op_src->val << (32 - DATA_BYTE) >> (32 - DATA_BYTE);
	OPERAND_W(op_dest, op_src->val);
	print_asm_template2();
}

make_instr_helper(rm2r)
#include "cpu/exec/template-end.h"
