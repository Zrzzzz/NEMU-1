#include "cpu/exec/template-start.h"

#define instr call

static void do_execute() {
	cpu.esp = cpu.esp - DATA_BYTE;
	hwaddr_write(cpu.esp, 4, op_src->val);
	cpu.eip = cpu.eip + op_src->val;
	print_asm_template1();
}

make_instr_helper(i)
#include "cpu/exec/template-end.h"
