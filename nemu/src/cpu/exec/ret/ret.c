#include "cpu/exec/helper.h"

#define DATA_BYTE 2
#include "ret-template.h"
#undef DATA_BYTE

/* for instruction encoding overloading */

make_helper(ret) {
	cpu.eip = swaddr_read(reg_l(R_ESP), (4 >> ops_decoded.is_data_size_16)); 
	reg_l(R_ESP) = reg_l(R_ESP) + (4 >> ops_decoded.is_data_size_16);
//	print_asm_template1();
	return 1;
}

