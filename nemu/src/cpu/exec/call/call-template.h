#include "cpu/exec/template-start.h"

#define instr call

void concat(push_val_, SUFFIX)(DATA_TYPE);

make_helper(concat(call_rm_, SUFFIX)) {
	concat(push_val_, SUFFIX)(cpu.eip + concat(decode_rm_, SUFFIX)(cpu.eip + 1) + 1);
	cpu.eip = op_src->val;
	return 0;
}

static void do_execute() {
	concat(push_val_, SUFFIX)(cpu.eip + DATA_BYTE + 1);
	cpu.eip = cpu.eip + op_src->val;
#if DATA_BYTE == 2
	cpu.eip = cpu.eip & 0xffff;
#endif
	print_asm_template1();
}

make_instr_helper(i)
#include "cpu/exec/template-end.h"
