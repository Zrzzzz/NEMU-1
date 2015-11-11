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

int cwtl_w(uint32_t eip) {
	int16_t res = reg_b(R_AL);
	res = res << 8 >> 8;
	reg_w(R_EAX) = res;
	return 1;
}

int cwtl_l(uint32_t eip) {
	int32_t res = reg_w(R_AX);
	res = res << 16 >> 16;
	reg_l(R_EAX) = res;
	return 1;
}

make_helper_v(cwdcdq)
make_helper_v(cwtl)
