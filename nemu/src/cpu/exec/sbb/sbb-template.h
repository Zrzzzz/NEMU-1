#include "cpu/exec/template-start.h"

#define instr sbb

static void do_execute() {
	op_src->val = op_src->val + cpu.CF;
	uint32_t res = op_dest->val - op_src->val;
	uint32_t pf = (res & 255);
	pf = (pf >> 4) ^ pf;
	pf = (pf >> 2) ^ pf;
	pf = (pf >> 1) ^ pf;
	cpu.CF = op_dest->val < op_src->val;
	cpu.PF = !(pf & 1);
	cpu.ZF = (res == 0);
	cpu.SF = (res >> 31) & 1;
	cpu.OF = ((op_dest->val >> 31) ^ (op_src->val >> 31)) & ((op_dest->val >> 31) ^ (res >> 31)) & 1;
	OPERAND_W(op_dest, op_dest->val - op_src->val);
	print_asm_template2();
}

make_instr_helper(i2a)
make_instr_helper(i2rm)
make_instr_helper(r2rm)
make_instr_helper(rm2r)
#if DATA_BYTE == 2 || DATA_BYTE == 4
make_instr_helper(si2rm)
#endif
#include "cpu/exec/template-end.h"
