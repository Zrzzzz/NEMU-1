#include "cpu/exec/template-start.h"

#define instr leave

DATA_TYPE concat(pop_val_, SUFFIX)();

static void do_execute() {
	reg_l(R_ESP) = reg_l(R_EBP);
	reg_l(R_EBP) = concat(pop_val_, SUFFIX)();
	print_asm_template1();
}

make_instr_helper(r)
#include "cpu/exec/template-end.h"
