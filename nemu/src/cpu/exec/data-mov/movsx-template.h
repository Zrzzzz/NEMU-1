#include "cpu/exec/template-start.h"

#define instr movsx

static void do_execute() {
#if DATA_BYTE == 4
	int res;
#elif DATA_BYTE == 2
	short res;
#else
	char res;
#endif
	res = op_src->val;
	res = res << ((DATA_BYTE << 3) - 8) >> ((DATA_BYTE << 3) - 8);
	OPERAND_W(op_dest, res);
	print_asm_template2();
}

make_instr_helper(rm2r)
#include "cpu/exec/template-end.h"
