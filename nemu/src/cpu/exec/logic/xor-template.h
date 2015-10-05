#include "cpu/exec/template-start.h"

#define instr xor

static void do_execute () {
	DATA_TYPE result = op_dest->val ^ op_src->val;
	OPERAND_W(op_dest, result);

	/* TODO: Update EFLAGS. */
	cpu.CF = cpu.OF = 0;
	cpu.SF = (op_dest->val >> ((DATA_BYTE << 3) - 1)) & 1;
	cpu.ZF = !op_dest->val;
	uint32_t pf = (op_dest->val & 255);
	pf = (pf >> 4) ^ pf;
	pf = (pf >> 2) ^ pf;
	pf = (pf >> 1) ^ pf;
	cpu.PF = pf & 1;

	print_asm_template2();
}

make_instr_helper(i2a)
make_instr_helper(i2rm)
#if DATA_BYTE == 2 || DATA_BYTE == 4
make_instr_helper(si2rm)
#endif
make_instr_helper(r2rm)
make_instr_helper(rm2r)

#include "cpu/exec/template-end.h"
