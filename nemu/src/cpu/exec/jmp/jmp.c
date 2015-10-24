#include "cpu/exec/helper.h"

#define DATA_BYTE 1
#include "jmp-template.h"
#undef DATA_BYTE

#define DATA_BYTE 2
#include "jmp-template.h"
#undef DATA_BYTE

#define DATA_BYTE 4
#include "jmp-template.h"
#undef DATA_BYTE

/* for instruction encoding overloading */

make_helper_v(jmp_i)
make_helper_v(jmp_rm)

make_helper(ljmp) {
	decode_i_l(eip + 1);
	cpu.eip = op_src->val;
	decode_i_w(eip + 5);
	cpu.cs.val = op_src->val;
#ifdef DEBUG
	assert(cpu.cs.index < cpu.gdtr.limit);
#endif
	uint32_t addr = cpu.gdtr.base + (cpu.cs.index << 3);
	uint32_t base = ((uint32_t)lnaddr_read(addr + 7, 1)) << 24;
	base += ((uint32_t)lnaddr_read(addr + 4, 1)) << 16;
	base += ((uint32_t)lnaddr_read(addr + 2, 2));
	cpu.cs.base = base;
	cpu.cs.limit = lnaddr_read(addr, 2);
	return 0;
}
