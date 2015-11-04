#include "cpu/exec/template-start.h"

#define instr pop

DATA_TYPE concat(pop_val_, SUFFIX)() {	
	DATA_TYPE ret = (DATA_TYPE_S) swaddr_read(reg_l(R_ESP), DATA_BYTE, SR_SS); 
	reg_l(R_ESP) = reg_l(R_ESP) + DATA_BYTE;
	return ret;
}

static void do_execute() {
	OPERAND_W(op_src, (DATA_TYPE_S) swaddr_read(reg_l(R_ESP), DATA_BYTE, SR_SS)); 
	reg_l(R_ESP) = reg_l(R_ESP) + DATA_BYTE;
	print_asm_template1();
}

make_instr_helper(r)
make_instr_helper(m)

#if DATA_BYTE == 2 || DATA_BYTE == 4
make_helper(concat(popa_, SUFFIX)) {
	int i;
	for(i = R_EDI; i <= R_EAX; i --) {
		if(i == R_ESP) concat(pop_val_, SUFFIX)();
		else concat(reg_, SUFFIX)(i) = concat(pop_val_, SUFFIX)();
	}
	print_asm("pusha"str(SUFFIX));
	return 1;
}
#endif
#include "cpu/exec/template-end.h"
