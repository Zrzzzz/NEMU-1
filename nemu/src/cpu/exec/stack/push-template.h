#include "cpu/exec/template-start.h"

void concat(push_val_, SUFFIX)(DATA_TYPE_S val) {
	reg_l(R_ESP) = reg_l(R_ESP) - (DATA_BYTE == 2 ? 2 : 4);
	swaddr_write(reg_l(R_ESP), (DATA_BYTE == 2 ? 2 : 4), val, SR_SS);
}

#define instr push

static void do_execute() {
	concat(push_val_, SUFFIX)(op_src->val);
	print_asm_template1();
}

make_instr_helper(i)
make_instr_helper(r)
make_instr_helper(rm)

#if DATA_BYTE == 2 || DATA_BYTE == 4
make_helper(concat(pusha_, SUFFIX)) {
	DATA_TYPE temp = concat(reg_, SUFFIX)(R_ESP);
	int i;
	for(i = R_EAX; i <= R_EDI; i ++) {
		if(i == R_ESP) concat(push_val_, SUFFIX)(temp);
		else concat(push_val_, SUFFIX)(concat(reg_, SUFFIX)(i));
	}
	print_asm("pusha"str(SUFFIX));
	return 1;
}
#endif

#include "cpu/exec/template-end.h"
