#include "cpu/exec/template-start.h"

#define instr call

static void do_execute() {
#if DATA_BYTE == 4
	reg_l(R_ESP) = reg_l(R_ESP) - DATA_BYTE;
	swaddr_write(reg_l(R_ESP), DATA_BYTE, cpu.eip + 5);
	if(instr_fetch(cpu.eip, 1) == 0xff)
		cpu.eip = op_src->val - 2;
	else
		cpu.eip = cpu.eip + op_src->val;
#elif DATA_BYTE == 2
	reg_w(R_SP)= reg_w(R_SP)- DATA_BYTE;
	swaddr_write(reg_w(R_SP), DATA_BYTE, cpu.ip + 3);
	if(instr_fetch(cpu.eip, 1) == 0xff)
		cpu.eip = op_src->val - 2;
	else
		cpu.eip = cpu.eip + op_src->val;
	cpu.eip = cpu.eip & 0xffff;
#endif
	print_asm_template1();
}

make_instr_helper(i)
make_instr_helper(rm)
#include "cpu/exec/template-end.h"
