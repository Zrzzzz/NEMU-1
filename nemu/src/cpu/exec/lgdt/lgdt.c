#include "cpu/exec/helper.h"

/* for instruction encoding overloading */

make_helper(lgdt) {
	decode_rm_l(eip + 1);
	printf("%x\n",op_src->val);
	cpu.gdtr.limit = hwaddr_read(op_src->val, 2);
	cpu.gdtr.base = hwaddr_read(op_src->val + 2, 4);
	print_asm_template1();
	return 6;
}


