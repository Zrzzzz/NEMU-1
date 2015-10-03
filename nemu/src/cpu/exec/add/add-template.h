#include "cpu/exec/template-start.h"

#if DATA_BYTE == 1
#define RET_DATA_TYPE int8_t
#elif DATA_BYTE == 2
#define RET_DATA_TYPE int16_t
#elif DATA_BYTE == 4
#define RET_DATA_TYPE int32_t
#endif
#define instr add

static void do_execute() {
	RET_DATA_TYPE res = op_src->val + op_dest->val;
	if(res >> ((DATA_BYTE << 3) - 1)) {
		cpu.CF = (op_src->val >> ((DATA_BYTE << 3) - 1)) & (op_dest->val >> ((DATA_BYTE << 3) - 1));
	}
	else {
		cpu.CF = (op_src->val >> ((DATA_BYTE << 3) - 1)) | (op_dest->val >> ((DATA_BYTE << 3) - 1));
	}
	cpu.PF = 0;
	int i;
	for(i = 0; i < (DATA_BYTE << 3); i ++) {
		cpu.PF = cpu.PF ^ ((res >> i) & 1);
	}
	cpu.ZF = (res == 0);
	cpu.SF = ((res >> ((DATA_BYTE << 3) - 1)) & 1);
	cpu.OF = ((res ^ op_src->val) & (res ^ op_dest->val) & 1);
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
