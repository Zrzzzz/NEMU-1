#include "cpu/exec/template-start.h"

#define instr inc

static void do_execute () {
	DATA_TYPE result = op_src->val + 1;
	OPERAND_W(op_src, result);

	/* TODO: Update EFLAGS. */
	uint32_t pf = (res & 255);
	pf = (pf >> 4) ^ pf;
	pf = (pf >> 2) ^ pf;
	pf = (pf >> 1) ^ pf;
	cpu.CF = op_dest->val < op_src->val;
	cpu.PF = (pf & 1);
	cpu.ZF = (res == 0);
	cpu.SF = (res >> 31) & 1;
	cpu.OF = ((op_dest->val >> 31) ^ (op_src->val >> 31)) & ((op_dest->val >> 31) ^ (res >> 31)) & 1;

	print_asm_template1();
}

make_instr_helper(rm)
#if DATA_BYTE == 2 || DATA_BYTE == 4
make_instr_helper(r)
#endif

#include "cpu/exec/template-end.h"
