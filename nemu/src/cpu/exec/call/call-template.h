#include "cpu/exec/template-start.h"

#define instr call

static void do_execute() {
#if DATA_BYTE == 4
	reg_l(R_ESP) = reg_l(R_ESP) - DATA_BYTE;
	swaddr_write(reg_l(R_ESP), DATA_BYTE, cpu.eip + 5);
	cpu.eip = cpu.eip + op_src->imm;
#elif DATA_BYTE == 2
	reg_w(R_SP)= reg_w(R_SP)- DATA_BYTE;
	swaddr_write(reg_w(R_SP), DATA_BYTE, cpu.ip + 3);
	cpu.eip = cpu.eip + op_src->imm;
	cpu.eip = cpu.eip & 0xffff;
#endif
	print_asm_template1();
}

make_instr_helper(i)
#include "cpu/exec/template-end.h"
