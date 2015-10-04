#include "cpu/exec/helper.h"

#define DATA_BYTE 1
#include "jcxz-template.h"
#undef DATA_BYTE
/* for instruction encoding overloading */

make_helper(jcxz_i_v) {
	if(ops_decoded.is_data_size_16) {
		op_src2->val = 2;
	}
	else {
		op_src2->val = 4;
	}
	return jcxz_i_b(eip);
}



