#include "cpu/exec/template-start.h"

#define instr sub

static void do_execute() {
	DATA_TYPE src = op_src->val;
	DATA_TYPE dest = op_dest->val;
	DATA_TYPE res = dest - src;
	uint32_t pf = (res & 255);
	pf = (pf >> 4) ^ pf;
	pf = (pf >> 2) ^ pf;
	pf = (pf >> 1) ^ pf;
	cpu.CF = dest < src;
	cpu.PF = !(pf & 1);
	cpu.ZF = (res == 0);
	cpu.SF = (res >> ((DATA_BYTE << 3) - 1)) & 1;
	cpu.OF = ((dest >> ((DATA_BYTE << 3) - 1)) ^ (src >> ((DATA_BYTE << 3) - 1))) & ((dest >> ((DATA_BYTE << 3) - 1)) ^ (res >> ((DATA_BYTE << 3) - 1))) & 1;
	OPERAND_W(op_dest, dest - src);
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
