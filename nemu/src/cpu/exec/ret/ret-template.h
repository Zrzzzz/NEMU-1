#include "cpu/exec/template-start.h"

#define instr ret

make_helper(ret_i_w) {
	decode_i_w(eip + 1);
	cpu.eip = swaddr_read(reg_l(R_ESP), (4 >> ops_decoded.is_data_size_16)); 
	reg_l(R_ESP) = reg_l(R_ESP) + (4 >> ops_decoded.is_data_size_16);
	reg_l(R_ESP) += op_src->val;
	print_asm_template1();
	return 0;
}

#include "cpu/exec/template-end.h"

