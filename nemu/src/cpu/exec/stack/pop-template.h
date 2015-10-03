#include "cpu/exec/template-start.h"

#if DATA_BYTE == 1
#define RET_DATA_TYPE int8_t
#elif DATA_BYTE == 2
#define RET_DATA_TYPE int16_t
#elif DATA_BYTE == 4
#define RET_DATA_TYPE int32_t
#endif
#define instr pop

static void do_execute() {
	OPERAND_W(op_src, (RET_DATA_TYPE) swaddr_read(reg_l(R_ESP), DATA_BYTE)); 
	reg_l(R_ESP) = reg_l(R_ESP) + DATA_BYTE;
	print_asm_template1();
}

make_instr_helper(r)
make_instr_helper(m)
#undef RET_DATA_TYPE
#include "cpu/exec/template-end.h"
