#include "cpu/exec/template-start.h"

#define instr pop

static void do_execute() {
	hwaddr_write(op_src->addr, DATA_BYTE, hwaddr_read(reg_l(R_ESP), DATA_BYTE)); 
	reg_l(R_ESP) = reg_l(R_ESP) + DATA_BYTE;
	print_asm_template1();
}

make_instr_helper(r)
make_instr_helper(m)
#include "cpu/exec/template-end.h"
