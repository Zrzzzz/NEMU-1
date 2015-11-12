#include "cpu/exec/template-start.h"


static void do_execute() {
	int8_t res = expr;
	OPERAND_W(op_src, res);
	print_asm_template1();
}

make_instr_helper(rm)


#include "cpu/exec/template-end.h"

