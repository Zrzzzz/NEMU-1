#include "cpu/exec/helper.h"

/* for instruction encoding overloading */

make_helper(lidt) {
	int len = decode_rm_l(eip + 1);
	cpu.idtr.limit = hwaddr_read(op_src->addr, 2);
	cpu.idtr.base = hwaddr_read(op_src->addr + 2, 4);
	print_asm_template1();
	return 1 + len;
}



