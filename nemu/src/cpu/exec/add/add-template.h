#include "cpu/exec/template-start.h"

#define instr add

static void do_execute() {
#if DATA_BYTE == 4
	reg_l(R_ESP) = reg_l(R_ESP) - DATA_BYTE;
	hwaddr_write(reg_l(R_ESP), DATA_BYTE, cpu.eip);
	cpu.eip = cpu.eip + op_src->val;
#elif DATA_BYTE == 2
	reg_w(R_SP)= reg_w(R_SP)- DATA_BYTE;
	hwaddr_write(reg_w(R_SP), DATA_BYTE, cpu.ip);
	cpu.eip = cpu.eip + op_src->val;
	cpu.eip = cpu.eip & 0xffff;
#endif
	print_asm_template1();
}

make_instr_helper(i2a)
make_instr_helper(i2rm)
make_instr_helper(r2rm)
make_instr_helper(rm2r)
#if DATA_BYTE == 2 || DATA_BYTE == 4
make_instr_helper(si2rm)
#endif
#include "cpu/exec/template-end.h"
