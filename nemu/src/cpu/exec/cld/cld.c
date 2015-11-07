#include "cpu/exec/helper.h"

int cld(uint32_t eip) {
	cpu.DF = 0;
	return 1;
}

int sti(uint32_t eip) {
	cpu.IF = 1;
	return 1;
}
