#ifndef __REG_H__
#define __REG_H__

#include "common.h"
#include "x86-inc/cpu.h"

enum { R_EAX, R_ECX, R_EDX, R_EBX, R_ESP, R_EBP, R_ESI, R_EDI };
enum { R_AX, R_CX, R_DX, R_BX, R_SP, R_BP, R_SI, R_DI };
enum { R_AL, R_CL, R_DL, R_BL, R_AH, R_CH, R_DH, R_BH };
enum { SR_ES, SR_CS, SR_SS, SR_DS };

/* TODO: Re-organize the `CPU_state' structure to match the register
 * encoding scheme in i386 instruction format. For example, if we
 * access cpu.gpr[3]._16, we will get the `bx' register; if we access
 * cpu.gpr[1]._8[1], we will get the 'ch' register. Hint: Use `union'.
 * For more details about the register encoding scheme, see i386 manual.
 */

typedef struct {
	union {
		union {
			uint32_t _32;
			uint16_t _16;
			uint8_t _8[2];
		} gpr[8];

		/* Do NOT change the order of the GPRs' definitions. */

		struct {
			uint32_t eax, ecx, edx, ebx, esp, ebp, esi, edi;
		};
	};
	union {
		swaddr_t eip;
		uint16_t ip;
	};

	struct {
		unsigned CF:1;
		unsigned DND0:1;
		unsigned PF:1;
		unsigned DND1:1;
		unsigned AF:1;
		unsigned DND2:1;
		unsigned ZF:1;
		unsigned SF:1;
		unsigned TF:1;
		unsigned IF:1;
		unsigned DF:1;
		unsigned OF:1;
		unsigned IOPL:1;
		unsigned NT:1;
		unsigned DND3:1;
		unsigned RF:1;
		unsigned VM:1;
		unsigned DND4:14;
	};
	
	CR0 cr0;
	CR3 cr3;
	struct GDTR {
		uint16_t limit;
		uint32_t base;
	} gdtr;

	union {
		/*struct SR {
			uint16_t limit0;
			uint16_t base0;
			uint8_t base1;
			struct {
				uint8_t a		: 1;
				uint8_t type	: 3;
				uint8_t s		: 1;
				uint8_t dpl		: 2;
				uint8_t p		: 1;
			};
			struct {
				uint8_t limit1	: 4;
				uint8_t avl		: 1;
				uint8_t o		: 1;
				uint8_t d		: 1;
				uint8_t g		: 1;
			};
			uint8_t base2;
		} */
		struct {
			struct {
				union {
					struct {
						uint16_t rpl	: 2;
						uint16_t ti		: 1;
						uint16_t index	: 13;
					};
					uint16_t val;
				};
				uint16_t limit;
				uint32_t base;
			}es, cs, ss, ds;
		};
		uint16_t sreg[16];
	};
} CPU_state;

extern CPU_state cpu;

static inline lnaddr_t seg_translate(swaddr_t addr, size_t len, uint8_t sreg) {
	if(cpu.cr0.protect_enable == 0) return addr;
	return (cpu.sreg[(sreg << 2) + 3] << 8) + (cpu.sreg[(sreg << 2) + 2]) + addr;
}

static inline hwaddr_t page_translate(lnaddr_t addr) {
	if(!cpu.cr0.protect_enable || !cpu.cr0.paging) return addr;
	hwaddr_t l1page = cpu.cr3.page_directory_base + (addr >> 22);
	hwaddr_t l2page = (l1page & 0xfffff000) + ((addr >> 12) & 0x3ff);
	return (l2page & 0xfffff000) + (addr & 0xfff);
}

static inline void init_cr0() {
	cpu.cr0.protect_enable = 0;
	cpu.cr0.paging = 0;
}

static inline void init_cpu_state() {
	init_cr0();
	cpu.cs.base = 0;
	cpu.cs.limit = -1;
}

static inline int check_reg_index(int index) {
	assert(index >= 0 && index < 8);
	return index;
}

#define reg_l(index) (cpu.gpr[check_reg_index(index)]._32)
#define reg_w(index) (cpu.gpr[check_reg_index(index)]._16)
#define reg_b(index) (cpu.gpr[check_reg_index(index) & 0x3]._8[index >> 2])

extern const char* regsl[];
extern const char* regsw[];
extern const char* regsb[];

#endif
