#include "cpu/exec/helper.h"
#include <setjmp.h>
extern jmp_buf jbuf;

void push_val_l(uint32_t);

void raise_intr(uint8_t NO) {
	/* TODO: Trigger an interrupt/exception with ``NO''.
	 * That is, use ``NO'' to index the IDT.
	 */

		
	/* Jump back to cpu_exec() */
	longjmp(jbuf, 1);
}

make_helper(intt) {
	push_val_l(cpu.eflags);
	push_val_l(eip + 2);
	decode_i_b(eip + 1);
	raise_intr(op_src->val);
	print_asm("int");

	return 0;
}

