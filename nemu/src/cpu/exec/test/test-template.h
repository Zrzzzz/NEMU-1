#include "cpu/exec/template-start.h"

#define instr test

static void do_execute() {
	DATA_TYPE res = op_src->val & op_dest->val;
	cpu.CF = cpu.OF = 0;
	cpu.SF = (res >> 31) & 1;
	cpu.ZF = (res == 0);
	uint32_t pf = (res & 255);
	pf = (pf >> 4) ^ pf;
	pf = (pf >> 2) ^ pf;
	pf = (pf >> 1) ^ pf;
	cpu.PF = !(pf & 1);
	print_asm_template2();
}

make_instr_helper(r2rm)
make_instr_helper(i2rm)
make_instr_helper(i2a)
#include "cpu/exec/template-end.h"
