#include "cpu/exec/helper.h"

/* for instruction encoding overloading */

make_helper(lgdt) {
	decode_rm_l(cpu.eip + 1);
	cpu.gdtr.limit = *(uint16_t*)op_src->val;
	cpu.gdtr.base = *(uint32_t*)(op_src->val + 2);
	print_asm_template1();
	return 6;
}


