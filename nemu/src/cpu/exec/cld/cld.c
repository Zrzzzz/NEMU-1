#include "cpu/exec/helper.h"

int cld(uint32_t eip) {
	cpu.DF = 0;
	return 1;
}
