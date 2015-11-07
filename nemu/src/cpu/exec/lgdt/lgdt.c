#include "cpu/exec/helper.h"

/* for instruction encoding overloading */

make_helper(lgdt) {
	int len = decode_rm_l(eip + 1);
	printf("asd\n");
	int limit = lnaddr_read(op_src->addr, 2);
	printf("asd\n");
	cpu.gdtr.base = lnaddr_read(op_src->addr + 2, 4);
	printf("asd\n");
	cpu.gdtr.limit = limit;
	print_asm_template1();
	return 1 + len;
}


