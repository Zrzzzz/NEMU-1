#include "cpu/exec/helper.h"

/* for instruction encoding overloading */

make_helper(lgdt) {
	cpu.gdtr.limit = (uint16_t)op_src->val;
	cpu.gdtr.base = (uint32_t)op_src->val;
	printf("%x\n",cpu.eip);
	assert(0);
	cpu.eip = swaddr_read(reg_l(R_ESP), (4 >> ops_decoded.is_data_size_16)); 
	reg_l(R_ESP) = reg_l(R_ESP) + (4 >> ops_decoded.is_data_size_16);
	print_asm_template1();
	return 1;
}


