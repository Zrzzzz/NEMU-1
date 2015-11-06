#include "cpu/exec/helper.h"

/* for instruction encoding overloading */

make_helper(hlt) {
	while (!(cpu.INTR&&cpu.IF));
	print_asm("hlt");
	return 1;
}


