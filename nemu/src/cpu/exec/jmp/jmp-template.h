#include "cpu/exec/template-start.h"

#define instr jmp

static void do_execute() {
	int res = op_src->val;
	res = res << (32 - (DATA_BYTE << 3)) >> (32 - (DATA_BYTE << 3)); 
	cpu.eip = cpu.eip + res;
#if DATA_BYTE == 2
	cpu.eip = cpu.eip & 0xffff;
#endif
	print_asm_template1();
}

#if DATA_BYTE == 2 || DATA_BYTE == 4
make_helper(concat(jmp_rm_, SUFFIX)) {
	printf("ASD\n");
	concat(decode_rm_, SUFFIX)(eip + 1);
	cpu.eip = op_src->val;
	print_asm_template1();
	return 0;
}
#endif

make_instr_helper(i)
#include "cpu/exec/template-end.h"


