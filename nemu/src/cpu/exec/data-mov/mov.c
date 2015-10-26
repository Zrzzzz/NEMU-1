#include "cpu/exec/helper.h"

#define DATA_BYTE 1
#include "mov-template.h"
#undef DATA_BYTE

#define DATA_BYTE 2
#include "mov-template.h"
#undef DATA_BYTE

#define DATA_BYTE 4
#include "mov-template.h"
#undef DATA_BYTE

/* for instruction encoding overloading */

make_helper_v(mov_i2r)
make_helper_v(mov_i2rm)
make_helper_v(mov_r2rm)
make_helper_v(mov_rm2r)
make_helper_v(mov_a2moffs)
make_helper_v(mov_moffs2a)

make_helper(mov_cr02r) {
	decode_r_l(eip + 1);
	printf("%d %d\n",op_src->reg,op_src2->reg);
	if(op_src2->reg)reg_l(op_src->reg) = cpu.cr3.val;
	else reg_l(op_src->reg) = cpu.cr0.val;
	return 2;
}

make_helper(mov_r2cr0) {
	decode_rm_l(eip + 1);
	printf("%d %d\n",op_src->reg,op_src2->reg);
	if(op_src2->reg)cpu.cr3.val = reg_l(op_src->reg);
	else cpu.cr0.val = reg_l(op_src->reg);
	return 2;
}

make_helper(mov_rm2sreg) {
	decode_rm_w(eip + 1);
	cpu.sreg[op_src->sreg << 2] = reg_w(op_src->reg);
	uint8_t sreg = op_src->sreg << 2;
	uint32_t addr = cpu.gdtr.base + ((cpu.sreg[sreg] >> 3) << 3);
	uint32_t base = ((uint32_t)lnaddr_read(addr + 7, 1)) << 24;
	base += ((uint32_t)lnaddr_read(addr + 4, 1)) << 16;
	base += ((uint32_t)lnaddr_read(addr + 2, 2));
	cpu.sreg[sreg + 2] = base;
	cpu.sreg[sreg + 3] = base >> 8;
	cpu.sreg[sreg + 1] = lnaddr_read(addr, 2);
	return 2;
}
