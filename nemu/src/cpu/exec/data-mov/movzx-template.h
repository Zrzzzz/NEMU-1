#include "cpu/exec/template-start.h"

#define instr movzx

static void do_execute() {
	uint32_t res = op_src->val;
	res = ((res << (32 - (DATA_BYTE << 3))) >> (32 - (DATA_BYTE << 3)));
	write_operand_l(op_dest, res);
	print_asm_template2();
}

make_instr_helper(rm2r)
#include "cpu/exec/template-end.h"
