#include "cpu/exec/template-start.h"

#define instr add

static void do_execute() {
	DATA_TYPE res = op_src->val + op_dest->val;
	cpu.CF = res < op_src->val;
	uint32_t pf = (res & 255);
	pf = (pf >> 4) ^ pf;
	pf = (pf >> 2) ^ pf;
	pf = (pf >> 1) ^ pf;
	cpu.PF = !(pf & 1);
	cpu.ZF = (res == 0);
	cpu.SF = ((res >> 31) & 1);
	cpu.OF = ((((res ^ op_src->val) & (res ^ op_dest->val)) >> 31) & 1);
	OPERAND_W(op_dest, res);
	print_asm_template2();
}

make_instr_helper(i2a)
make_instr_helper(i2rm)
make_instr_helper(r2rm)
make_instr_helper(rm2r)
#if DATA_BYTE == 2 || DATA_BYTE == 4
make_instr_helper(si2rm)
#endif
#undef RET_DATA_TYPE
#include "cpu/exec/template-end.h"
