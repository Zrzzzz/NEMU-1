#include "cpu/exec/template-start.h"

#define instr je

static void do_execute() {
	int res = op_src->val;
	res = res << (32 - (DATA_BYTE << 3)) >> (32 - (DATA_BYTE << 3)); 
	if(cpu.ZF) {
		cpu.eip = cpu.eip + op_src->val;
#if DATA_BYTE == 2
		cpu.eip = cpu.eip & 0xffff;
#endif
	}
	print_asm_template1();
}

make_instr_helper(i)
#include "cpu/exec/template-end.h"

