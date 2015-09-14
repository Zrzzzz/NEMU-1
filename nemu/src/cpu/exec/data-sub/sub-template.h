#include "cpu/exec/template-start.h"

#define instr sub

static void do_execute() {
	cpu.CF = op_dest->val < op_src->val;
	OPERAND_W(op_dest, op_dest->val - op_src->val);
	print_asm_template2();
}

make_instr_helper(i2r)
make_instr_helper(i2rm)
make_instr_helper(r2rm)
make_instr_helper(rm2r)
make_instr_helper(rm_imm)
#if DATA_BYTE == 2 || DATA_BYTE == 4
make_instr_helper(si2rm)
#endif
#include "cpu/exec/template-end.h"
