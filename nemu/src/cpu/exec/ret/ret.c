#include "cpu/exec/helper.h"

#define DATA_BYTE 2
#include "ret-template.h"
#undef DATA_BYTE

/* for instruction encoding overloading */

uint32_t pop_val_l();

make_helper(ret) {
	cpu.eip = pop_val_l();
	print_asm("ret");
	return 0;
}

