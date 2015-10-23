#include "cpu/exec/helper.h"

/* for instruction encoding overloading */

make_helper(lgdt) {
	decode_rm_w(cpu.eip + 1);
	cpu.gdtr.limit = (uint16_t)op_src->val;
	decode_rm_l(cpu.eip + 5);
	cpu.gdtr.base = (uint32_t)op_src->val;
	print_asm_template1();
	return 10;
}


