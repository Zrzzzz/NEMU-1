#include "cpu/exec/template-start.h"

#define instr ret

make_helper(ret_i_w) {
	decode_i_w(eip);
	cpu.eip = swaddr_read(reg_l(R_ESP), 2); 
	reg_l(R_ESP) = reg_l(R_ESP) + 2;
	reg_l(R_ESP) += op_src->val;
	print_asm_template1();
	return 0;
}

#include "cpu/exec/template-end.h"

