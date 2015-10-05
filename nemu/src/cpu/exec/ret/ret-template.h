#include "cpu/exec/template-start.h"

#define instr ret

static void do_execute() {
	cpu.eip = swaddr_read(reg_l(R_ESP), (4 >> ops_decoded.is_data_size_16)); 
	reg_l(R_ESP) = reg_l(R_ESP) + (4 >> ops_decoded.is_data_size_16);
	reg_l(R_ESP) += op_src->val;
	print_asm_template1();
}

make_instr_helper(i)
#include "cpu/exec/template-end.h"

