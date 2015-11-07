#include "cpu/exec/helper.h"

int cld(uint32_t eip) {
	cpu.DF = 0;
	print_asm("cld");
	return 1;
}

int sti(uint32_t eip) {
	cpu.IF = 1;
	print_asm("sti");
	return 1;
}
