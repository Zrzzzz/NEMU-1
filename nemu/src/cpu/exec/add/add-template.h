#include "cpu/exec/template-start.h"

#if DATA_BYTE == 1
#define RET_DATA_TYPE int16_t
#elif DATA_BYTE == 2
#define RET_DATA_TYPE int32_t
#elif DATA_BYTE == 4
#define RET_DATA_TYPE int64_t
#endif
#define instr add

static void do_execute() {
	RET_DATA_TYPE res = op_src->val + op_dest->val;
	OPERAND_W(op_dest, res);
	print_asm_template2();
}

make_instr_helper(i2a)
make_instr_helper(i2rm)
make_instr_helper(r2rm)
make_instr_helper(rm2r)
#if DATA_BYTE == 2 || DATA_BYTE == 4
make_instr_helper(si2rm)
#endif
#undef RET_DATA_TYPE
#include "cpu/exec/template-end.h"
