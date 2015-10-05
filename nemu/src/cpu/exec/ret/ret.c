#include "cpu/exec/helper.h"

#define DATA_BYTE 2
#include "ret-template.h"
#undef DATA_BYTE

/* for instruction encoding overloading */

make_helper(ret) {
	reg_l(R_ESP) = reg_l(R_ESP) + (4 >> ops_decoded.is_data_size_16);
	print_asm_template1();
	return swaddr_read(reg_l(R_ESP), (4 >> ops_decoded.is_data_size_16)); 
}

