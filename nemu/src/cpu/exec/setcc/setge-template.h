#include "cpu/exec/template-start.h"

#define instr setge

static void do_execute() {
	int8_t res = cpu.SF == cpu.OF;
	OPERAND_W(op_src, res);
	print_asm_template1();
}

make_instr_helper(rm)
#include "cpu/exec/template-end.h"
