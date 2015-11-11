#include "cpu/exec/template-start.h"

#define instr adc

static void do_execute() {
	DATA_TYPE src = op_src->val;
	DATA_TYPE dest = op_dest->val;
	src += cpu.CF;
	DATA_TYPE res = src + dest;
	cpu.CF = res < src;
	uint32_t pf = (res & 255);
	pf = (pf >> 4) ^ pf;
	pf = (pf >> 2) ^ pf;
	pf = (pf >> 1) ^ pf;
	cpu.PF = !(pf & 1);
	cpu.ZF = (res == 0);
	cpu.SF = ((res >> ((DATA_BYTE << 3) - 1)) & 1);
	cpu.OF = ((((res ^ src) & (res ^ dest)) >> ((DATA_BYTE << 3) - 1)) & 1);
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
