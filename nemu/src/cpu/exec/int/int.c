#include "cpu/exec/helper.h"
#include <setjmp.h>
extern jmp_buf jbuf;

void push_val_l(uint32_t);

void raise_intr(uint8_t NO) {
	/* TODO: Trigger an interrupt/exception with ``NO''.
	 * That is, use ``NO'' to index the IDT.
	 */
	push_val_l(cpu.eflags);
	push_val_l(cpu.cs.val);
	printf("%x\n",cpu.eip);
	push_val_l(cpu.eip + 2);
	cpu.cs.val = lnaddr_read(cpu.idtr.base + (NO << 3) + 2, 2);
	cpu.eip = (lnaddr_read(cpu.idtr.base + (NO << 3) + 6, 2) << 16) + lnaddr_read(cpu.idtr.base + (NO << 3), 2);	

	/* Jump back to cpu_exec() */
	longjmp(jbuf, 1);
}

make_helper(intt) {
	decode_i_b(eip + 1);
	printf("%x\n",cpu.eip);
	print_asm("int");
	raise_intr(op_src->val);

	return 0;
}

uint32_t pop_val_l();

make_helper(iret) {
	cpu.eip = pop_val_l();
	cpu.cs.val = pop_val_l();
	cpu.eflags = pop_val_l();
	print_asm("iret");

	printf("%x\n",cpu.eip);
	return 0;
}

make_helper(cli) {
	cpu.IF = 0;
	return 1;
}


