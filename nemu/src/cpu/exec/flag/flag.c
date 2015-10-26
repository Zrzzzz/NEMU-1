#include "cpu/exec/helper.h"

/* for instruction encoding overloading */

make_helper(std) {
	cpu.DF = 1;
	return 1;
}


