#include "cpu/exec/helper.h"

/* for instruction encoding overloading */

int cwdcdq_l(uint32_t eip) {
	reg_l(R_EDX) = reg_l(R_AX) >> 31;
	return 1;
}

int cwdcdq_w(uint32_t eip) {
	reg_w(R_DX) = reg_w(R_AX) >> 15;
	return 1;
}

make_helper_v(cwdcdq)
