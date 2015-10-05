#include "cpu/exec/helper.h"

/* for instruction encoding overloading */

int cwdcdq_l(uint32_t eip) {
	int res = reg_l(R_EAX);
	reg_l(R_EDX) = res >> 31;
	return 1;
}

int cwdcdq_w(uint32_t eip) {
	short res = reg_w(R_AX);
	reg_w(R_DX) = res >> 15;
	return 1;
}

make_helper_v(cwdcdq)
